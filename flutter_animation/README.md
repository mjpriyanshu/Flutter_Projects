# Flutter Animation Demo

A Flutter project showcasing beautiful animations including onboarding screens and loading indicators.

## Features

### 🎨 Onboarding Screen Animations
- **Fade Animation**: Welcome title smoothly fades in using `AnimatedBuilder` with opacity transitions
- **Slide Animation**: Subtitle slides up from bottom with elastic bounce effect using `SlideTransition`
- **Staggered Timing**: Animations are sequenced for a polished user experience

### ⏳ Loading Screen Components
- **Shimmer Loading**: Animated shimmer effect using the `shimmer` package for skeleton loading states
- **Circular Progress**: Classic `CircularProgressIndicator` with custom styling
- **Side-by-Side Layout**: Two containers demonstrating different loading approaches

## Animation Types Demonstrated

1. **Fade Transitions** - Smooth opacity changes
2. **Slide Transitions** - Element movement with curves
3. **Shimmer Effects** - Loading state animations
4. **Progress Indicators** - Traditional loading spinners

## Technical Implementation

- **AnimationController**: Manages animation timing and state
- **Tween Animations**: Defines animation value ranges
- **Curved Animations**: Applies easing functions (easeIn, elasticOut)
- **TickerProviderStateMixin**: Provides animation lifecycle management

## Dependencies

- `flutter`: SDK
- `shimmer: ^3.0.0`: For shimmer loading effects

## Design

- **Theme**: Purple color scheme throughout
- **Layout**: Responsive design with proper spacing
- **Typography**: Clean, readable text with appropriate sizing
- **Containers**: Rounded corners with gradient backgrounds

## Getting Started

1. Clone the repository
2. Run `flutter pub get` to install dependencies
3. Run `flutter run` to start the application
4. Choose your preferred platform (Chrome, Windows, etc.)

## Animation Details

- **Fade Duration**: 2 seconds with ease-in curve
- **Slide Duration**: 1 second with elastic-out curve
- **Delay**: 500ms between fade and slide animations
- **Shimmer**: Continuous animation loop between purple and white colors

Experience smooth, professional animations that enhance user engagement and provide visual feedback during loading states.

---
[@Priyanshu]