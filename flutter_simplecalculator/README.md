# Flutter Simple Calculator

A basic calculator application demonstrating fundamental Flutter concepts and user input handling.

## 📖 Description

This is a straightforward calculator app that performs basic arithmetic operations (addition, subtraction, multiplication, and division). It's perfect for learning Flutter basics and state management.

## ✨ Features

- Addition (+)
- Subtraction (-)
- Multiplication (×)
- Division (÷)
- Real-time result display
- Input validation
- Error handling
- Clean Material Design UI

## 🛠️ Technologies Used

- Flutter SDK
- StatefulWidget for state management
- TextEditingController for input handling
- Material Design components

## 🚀 Getting Started

1. Install dependencies:
   ```bash
   flutter pub get
   ```

2. Run the application:
   ```bash
   flutter run
   ```

## 📁 Project Structure

```
lib/
└── main.dart (Contains MainApp and CalculatorScreen)
```

## 🎯 Learning Outcomes

- Working with StatefulWidget
- Managing state with setState()
- Handling user input with TextEditingController
- Input validation and error handling
- Switch statements for operation handling
- Type conversion (String to double)
- Arithmetic operations in Dart

## 💡 Implementation Details

### Input Handling
- Two TextEditingController instances for number inputs
- Type-safe parsing with `double.tryParse()`
- Null safety implementation

### Operations
The calculator supports four basic operations:
- **Addition**: `num1 + num2`
- **Subtraction**: `num1 - num2`
- **Multiplication**: `num1 * num2`
- **Division**: `num1 / num2` (with zero division handling)

### State Management
- `_result`: Stores calculation result
- `_operation`: Tracks current operation
- `_controller1` and `_controller2`: Manage input fields

## 🎨 UI Components

- Input text fields for numbers
- Operation buttons (+, -, ×, ÷)
- Result display area
- Clear/reset functionality

## 🔧 Error Handling

- Validates numeric input
- Handles null/empty inputs
- Division by zero protection
- Clear error messages
