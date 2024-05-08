#include "quaternion_helper.h"

#include <boost/beast/core.hpp>
#include <boost/beast/websocket.hpp>
#include <boost/asio/connect.hpp>
#include <boost/asio/ip/tcp.hpp>
#include <cstdlib>
#include <iostream>
#include <string>

#include <nlohmann/json.hpp>

namespace rl_tools::rl::environments::multirotor 
{
    namespace beast = boost::beast;         // from <boost/beast.hpp>
    namespace http = beast::http;           // from <boost/beast/http.hpp>
    namespace websocket = beast::websocket; // from <boost/beast/websocket.hpp>
    namespace net = boost::asio;            // from <boost/asio.hpp>
    using tcp = boost::asio::ip::tcp;       // from <boost/asio/ip/tcp.hpp>

    template <typename T_ENVIRONMENT>
    struct UI
    {
        using ENVIRONMENT = T_ENVIRONMENT;
        std::string id = "default";
        typename ENVIRONMENT::T origin[3];
        std::string host;
        std::string port;
        net::io_context ioc;
        websocket::stream<tcp::socket> ws{ioc};
    };
    template <typename DEVICE, typename ENVIRONMENT>
    nlohmann::json state_message(DEVICE& dev, rl::environments::multirotor::UI<ENVIRONMENT>& ui, const typename ENVIRONMENT::State& state)
    {
        nlohmann::json message;
        message["channel"] = "setDroneState";
        message["data"]["id"] = ui.id;
        message["data"]["data"]["pose"]["position"] = {state.position[0], state.position[1], state.position[2]};
        typename ENVIRONMENT::T orientation[3][3];
        quaternion_to_rotation_matrix<DEVICE, typename ENVIRONMENT::T>(state.orientation, orientation);
        message["data"]["data"]["pose"]["orientation"] = 
        {
                {orientation[0][0], orientation[0][1], orientation[0][2]},
                {orientation[1][0], orientation[1][1], orientation[1][2]},
                {orientation[2][0], orientation[2][1], orientation[2][2]}
        };
        message["data"]["data"]["rotor_states"] = std::vector<nlohmann::json>
        {
                {"power", 0},
                {"power", 0},
                {"power", 0},
                {"power", 0},
        };
        return message;
    }
    template <typename DEVICE, typename ENVIRONMENT, typename ACTION_SPEC>
    nlohmann::json state_message(
            DEVICE& dev, 
            rl::environments::multirotor::UI<ENVIRONMENT>& ui, 
            const typename ENVIRONMENT::State& state, 
            const Matrix<ACTION_SPEC>& action)
    {
        auto message = state_message(dev, ui, state);
        message["data"]["data"]["rotor_states"] = std::vector<nlohmann::json>
        {
                {{"power", get(action, 0, 0)}},
                {{"power", get(action, 0, 1)}},
                {{"power", get(action, 0, 2)}},
                {{"power", get(action, 0, 3)}},
        };
        return message;
    }
    template <typename DEVICE, typename ENVIRONMENT>
    nlohmann::json remove_drone_message(
        DEVICE& dev, 
        rl::environments::multirotor::UI<ENVIRONMENT>& ui)
    {
        nlohmann::json message;
        message["channel"] = "removeDrone";
        message["data"]["id"] = ui.id;
        return message;
    }
    template <typename DEVICE, typename ENVIRONMENT>
    nlohmann::json model_message(DEVICE& dev, ENVIRONMENT& env, rl::environments::multirotor::UI<ENVIRONMENT>& ui)
    {
        nlohmann::json message;
        message["channel"] = "addDrone";
        message["data"]["id"] = ui.id;
        message["data"]["origin"] = {ui.origin[0], ui.origin[1], ui.origin[2]};
        message["data"]["model"]["mass"] = env.parameters.dynamics.mass;
        message["data"]["model"]["rotors"] = std::vector<nlohmann::json>();
        for(typename DEVICE::index_t i = 0; i < 4; i++)
        {
            message["data"]["model"]["rotors"].push_back(
                {
                {"thrust_curve", {
                    {"factor_1", 1}
                }},
                {"pose", {
                    {"orientation", {
                        {1, 0, 0},
                        {0, 1, 0},
                        {0, 0, 1},
                    }},
                    {"position", {env.parameters.dynamics.rotor_positions[i][0], 
                                  env.parameters.dynamics.rotor_positions[i][1], 
                                  env.parameters.dynamics.rotor_positions[i][2]}}
                }},
            });
        }
        message["data"]["model"]["imu"] = {
            {"pose", {
                {"orientation", {
                    {1, 0, 0},
                    {0, 1, 0},
                    {0, 0, 1},
                }},
                {"position", {0, 0, 0}}
            }}
        };
        message["data"]["model"]["gravity"] = { 0.0, 0.0, -9.81};
        message["data"]["display_options"]["displayGlobalCoordinateSystem"] = false;
        message["data"]["display_options"]["displayIMUCoordinateSystem"] = false;
        message["data"]["display_options"]["displayActions"] = false;
        return message;
    }
}
RL_TOOLS_NAMESPACE_WRAPPER_END


