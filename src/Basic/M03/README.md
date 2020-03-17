# Intro to iOS

The UIKit framework provides the core objects that you need to build apps for iOS and tvOS. You use these objects to display your content onscreen, to interact with that content, and to manage interactions with the system. Apps rely on UIKit for their basic behavior, and UIKit provides many ways for you to customize that behavior to match your specific needs.

In this session, we will learn about:

- The iOS system structure
- Walking through the UIKit Catalog
- Commonly used components
- `delegate`, `SEL` & `closure`
- `runtime`, `KVO`, `KVC`
- App Store environment

## The iOS system structure

The iOS system architecture is divided into four levels:

- Cocoa Touch layer
- Media layer
- Core Services layer
- Core OS layer

![](./images/ios-structure.jpg)

#### Cocoa Touch layer

This layer provides a variety of useful frameworks for our application development, and most of them are related to the user interface. Like `UIKit Framework`. In essence, it is responsible for user touch interaction operations on iOS devices.  this layer is basically based on Objective-c interface.

#### Media layer

Through the Media layer, we can use various media files in the application to record audio and video, draw graphics, and create basic animation effects.

#### Core Services layer

Access some iOS services through the Core Service layer.Contains `Core Graphics`、`Core Animation`、`OpenGL ES`、`Core Text`、`Image I/O`、`Assets Library Framework`、`Media Player Framework`、`AV Foundation`、`OpenAL`、`Core Audio Frameworks`、`Core Media`

#### Core OS layer

Core OS is the lowest layer in the iOS system architecture. It includes memory management, file system, power management, and some other operating system tasks. It can directly interact with hardware devices. _As an app developer, you don't need to deal with this layer._ Contains several frameworks such as `Accelerate Framework`, `External Accessory Framework`, `Security Framework`, and `System`, which are basically interfaces based on the `C language`

### Walking through the UIKit Catalog

Apple provides a sample application that showcases some of the commonly used UIKit views and controls. 
[Download It](https://developer.apple.com/documentation/uikit/views_and_controls/uikit_catalog_creating_and_customizing_views_and_controls)

In the UIKit catalog, we will see some commonly UI components, we don't need to coding every components in there for now, but we need to know what thing a component could do.

<img src="./images/uikit-catalog.png" width=400 />

#### The lifecycle of `UIViewController`

View controllers go through many stages over their lifetime, and we may need to respond to some of them. View controller will automatically call its own functions when a lifecycle event occurs so that subclasses override the methods to react to changes.

<img src="./images/viewcontroller-lifecycle.png" width=400 />

1. Open `UIKitDemo` and find `LifeCycle` folder, there are two view controllers, each view controller will print out it's lifecycle events. the lifecycle events as follow:
    - viewDidLoad
    - viewWillAppear
    - viewDidAppear
    - viewWillDisappear
    - viewDidDisappear

> Q&A: 
> - Does `ViewController` call `deinit` after calling `viewDidDisappear`?
>
> Tips:
> - `deinit` is Swift's destructor, as opposed to `init`.

2. Run `UIKitDemo` and click `LifeCycle` button, then forward and back between green and red view controller, there are some lifecycle events log printed in the console.

> Q&A:
> - What is the order of printed events? 
> - Is there a relationship between events?

<img src="./images/lifecycle.gif" width=700 />

## Most commonly used components

- UIView
- UIButton
- UILabel
- UITextField
- UIImageView
- UINavigationController
- UITabBarController
 ... 

See more details at [Human Interface Guidelines - Views](https://developer.apple.com/design/human-interface-guidelines/ios/) and [Human Interface Guidelines - Controls](https://developer.apple.com/design/human-interface-guidelines/ios/controls/buttons/)

#### UINavigationController

The most common navigation patterns in iOS are：

- Modally present and dismiss
 
    ```
    // UIViewController
    func present(_ viewControllerToPresent: UIViewController, animated flag: Bool, completion: (() -> Void)? = nil)
    ```

- Stack-based push and pop

    ```
    // UINavigationController
    func pushViewController(_ viewController: UIViewController, animated: Bool)

    func popViewController(animated: Bool) -> UIViewController?

    func popToViewController(_ viewController: UIViewController, animated: Bool) -> [UIViewController]?

    func popToRootViewController(animated: Bool) -> [UIViewController]?

    ```

we will practice it in demo, after you finishe to TODOs, think about:

- After you present `GreenViewController` in demo, when click `Foward to red` button, why red view controller is presented, not pushed ?
- What is `UINavigationController`?

<img src="./images/navigation.gif" width=400 />

The demo has implement `UIView` as an example, we will practice the left components in the demo.

### delegate, closure and _SEL_

- The most common way of delegation that's found in Apple's own APIs is by using delegate protocols. Just like how UITableView has a UITableViewDelegate protocol. The delegate pattern has long been very prominent on Apple's platforms.

[About protocol](https://docs.swift.org/swift-book/LanguageGuide/Protocols.html)  
[Using delegates to customize object behavior](https://developer.apple.com/documentation/swift/cocoa_design_patterns/using_delegates_to_customize_object_behavior)
> Tips:
> - Practice UITableview.
> - Customize a delegate, and try passing data using delegate callback.
>
> Q&A
> - What is the difference between a delegate and a protocol?

- Just like functions, closures enable us to define a group of code statements that can be called as one unit, which can both accept input and produce output. The difference, however, is that closures can be defined inline — right at the point where we want to use them — which is incredibly useful in a number of different situations.  

[About closure](https://docs.swift.org/swift-book/LanguageGuide/Closures.html)  
[Declare a closure](https://fuckingclosuresyntax.com/)

> Q&A:
> - How to declare a closure in Swift?
>
> Tips:
> - Try passing data using closure callback.

### runtime, KVO & KVC

Objective-C is a dynamic language, which means it needs not only a compiler, but also a runtime system to dynamically create classes and objects, deliver messages and forward them. Understanding the runtime mechanism of Objective-C can help us better understand the language, and extend the language when appropriate, so as to solve some design or technical problems in the project from the system level.

<img src="./images/runtime.png" width=400 />

- [Using Key-Value Observing in Swift](https://developer.apple.com/documentation/swift/cocoa_design_patterns/using_key-value_observing_in_swift)

## Further reading

- [View Controller Programming Guide for iOS](https://developer.apple.com/library/archive/featuredarticles/ViewControllerPGforiPhoneOS/index.html)
- [Using Responders and the Responder Chain to Handle Events](https://developer.apple.com/documentation/uikit/touches_presses_and_gestures/using_responders_and_the_responder_chain_to_handle_events)
- [Human Interface Guidelines for iOS](https://developer.apple.com/design/human-interface-guidelines/ios/overview/themes/)
- [App Store Support](https://developer.apple.com/support/app-store/)
- [App Store Review Guidelines](https://developer.apple.com/app-store/review/guidelines/)
- [App Store Review Guidelines History](https://www.appstorereviewguidelineshistory.com)