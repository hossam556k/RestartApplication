# Restart

A small iOS app built with **SwiftUI** that opens with an animated onboarding screen. Swipe the "Get Started" button to unlock the app, and it remembers your choice the next time you open it.

<!-- Add screenshots here, for example:
<p align="center">
  <img src="Screenshots/onboarding.png" width="250">
  <img src="Screenshots/home.png" width="250">
</p>
-->

## Features

- **Swipe-to-start button**: drag the red button all the way to the right to finish onboarding. Let go too early and it slides back.
- **Interactive character**: drag the character left or right. It tilts with your finger, the circle behind it blurs, and the title switches from "Share." to "Give."
- **Sound feedback**: a chime plays when onboarding is completed.
- **Remembers progress**: onboarding is shown only once, saved with `@AppStorage`.
- **Smooth animations**: fade-in text, a floating character on the home screen, and an animated background circle.

## Screens

| Screen | Description |
|---|---|
| `OnBoardingView` | Welcome screen with the draggable character and the swipe button |
| `HomeView` | Main screen with a floating character and a quote |
| `ContentView` | Decides which screen to show based on the saved onboarding state |

## Built With

- SwiftUI
- `@AppStorage` for saving the onboarding state
- `DragGesture` for the swipe button and the draggable character
- AVFoundation for sound effects
- Core Data (template setup, not used by the screens yet)

## Project Structure

```
RestartApplication/
├── Screens/
│   ├── ContentView.swift
│   ├── OnBoardingView.swift
│   └── HomeView.swift
├── Views/
│   └── CircleGray.swift
├── Utilites/
│   └── AudioPlayer.swift
├── Sounds/
│   ├── chimeup.mp3
│   └── success.m4a
└── Assets.xcassets
```

## Requirements

- iOS 27.0+
- Xcode 27+

## Getting Started

1. Clone the repository:
   ```bash
   git clone https://github.com/hossam556k/RestartApplication.git
   ```
2. Open `RestartApplication.xcodeproj` in Xcode.
3. Choose a simulator or your iPhone and press **Run** (Cmd + R).

## Roadmap

- [ ] Make the "Restart" text on the home screen a button that brings back onboarding
- [ ] Use the `success` sound

## Author

**Hossam Osama** · [@hossam556k](https://github.com/hossam556k)
