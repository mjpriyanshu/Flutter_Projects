# Flutter Shopping App

A beautiful Flutter shopping application with role-based authentication, product management, and order tracking using Provider state management.

## Features

### 🔐 Role-Based Authentication
- **Admin Account**: 
  - Username: `admin` / Password: `password123`
  - Can add and delete products
  - Cannot purchase items (admin panel view)
  - Can view added products in profile
- **Customer Accounts**:
  - Username: `user` / Password: `user123`
  - Username: `test` / Password: `test123`
  - Can browse and purchase products
  - Can view order history in profile
- **Session Management**: Maintains login state across the app

### 🛒 Shopping Cart (Customers Only)
- **Add Items**: Add products to cart with a single tap
- **Remove Items**: Remove individual items or reduce quantity
- **Quantity Management**: Increase/decrease item quantities
- **Real-time Updates**: Cart badge shows total item count
- **Clear Cart**: Remove all items at once
- **Checkout Process**: Place orders with automatic profile saving
- **Order History**: View all past purchases in profile

### 🔧 Admin Product Management
- **Add Products**: Create new products with custom details
- **Product Form**: Name, price, description, and emoji icon selection
- **Delete Products**: Remove admin-added products
- **Visual Distinction**: Admin products marked with "NEW" badge
- **Profile Tracking**: View all added products in admin profile

### 📱 User Profiles
- **Admin Profile**: 
  - Shows administrator badge
  - Lists all products added by the admin
  - Product management overview
- **Customer Profile**:
  - Shows customer badge
  - Complete order history with expandable details
  - Order totals and item breakdowns
  - Chronological order display

### 🎨 User Interface
- **Role-Based UI**: Different interfaces for admin vs customers
- **Modern Design**: Clean and intuitive material design
- **Responsive Layout**: Grid layout for products, detailed profile views
- **Visual Feedback**: Snackbar notifications for all user actions
- **Loading States**: Loading indicators during operations
- **Empty States**: Proper empty cart, no orders, and no products states

## Technical Implementation

### State Management
- **Provider Package**: Used for state management across the app
- **AuthProvider**: Manages authentication, user roles, and order history
- **CartProvider**: Handles cart operations and item management
- **ProductProvider**: Manages all products (default + admin-added)


### Key Features by Role

#### Admin Capabilities
- ✅ **Add Products**: Rich form with validation and emoji selection
- ✅ **Delete Products**: Remove admin-created products
- ✅ **Product Tracking**: View all added products in profile
- ✅ **Management UI**: Admin-specific interface and navigation
- ❌ **No Shopping**: Cannot add items to cart or make purchases

#### Customer Capabilities  
- ✅ **Browse Products**: View all products (default + admin-added)
- ✅ **Shopping Cart**: Full cart functionality with quantity management
- ✅ **Place Orders**: Checkout process with order confirmation
- ✅ **Order History**: Complete purchase history in profile
- ✅ **Profile Management**: View past orders with detailed breakdowns

## Getting Started

1. **Install Dependencies**:
   ```bash
   flutter pub get
   ```

2. **Run the App**:
   ```bash
   flutter run
   ```

3. **Login Options**:
   - **Admin**: `admin` / `password123` - Manage products
   - **Customer**: `user` / `user123` or `test` / `test123` - Shop and buy

## Demo Flow

### Admin Flow
1. **Login** → `admin` / `password123`
2. **Manage Products** → Add/delete products via floating action button
3. **Profile** → View all added products and admin status

### Customer Flow
1. **Login** → `user` / `user123` or `test` / `test123`
2. **Browse** → View all available products (including admin-added)
3. **Shop** → Add items to cart, adjust quantities
4. **Checkout** → Place order and receive confirmation
5. **Profile** → View complete order history

## Dependencies

- `flutter`: Flutter SDK
- `provider`: ^6.1.2 - State management solution

## Features Demonstrated

✅ **Role-Based Access Control**  
✅ **Product CRUD Operations** (Admin)  
✅ **Shopping Cart Management** (Customer)  
✅ **Order History Tracking**  
✅ **Provider State Management**  
✅ **Modern UI/UX with Role Distinction**  
✅ **Form Validation & Error Handling**  
✅ **Navigation & Route Management**  
✅ **Real-time State Updates**  
✅ **Dialog Interactions & Confirmations**

--- 

## Future Improvs

Storage (offline/online) is to be added. As of now it can't retain the details once you refresh or logout.

cards don't have real images yet.
Also the admin can't approve of things whether when products are available or not. Once listed it's visible to user to purchase.

