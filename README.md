# Mobile Training: iOS

This is an iOS training for different stage of people. The goal is to let people can learn iOS Developer and working on the project ASAP.

## Prerequisites

- Xcode
  - Download the Xcode 11 or above from App store or this link [https://developer.apple.com/download/more/](https://developer.apple.com/download/more/)
  - Make sure you run Xcode after installing, it generally prompts to install additional components - do that too.
  - You will need MacOS 10.14.3 or later (ie Mojave).

- Carthage (our session use the Carthage as the 3rd lib manager)
  [Configure your Carthage](https://github.com/Carthage/Carthage)

- Cocoapods (if you want to use it as the 3rd lib manager)
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
| [M03: Intro to iOS](./src/Basic/M03) | View, Label, Button, Image, TextField, System Structure |
| [M04: Weibo Workshop Preparation](./src/Basic/M04) | Init project, Package manager, Mock |
| [M05: Weibo Workshop Story One](./src/Basic/M05) | Navigation |
| [M06: Weibo Workshop Story Two](./src/Basic/M06) | Weibo list and detail page |

<!--Parameters-->
<!--Blue-->
[#2d5df0]: https://placehold.it/15/2d5df0/000000?text=+
<!--Yellow-->

[#f4d26c]: https://placehold.it/15/f4d26c/000000?text=+
