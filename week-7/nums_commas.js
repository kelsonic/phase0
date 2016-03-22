// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Ted Bogin

// Pseudocode
//Convert the integer to a string
//Make each number from integer an item in an array
//Reverse array
//Group array items (numbers) by 3
//Join array items with commas
//Join again to exit from array



// Initial Solution
// Need to put characters in groups of 3 before rejoining
// function separateComma(integer) {
// var reverse = integer.toString().split("").reverse();
// console.log(reverse);
 
// var i = 1
// for(i in reverse) {
//   if(i % 3 == 0) {
//     reverse.splice(i, 0, ",");
//   }
// }
 
 
 
// // var new_array = [];
// // for (var i = 0, j = reverse.length; i < j; i += 3) {
// // if(reverse[i] % 3 == 0) {
// //   new_array = reverse.join(",");
 
// // console.log(new_array);
// //   if(reverse[i] % 3 == 0) {
// // var reverse = reverse.slice("");  
 

// console.log(reverse);
// };

// separateComma(100000)

// Refactored Solution

 
function separateComma(integer) {
 console.log(integer.toLocaleString('en'));
};

separateComma(100002)

// Reflection
// What was it like to approach the problem from the perspective of JavaScript? 
// Did you approach the problem differently?

// This was a very difficult challenge. I had a very hard time researching the various 
// methods for JavaScript and we could not seem to make our initial solution work. 
// We ended up needing to use the Date class in order to add commas to our number.

// What did you learn about iterating over arrays in JavaScript?

// The for and while loops are the best ways to do iteration over arrays in JS. 
// Unfortunately, it was difficult to figure out what type of objects we were dealing 
// with as the typeof keyword returned back 'object' instead of the data type (ie. array), 
// which made debugging difficult.

// What was different about solving this problem in JavaScript?

// Everything. Ruby it was relatively painless because of their readable methods but 
// JavaScript was clearly not built with human friendliness in mind. 

// What built-in methods did you find to incorporate in your refactored solution?

// We used the .toLocaleString method to add commas to the given number, which allowed 
// the function to consist of only one line.
