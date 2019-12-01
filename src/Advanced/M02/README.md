# UICollectionView
We have learned [UITableView](./src/Basic/M06), as we know, UITableView can display a single-column list data. Then how to display a multiple-columns list data. Yep, UICollectionView can do it.
UICollectionView is an object that manages an ordered collection of data items and presents them using customizable layouts.

## Anatomy of a UICollectionView

<img src="./images/anatomy-of-uicollectionview.png" width=400 />

- **UICollectionView**: The main view in which the content is displayed, similar to a UITableView.
- **UICollectionViewCell**: This is similar to a UITableViewCell in a table view. These cells make up the content of the view and are added as subviews to the collection view.
- **Supplementary Views**: This is similar with the headers or footers in table view.

## UICollectionViewLayout

### What is UICollectionViewLayout?
UICollectionViewLayout is an abstract base class for generating layout information for a collection view.

The job of a layout object is to determine the placement of cells, supplementary views, and decoration views inside the collection view’s bounds and to report that information to the collection view when asked. The collection view then applies the provided layout information to the corresponding views so that they can be presented onscreen.

> Apple has provided developers with a basic “flow-based” layout called **UICollectionViewFlowLayout**. Elements lay out one after another based on their size, quite like a grid view. 
Before you consider subclassing a UICollectionViewLayout, though, you should look at the UICollectionViewFlowLayout class to see if it can be adapted to your layout needs.

### Layout Process

<img src="./images/uicollectionview-layout-lifecycle.png" width=500 />

Your layout subclass must implement the following methods:
- **collectionViewContentSize**: This method returns the width and height of the collection view’s contents.
- **prepare**: Whenever a layout operation is about to take place, UIKit calls this method. It’s your opportunity to prepare and perform any calculations required to determine the collection view’s size and the positions of the items.

- **layoutAttributesForElements(in:)**: This method returns the layout attributes for all of the cells and views in the specified rectangle.

- **layoutAttributesForItem(at:)**: This method returns the layout attributes for the item at the specified index path.


Figure out the jobs of these methods , try to use them in exercise 2 if you have time.


## Exercise
1. Using UICollectionView to display a list like this.
Tips: Using UICollectionViewFlowLayout.

<img src="./images/uicollectionview-exercise.png" width=200 />

2. (*Not required*) Using UICollectionView to display a list like this.
Tips: Using custom UICollectionViewLayout.

<img src="./images/uicollectionview-layout-exercise.png" width=200 />