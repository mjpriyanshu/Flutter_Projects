# Flutter Profile Card App

A beautiful and modern profile card application built with Flutter that showcases personal information with an elegant design.

## 📱 Features

- **Profile Display**: Shows profile picture, name, and professional title
- **Bio Section**: Displays a short personal/professional biography
- **Contact Icons**: Interactive contact buttons for:
  - 📧 Email
  - 💼 LinkedIn
  - 👨‍💻 GitHub
  - 🌐 Website
- **Statistics Cards**: Shows project count and rating
- **Modern Design**: 
  - Gradient background with overlay
  - Card-based layout with elevation and shadows
  - Circular avatar with border
  - Responsive design

## 🎨 Design Elements

- **Stack Layout**: Uses Stack widget for layered background and content
- **Card Widget**: Beautiful cards with rounded corners and elevation
- **CircleAvatar**: Circular profile picture with custom border
- **Gradient Background**: Eye-catching purple-blue gradient
- **Interactive Icons**: Touch-responsive contact icons with brand colors

## 🚀 Getting Started

### Prerequisites
- Flutter SDK (3.8.1 or higher)
- Dart SDK
- Android Studio / VS Code
- Android device or emulator

### Installation

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd flutter_profilecardapp
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Add your profile image**
   - Place your profile image in `assets/` folder
   - Update the asset path in `pubspec.yaml` if needed
   - Current setup uses `assets/main_bike.png`

4. **Run the app**
   ```bash
   flutter run
   ```

## 📁 Project Structure

```
lib/
├── main.dart                 # Main application entry point and UI
assets/
├── main_bike.png            # Profile image asset
```

## 🛠️ Customization

### Personal Information
Edit the following in `lib/main.dart`:

```dart
// Name
const Text('Your Name'),

// Title/Position
Text('Your Professional Title'),

// Bio
Text('Your personal biography...'),

// Statistics
const Text('X+'),  // Projects count
const Text('X.X'), // Rating
```

### Profile Image
Replace `assets/main_bike.png` with your image and update the path:

```dart
backgroundImage: AssetImage('assets/your_image.png'),
```

### Contact Information
Update the contact icon actions in the `onTap` callbacks to open your actual contact links.

### Colors and Styling
- **Background gradient**: Modify colors in the `LinearGradient`
- **Contact icon colors**: Update brand colors in `_buildContactIcon` calls
- **Card styling**: Adjust `borderRadius`, `elevation`, and `padding`

## 📱 Widgets Used

- **MaterialApp**: App structure and theming
- **Scaffold**: Basic page structure
- **Stack**: Layered background and content
- **Card**: Elevated containers with shadows
- **CircleAvatar**: Circular profile image
- **Container**: Styling and layout
- **Column & Row**: Layout arrangement
- **Text**: Typography
- **Icon**: Contact and statistic icons
- **GestureDetector**: Touch interactions




