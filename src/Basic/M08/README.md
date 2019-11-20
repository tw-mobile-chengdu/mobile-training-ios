# Unit Testing

Include an introduction about doing the testing on iOS with Swift. We mainly using two testing frameworks - `Quick` and `Nimble`.

## Testing Triangle

There is a famous image called testing triangle which define the testing type and how much effort you need to test. Also you will know how much test you should add for each type of the testings.

<img src="./images/00-testing-testing-triangle.png" width=700>

As we can see, the manual testing is the most expensive testing method, so we should not add two many manual testing. And you can see for rest of the testings, they are cheaper and cheaper to test so you should add more of those type of testings.

And the unit testing is the testing facing the code, so devs add these testings to cover the function of the class rather than features. And there is a famous concept called TDD(Test Driven Development). You will use the unit testing to drive you writing the code. So we can make the code clean, easy to maintain, easy to refactoring and no overdesigned code.

## Unit Testing on iOS

As previous session mentioned, all the code should included in a target. So the first step should be create a target to contain these testing code.
