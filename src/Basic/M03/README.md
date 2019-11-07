# Intro to UIKit

The UIKit framework provides the core objects that you need to build apps for iOS and tvOS. You use these objects to display your content onscreen, to interact with that content, and to manage interactions with the system. Apps rely on UIKit for their basic behavior, and UIKit provides many ways for you to customize that behavior to match your specific needs.

In this session, we will learn about:
- Walking through the UIKit Catalog
- The lifecycle of `UIViewController`
- How to display a controller
- How to add content on screen
- How to interact with content

### Walking through the UIKit Catalog

Apple provides a sample application that showcases some of the commonly used UIKit views and controls. 
[Download It](https://developer.apple.com/documentation/uikit/views_and_controls/uikit_catalog_creating_and_customizing_views_and_controls)

In the UIKit catalog, we will see some commonly UI components, we don't need to coding every components in there for now, but we need to know what thing a component could do.


### The lifecycle of `UIViewController`
View controllers go through many stages over their lifetime, and we may need to respond to some of them. View controller will automatically call its own functions when a lifecycle event occurs so that subclasses override the methods to react to changes.
So priting log to the follow lifecycle, and figure out the order of them.
- viewDidLoad
- viewWillAppear
- viewDidAppear
- viewWillDisappear
- viewDidDisappear
