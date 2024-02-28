#include <iostream>

// Function declarations
void printHelloWorld();
unsigned long long factorial(unsigned int n);

int main() {
    // Call the function to print "Hello, World!"
    printHelloWorld();

    // Factorial calculation part
    unsigned int number;
    std::cout << "Enter a positive integer to calculate its factorial: ";
    std::cin >> number;

    unsigned long long result = factorial(number); // Function call
    std::cout << "Factorial of " << number << " = " << result << std::endl;

    return 0;
}

// Function to print "Hello, World!"
void printHelloWorld() {
    std::cout << "Hello, World!" << std::endl;
}

// Function definition for factorial
unsigned long long factorial(unsigned int n) {
    if (n == 0)
        return 1; // Base case
    else
        return n * factorial(n - 1); // Recursive case
}