RL_TOOLS_NAMESPACE_WRAPPER_START
namespace rl_tools{
    template <typename DEVICE, typename ENVIRONMENT>
    void init(
        DEVICE& dev, 
        ENVIRONMENT& env, 
        rl::environments::multirotor::UI<ENVIRONMENT>& ui)
    {
        using namespace rl::environments::multirotor;
        namespace beast = boost::beast;         // from <boost/beast.hpp>
        namespace http = beast::http;           // from <boost/beast/http.hpp>
        namespace websocket = beast::websocket; // from <boost/beast/websocket.hpp>
        namespace net = boost::asio;            // from <boost/asio.hpp>
        using tcp = boost::asio::ip::tcp;       // from <boost/asio/ip/tcp.hpp>
        ui.origin[0] = 0;
        ui.origin[1] = 0;
        ui.origin[2] = 0;
        try
        {
            tcp::resolver resolver{ui.ioc};
            auto const results = resolver.resolve(ui.host, ui.port);

            net::connect(ui.ws.next_layer(), results.begin(), results.end());
            ui.ws.handshake(ui.host, "/");

            ui.ws.write(net::buffer(model_message(dev, env, ui).dump()));
        }
        catch(std::exception const& e)
        {
            std::cerr << "Error: " << e.what() << std::endl;
        }
    }
    template <typename DEVICE, typename ENVIRONMENT>
    void set_state(
        DEVICE& dev, 
        rl::environments::multirotor::UI<ENVIRONMENT>& ui, 
        const typename ENVIRONMENT::State& state)
    {
        using namespace rl::environments::multirotor;

        if (ui.ws.is_open()) 
        {
            ui.ws.write(net::buffer(state_message(dev, ui, state).dump()));
        }
        else
        {
            std::cerr << "Error: websocket is not open" << std::endl;
        }
    }
    template <typename DEVICE, typename ENVIRONMENT, typename ACTION_SPEC>
    void set_state(
        DEVICE& dev, 
        rl::environments::multirotor::UI<ENVIRONMENT>& ui, 
        const typename ENVIRONMENT::State& state, 
        const Matrix<ACTION_SPEC>& action)
    {
        static_assert(ACTION_SPEC::COLS == ENVIRONMENT::ACTION_DIM);
        static_assert(ACTION_SPEC::ROWS == 1);
        using namespace rl::environments::multirotor;

        if (ui.ws.is_open()) 
        {
            ui.ws.write(net::buffer(state_message(dev, ui, state, action).dump()));
        }
        else
        {
            std::cerr << "Error: websocket is not open" << std::endl;
        }
    }

}