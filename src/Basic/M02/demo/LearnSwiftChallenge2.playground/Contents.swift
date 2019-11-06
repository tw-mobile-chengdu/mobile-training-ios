import UIKit

//
// CodeWithChris Learn Swift for Beginners
// http://codewithchris.com/learn-swift
//
// Challenge #2: The Caterpillar Challenge
//
// Instructions:
// Complete the class definition so that you get the expected output in the console (specified at the bottom of this playground).
//
// Each time the "add" function is called, keep track of the String input that is passed in.
//
// When the "go" function is called, use the print command to output all of the String data (added through calling the "add" function) on a single line.
//
// Example:
// See under the class definition for an example of expected output for the given commands.

// --- Your code goes below this line ---
class StringCaterpillar {
    
    var body = [String]()
    
    func add(_ text:String) {
        // Note:
        // You must use the body array declared above to store the pieces.
        // It may be unnecessary to use an array for this but my intention is for you to practice using arrays.
    }
    
    func go() {
        
    }
    
}
// --- Your code goes above this line ---

// --- Don't edit or add anything below this line ---
let myCaterpillar = StringCaterpillar()

myCaterpillar.add("h")
myCaterpillar.add("e")
myCaterpillar.add("l")
myCaterpillar.add("l")
myCaterpillar.add("o")

myCaterpillar.go()

// Expected Output:
// Expected output in the console after the above statements: "hello"

// For Bonus Credit: 
// Create a custom initializer so that you can declare a caterpillar object like this
//
// let myCaterpillar = StringCaterpillar("hi")
// 
// The input for this init should be stored.
//
// After changing the "myCaterpillar" constant above to use your new custom initializer, the new expected output should be: "hihello"

