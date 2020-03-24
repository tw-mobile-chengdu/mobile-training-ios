# Weibo Workshop Story One

## Story

#### Context

In this mini weibo app, we have two pages. we will create them first.

#### Scope

* Create empty post list and detail page.
* list page can jump to detail page.

#### Acceptance Criteria

| Given | When | Then |
| :--- | :--- | :--- |
| As a app users | I launch app from device | I can see the post list page |
| As a app users | I click one of the weibo item | I will navigate to weibo detail page |

<img src="./images/05-home-timeline.png" width=700 />

#### Navigation

In [iOS human interface guide](https://developer.apple.com/design/human-interface-guidelines/ios/app-architecture/navigation/), we already know the iOS has three main style of navigation:

* Hierarchical Navigation
* Flat Navigation
* Content-Driven or Experience-Driven Navigation

iOS provide the [Action Sheets](https://developer.apple.com/design/human-interface-guidelines/ios/views/action-sheets/), [Alerts](https://developer.apple.com/design/human-interface-guidelines/ios/views/alerts/), [Popovers](https://developer.apple.com/design/human-interface-guidelines/ios/views/popovers/), and [Modality](https://developer.apple.com/design/human-interface-guidelines/ios/app-architecture/modality/) to make the app has a clear path to navigate, and provide the [Navigation Bars](https://developer.apple.com/design/human-interface-guidelines/ios/bars/navigation-bars/), [Tab Bars](https://developer.apple.com/design/human-interface-guidelines/ios/bars/tab-bars/) and [Page Controls](https://developer.apple.com/design/human-interface-guidelines/ios/controls/page-controls/) to organize the navigation.

Read first:
* [UINavigationController](https://developer.apple.com/documentation/uikit/uinavigationcontroller)
Key: navigation stack, pushViewController, popViewController
* [Presentations and Transitions -> Presenting a View Controller](https://developer.apple.com/library/archive/featuredarticles/ViewControllerPGforiPhoneOS/PresentingaViewController.html)
Key: showViewController, showDetailViewController
* [Presentations and Transitions -> Using Segues](https://developer.apple.com/library/archive/featuredarticles/ViewControllerPGforiPhoneOS/UsingSegues.html)

#### UITableView

iOS provide the [UITableView](https://developer.apple.com/documentation/uikit/uitableview) to help develop display a single column of vertically scrolling content, divided into rows. UITableView manages the basic appearance of the table, but your app provides the cells ([UITableViewCell](https://developer.apple.com/documentation/uikit/uitableviewcell) objects) that display the actual content.

* Managing Interactions with the Table, [UITableViewDelegate](https://developer.apple.com/documentation/uikit/uitableviewdelegate)
* Providing the Table's Data and Cells, [UITableViewDataSource](https://developer.apple.com/documentation/uikit/uitableviewdatasource)

#### UICollectionView

iOS provide the [UICollectionView](https://developer.apple.com/documentation/uikit/uicollectionview) to manages an ordered collection of data items and presents them using customizable layouts, e.g. A collection view using the flow layout.

* Providing the Collection View Data, [UICollectionViewDataSource](https://developer.apple.com/documentation/uikit/uicollectionviewdatasource)
* Changing the Layout, [UICollectionViewLayout](https://developer.apple.com/documentation/uikit/uicollectionviewlayout)
* Managing Collection View Interactions, [UICollectionViewDelegate](https://developer.apple.com/documentation/uikit/uicollectionviewdelegate)
