#include <iostream>

// Function declaration for factorial calculation
unsigned long long new_factorial(unsigned int n);

int main() {
    // Hello, World! message
    std::cout << "Hello, World!" << std::endl;

    // Factorial calculation
    unsigned int number;
    std::cout << "Enter a positive integer to calculate its factorial: ";
    std::cin >> number;

    unsigned long long result = factorial(number); // Function call
    std::cout << "Factorial of " << number << " = " << result << std::endl;

    return 0;
}

// Function definition for factorial
unsigned long long new_manual_factorial(unsigned int n) {
    if (n == 0)
        return 1; // Base case
    else
        return n * factorial(n - 1); // Recursive case
}
