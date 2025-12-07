# BMI Calculator

A Flutter application that calculates Body Mass Index (BMI) based on user input for height and weight.

## Features

- **BMI Calculation**: Calculate your BMI using the standard formula (weight / height²)
- **Interactive UI**: 
  - Gender selection (Male/Female)
  - Height slider (120-220 cm)
  - Weight adjustment with +/- buttons (1-300 kg)
  - Age adjustment with +/- buttons (1-150 years)
- **Results Display**: 
  - BMI value with one decimal precision
  - Category classification (Underweight, Normal, Overweight, Obese)
  - Personalized interpretation and recommendations
- **Multi-platform Support**: Works on Android, iOS, Web, Linux, and macOS

## BMI Categories

- **Underweight**: BMI ≤ 18.5
- **Normal**: 18.5 < BMI < 25
- **Overweight**: 25 ≤ BMI < 30
- **Obese**: BMI ≥ 30

## Getting Started

### Prerequisites

- Flutter SDK (^3.9.2 or higher)
- Dart SDK
- Android Studio / Xcode (for mobile development)
- VS Code or Android Studio (recommended IDE)

### Installation

1. Clone the repository:
```bash
git clone <repository-url>
cd bmi_calculator
```

2. Install dependencies:
```bash
flutter pub get
```

3. Run the app:
```bash
flutter run
```

## Project Structure

```
lib/
├── main.dart                    # App entry point
├── screens/
│   ├── input_page.dart         # Main input screen
│   └── results_page.dart       # Results display screen
├── calculator_brain.dart       # BMI calculation logic
├── constants.dart              # App-wide constants
├── reuseable_card.dart         # Reusable card widget
├── icon_content.dart           # Icon + label widget
├── bottom_button.dart          # Bottom action button
└── round_icon.dart             # Round icon button
```

## Dependencies

- `flutter`: SDK
- `font_awesome_flutter: ^10.12.0`: Icons
- `cupertino_icons: ^1.0.8`: iOS-style icons

## Testing

Run tests with:
```bash
flutter test
```

## Building

### Android
```bash
flutter build apk
```

### iOS
```bash
flutter build ios
```

### Web
```bash
flutter build web
```

## License

This project is open source and available for personal use.

## Notes

- BMI is a screening tool and not a diagnostic tool. For health concerns, consult with a healthcare provider.
- The gender and age inputs are collected but not currently used in BMI calculations (BMI formula is gender and age-independent).
