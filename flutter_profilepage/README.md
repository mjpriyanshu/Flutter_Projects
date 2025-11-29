# Flutter Profile Page

A clean and simple profile page implementation with reusable custom button components.

## 📖 Description

This project demonstrates how to create a professional profile page with custom reusable widgets, particularly focusing on a flexible button component that can be customized with different colors, labels, and actions.

## ✨ Features

- Custom reusable button widget
- Type-safe callback functions (typedef)
- Clean profile layout
- Customizable button styling
- Responsive design
- Material Design principles

## 🛠️ Technologies Used

- Flutter SDK
- Custom widget creation
- Typedef for callback functions
- ElevatedButton with custom styling
- SafeArea for proper screen layout

## 📝 Custom Components

### CustomButton Widget
A reusable button widget with the following properties:
- `label`: Button text
- `onPressed`: Callback function
- `color`: Background color (default: blue)
- `textColor`: Text color (default: white)
- `borderRadius`: Corner radius (default: 8.0)

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
└── main.dart (Contains CustomButton and ProfilePage)
assets/
└── (Profile assets and images)
```

## 🎯 Learning Outcomes

- Creating reusable custom widgets
- Using typedef for function callbacks
- Widget composition patterns
- Styling ElevatedButton
- Building clean UI layouts
- Understanding widget parameters

## 💡 Code Highlights

```dart
// Reusable button that can be customized
CustomButton(
  label: 'Button Text',
  onPressed: () { /* action */ },
  color: Colors.blue,
  textColor: Colors.white,
  borderRadius: 8.0,
)
```

## 🎨 Design Features

- Grey background theme
- Full-width buttons
- Consistent padding and spacing
- Professional color scheme
