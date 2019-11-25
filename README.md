# Mobile Training: iOS

This is an iOS training for different stage of people. The goal is to let people can learn iOS Developer and working on the project ASAP.

## Prerequisites

- Xcode
  - Download the Xcode 11 or above from App store or this link [https://developer.apple.com/download/more/](https://developer.apple.com/download/more/)
  - Make sure you run Xcode after installing, it generally prompts to install additional components - do that too.
  - You will need MacOS 10.14.3 or later (ie Mojave).
- Cocoapods
  - Install `rbenv`
  ```sh
  brew install rbenv
  rbenv init
  ```
  - Install ruby via rbenv
  ```sh
  rbenv install 2.6.2
  rbenv shell 2.6.2
  rbenv rehash
  ```
  - Install Cocoapods via `gem install cocoapods`, then run `rbenv rehash`

    ***Note:** Run `pod repo update` after you install the Cocoapods for this take a long time to update*

- Clone this repo 
  
  - [https://github.com/tw-xian-consumer-mobile/mobile-training-ios.git](https://github.com/tw-xian-consumer-mobile/mobile-training-ios.git)

## Sessions

![#2d5df0][#2d5df0]&nbsp;&nbsp;The `Basic` sessions are for beginner.

![#f4d26c][#f4d26c]&nbsp;&nbsp;The `Advanced` sessions ayre for people with experience.

### ![#2d5df0][#2d5df0] Basic

| Topic | Comments |
| :--- | :--- |
| [M01: Intro to Xcode](./src/Basic/M01) | Basic Usage of the iOS IDE |
| [M02: Intro to Swift](./src/Basic/M02) | Basic knowledge of the iOS programming language |
| [M03: Intro to UIKit](./src/Basic/M03) | View, Label, Button, Image, TextField |
| [M04: Layout](./src/Basic/M04) | Frame, Autoresizing, AutoLayout |
| [M05: Debugging](./src/Basic/M05) | Breakpoints, Logs |
| [M06: UITableView](./src/Basic/M06) | How to implement a long list in iOS |
| [M07: Networking](./src/Basic/M07) | Basic knowledge of sending a request to server |
| [M08: Unit Testing](./src/Basic/M08) | Basic knowledge testing and how to write a unit test in iOS |
| [M09: Releasing](./src/Basic/M09) | How we release the iOS App |
| [M10: Workshop](./src/Basic/M10_FinalTest) | POS App |

### ![#f4d26c][#f4d26c] Advanced

| Topic | Comments |
| :--- | :--- |
| M01: App Architecture | MVC, MVVM, VIPER, Clean Swift |
| M02: Functional Swift | Functional Programming in Swift |
| M03: UICollectionView | ImagePicker |
| M04: Dynamic Content List | Long List with self sizing list item |
| M05: Database | Sqlite, CoreData, Realm |
| M06: Continuous Integration | BuddyBuild, Jenkins |
| M07: Data Tracking | What, Why, When, How |
| M08: UI Testing | Native Testing |
| M09: Workshop | Wechat Moment |

<!--Parameters-->
<!--Blue-->
[#2d5df0]: https://placehold.it/15/2d5df0/000000?text=+
<!--Yellow-->
[#f4d26c]: https://placehold.it/15/f4d26c/000000?text=+
