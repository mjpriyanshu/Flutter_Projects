# Flutter Shopping

A full-featured e-commerce application with authentication, product management, and shopping cart functionality.

**Project Status:** ⚠️ *Partial Implementation* - Authentication, cart management, and core shopping features completed during Cipher Schools summer training. Backend integration and data persistence pending.

## 📖 Description

This is a comprehensive shopping application built with Flutter and Provider state management. It includes user authentication, product browsing, cart management, and a complete e-commerce workflow.

## ✨ Features

- User authentication (login/register)
- Product catalog browsing
- Shopping cart management
- Add/remove items from cart
- Product search and filtering
- State management with Provider
- Material Design 3 UI
- Responsive design

## 🛠️ Technologies Used

- Flutter SDK
- Provider package for state management
- Multi-provider architecture
- Model-View-Provider pattern

## 📦 Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  provider: ^latest
```

## 📁 Project Structure

```
lib/
├── main.dart
├── models/
│   └── (Product, Cart, User models)
├── providers/
│   ├── auth_provider.dart
│   ├── cart_provider.dart
│   └── product_provider.dart
└── screens/
    ├── login_screen.dart
    └── (Other screens)
```

## 🚀 Getting Started

1. Install dependencies:
   ```bash
   flutter pub get
   ```

2. Run the application:
   ```bash
   flutter run
   ```

## 🎯 Learning Outcomes

- Implementing Provider state management
- Building multi-provider applications
- Creating authentication flows
- Managing shopping cart state
- Product catalog implementation
- Navigation between screens
- State sharing across widgets

## 💡 Features in Detail

### Authentication
- Login screen
- User session management
- Auth state provider

### Product Management
- Product listing
- Product details
- Product provider for state

### Shopping Cart
- Add to cart
- Remove from cart
- Cart total calculation
- Cart state management

## 🔐 State Management

The app uses three main providers:
- **AuthProvider**: Manages user authentication state
- **CartProvider**: Handles shopping cart operations
- **ProductProvider**: Manages product data and operations

## 🎨 UI/UX

- Clean and intuitive interface
- Material Design components
- Responsive layouts
- Visual feedback for actions

## 🔮 Pending Implementation

The following features are planned for future updates:
- **Data Persistence**: Local storage using SharedPreferences/SQLite or cloud integration
- **Backend Integration**: Connect to a real backend API (Firebase/REST API)
- **Product Images**: Replace placeholder emojis with actual product images
- **Payment Gateway**: Integrate payment processing
- **Order Management**: Complete order tracking and history
- **User Profiles**: Enhanced profile management with edit capabilities
- **Search & Filter**: Advanced product search and filtering options
- **Wishlist**: Save favorite products for later

## 🎓 Training Project

This project was developed as part of the **Cipher Schools Summer Training Program**, demonstrating advanced concepts like:
- Multi-provider state management architecture
- Role-based authentication and authorization
- Complex UI navigation and state handling
- E-commerce application patterns

## ⚠️ Current Limitations

- Data is not persisted between app sessions
- Admin-added products are lost on app restart
- Order history is cleared on logout
- No backend server integration yet

