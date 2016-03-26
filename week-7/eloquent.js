// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Introduction
// Did you learn anything new about JavaScript or programming in general?

// I came upon the realization that all modern-day programming languages derive from 
// much older programming languages. Therefore, if there is a problem with understanding 
// a particular component of JS or any other modern language, it may be helpful to look 
// back at the source code of their functions, which are often written in older programming 
// languages.

// Are there any concepts you feel uncomfortable with?

// I don't know if I fully understand why MongoDB and CouchDB are written in JavaScript 
// and not with SQL.

// Ch. 1: Values, Types, and Operators
// Identify two similarities and two differences between JavaScript and Ruby 
// syntax with regard to numbers, arithmetic, strings, booleans, and various operators.

// Ruby: 2/3 => 0
// JavaScript: 2/3 => 0.6666666667

// JavaScript has objects in place of Ruby's hashes.

// Both languages can use either '' or "" to represent strings. Both languages use the same 
// logical operators, except JS uses === instead of Ruby's ==.

// Ch. 2: Program Structure
// What is an expression?

// An expression is a statement. For instance, this would be an expression:
1;
false;
"hello";

// What is the purpose of semicolons in JavaScript? Are they always required?

// They are always required at the end of statements. They are used to tell the program 
// that a statement is finished.

// What causes a variable to return undefined?

// A variable will return undefined when it has not been declared beforehand.

// Write your own variable and do something to it in the eloquent.js file.

var x;
console.log(x); // undefined
var y = 3;
var x = 5;
console.log(x + y); // 8

// What does console.log do and when would you use it? What Ruby method(s) is this similar to?

// Use console.log when you need to either debug and see what a certain statement is, 
// or if you want to print something to the console. This is similar to the 'puts' 
// keyword in Ruby and it isn't to be confused with the 'return' as it does not return 
// anything.

// Write a short program that asks for a user to input their favorite food. 
// After they hit return, have the program respond with "Hey! That's my favorite 
// too!" (You will probably need to run this in the Chrome console rather than 
// node since node does not support prompt or alert). Paste your program into 
// the eloquent.js file.

var food = prompt("What is your favorite type of food?");
if (food != null) {
	alert("Hey! That's my favorite food, too!");
};

// Describe while and for loops

// While loops continue to loop until the conditional statement evaluates to false. 
// For loops will continue to loop a specified amount of times (typically the length 
// of the array).

// What other similarities or differences between Ruby and JavaScript did you 
// notice in this section?

// While and for loops are present in both JS and Ruby. However, Ruby seems to have 
// other built-in methods for looping whereas JS is limited to only while/for loops.

// Complete at least one of the exercises (Looping a Triangle, FizzBuzz, of 
// Chess Board) in the eloquent.js file.

// Chess Board
function chessBoard(size) {
	if (size.isNumber) {
		console.log("I need an integer. Terminating program.");
	} else {
		var count = 0;
		while (count < size) {
			if (count % 2 == 0) {
				console.log("# # # # ");
				count++;
			} else {
				console.log(" # # # #");
				count++;
			};
		};
	};
};

chessBoard(8);

// Ch. 3: Functions
// What are the differences between local and global variables in JavaScript?

// To make a global variable, simply define a variable without using the var keyword 
// prefixing the name of the variable. 

// When should you use functions?

// Functions should be used to execute a certain quantity of statements. They should 
// be used also to declare object literals, which are essentially the equivalent to Ruby's 
// hashes.

// What is a function declaration?

// A function declaration is the declaring of a function with a specified amount of 
// parameters or arguments.

// Complete the minimum exercise in the eloquent.js file.

// Completed below.

// Ch. 4: Data Structures: Objects and Arrays
// Skip the sections on the Lycanthrope's log, Computing Correlations, and 
// sections from Further Arrayology to the Global Object, but read the chapter summary.

// Completed.

// What is the difference between using a dot and a bracket to look up a property? 
// Ex. array.max vs array["max"]

// When using a dot, the part after the dot must be a valid variable name, and it 
// directly names the property. When using square brackets, the expression between 
// the brackets is evaluated to get the property name. Whereas value.x fetches the 
// property of value named “x”, value[x] tries to evaluate the expression x and uses 
// the result as the property name.

// Create an object called me that stores your name, age, three favorite foods, 
// and a quirk in your eloquent.js file.

var me = {
	name: "Kelson",
	age: 23,
	food1: "Curry",
	food2: "Soup",
	food3: "Rice",
	quirk: "Love scuba diving"
}

// What is a JavaScript object with a name and value property similar to in Ruby?

// A hash.

// Program Structure
// Write your own variable and do something to it.

// Completed above.

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

// Completed above.

// Complete the `minimum` exercise.

var min = function(num1, num2) {
	if (!num1.isNumber || !num2.isNumber) {
		console.log("Pass in numbers as arguments, please.");
	} else {
		if (num1 > num2) {
			return num2;
		} else if (num1 < num2) {
			return num1;
		} else {
			return num1;
		}
	};
};

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

// Completed above.