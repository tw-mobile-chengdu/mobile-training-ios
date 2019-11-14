# Auto Layout

## 1. Understanding Auto Layout

Why we need to use auto layout? What's the difference between auto layout and other layout approaches?

Find the answer at [Here](https://developer.apple.com/library/archive/documentation/UserExperience/Conceptual/AutolayoutPG/index.html#//apple_ref/doc/uid/TP40010853-CH7-SW1)

## 2. Auto Layout Attributes

In Auto Layout, the attributes define a feature that can be constrained. In general, this includes the four edges (leading, trailing, top, and bottom), as well as the height, width, and vertical and horizontal centers. Text items also have one or more baseline attributes.

![](https://developer.apple.com/library/archive/documentation/UserExperience/Conceptual/AutolayoutPG/Art/attributes_2x.png)

## 3. Anatomy of a Constraint

The layout of your view hierarchy is defined as a series of linear equations. Each constraint represents a single equation. Your goal is to declare a series of equations that has one and only one possible solution.

A sample equation is shown below.

![](https://developer.apple.com/library/archive/documentation/UserExperience/Conceptual/AutolayoutPG/Art/view_formula_2x.png)

This constraint states that the red view’s leading edge must be 8.0 points after the blue view’s trailing edge. Its equation has a number of parts:

- **Item 1**. The first item in the equation—in this case, the red view. The item must be either a view or a layout guide.
- **Attribute 1**. The attribute to be constrained on the first item—in this case, the red view’s leading edge.
- **Relationship**. The relationship between the left and right sides. The relationship can have one of three values: equal, greater than or equal, or less than or equal. In this case, the left and right side are equal.
- **Multiplier**. The value of attribute 2 is multiplied by this floating point number. In this case, the multiplier is `1.0`.
- **Item 2**. The second item in the equation—in this case, the blue view. Unlike the first item, this can be left blank.
- **Attribute 2**. The attribute to be constrained on the second item—in this case, the blue view’s trailing edge. If the second item is left blank, this must be `Not an Attribute`.
- **Constant**. A constant, floating-point offset—in this case, `8.0`. This value is added to the value of attribute 2.

Most constraints define a relationship between two items in our user interface. These items can represent either views or layout guides. Constraints can also define the relationship between two different attributes of a single item, for example, setting an aspect ratio between an item’s height and width. You can also assign constant values to an item’s height or width. When working with constant values, the second item is left blank, the second attribute is set to `Not An Attribute`, and the multiplier is set to `0.0`.

## 4. Working with Constraints in Interface Builder

There are three main options for setting up Auto Layout constraints in Interface Builder: You can control-drag between views, you can use the Pin and Align tools, and you can let Interface Builder set up the constraints for you and then edit or modify the results. Each of these approaches has its own set of strengths and weaknesses. I recommend that you learn the first two ways of creating constraints:

- [Control-Dragging Constraints](https://developer.apple.com/library/archive/documentation/UserExperience/Conceptual/AutolayoutPG/WorkingwithConstraintsinInterfaceBuidler.html#//apple_ref/doc/uid/TP40010853-CH10-SW1)
- [Using the Stack, Align, Pin and Resolve Tools](https://developer.apple.com/library/archive/documentation/UserExperience/Conceptual/AutolayoutPG/WorkingwithConstraintsinInterfaceBuidler.html#//apple_ref/doc/uid/TP40010853-CH10-SW1)

## 5. Practice

[Let's put the theory into practice](./demo/AutoLayoutChallenge1)

#### Requirement

![](./images/autolayout.gif)

- yellowView.width = 0.5 * redView.width
- grayView.width = 0.5 * redView.width
- brownView.width = 50

Other constraints can be decided by yourself.



## 6. Further Reading

- [Programmatically Creating Constraints](https://developer.apple.com/library/archive/documentation/UserExperience/Conceptual/AutolayoutPG/ProgrammaticallyCreatingConstraints.html#//apple_ref/doc/uid/TP40010853-CH16-SW1)

  
  
  



