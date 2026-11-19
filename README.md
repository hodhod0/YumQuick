# YumQuick 🍔

A food delivery mobile app built with **Flutter**, based on the YumQuick UI kit from the Figma Community.

> 🚧 Work in progress. Screens are being built one feature at a time.

## Tech stack

- **Flutter 3.50 / Dart 3.14**
- **go_router**: navigation, with a bottom bar shell (`StatefulShellRoute`)
- **flutter_riverpod**: state management
- **google_fonts**: League Spartan + Poppins, from the design
- **flutter_svg**: logo and icons exported from Figma

## Project structure

```
lib/
├── main.dart              # entry point
├── app/
│   ├── app.dart           # MaterialApp + theme + router
│   ├── router.dart        # all routes (AppRoutes)
│   └── theme/             # colors, text styles, theme from the Figma design system
├── core/widgets/          # shared widgets (buttons, logo, bottom bar shell)
├── data/
│   ├── models/            # Food, FoodCategory, ...
│   └── fake_data.dart     # sample data until the API is ready
└── features/              # one folder per feature: screens/ + widgets/
    ├── splash/            # launch + welcome
    └── home/              # home page
```

## Roadmap

- [x] Theme, routing, launch & welcome screens
- [x] Home page (first version) + bottom navigation
- [ ] Onboarding, Log in, Sign up
- [ ] Menu by category, food details, search, favorites
- [ ] Cart, checkout, payment, order confirmed
- [ ] My orders, live tracking, reviews
- [ ] Profile, addresses, payment methods, settings, help
- [ ] Backend: ASP.NET Core Web API + SQL Server

## Run it

```bash
flutter pub get
flutter run
```
