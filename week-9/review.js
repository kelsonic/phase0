// Create a new list
// Add an item with a quantity to the list
// Remove an item from the list
// Update quantities for items in your list
// Print the list (Consider how to make it look nice!)

// Release 2: Pseudocode
// Determine which data structure you should use for your grocery list based on these 
// requirements. Does an array or an object the most sense and why?

// Remember to keep your pseudocode in plain English and write it so that it's easy 
// to translate to your initial solution. Identify the input and output. Your pseudocode 
// should also avoid using language-specific words, include proper indentation, and 
// capitalize keywords like IF, WHILE, etc.)

// PSEUDOCODE:
/*
Create list variable and assign it to empty object.
Create add function
  Pass in the item name, the quantity, and the list you want to add the item to
  Add item to specified list
Create remove function
  Pass in the item name, and the list you want to remove the item from
  Remove item and quantity from the list
Create update quantity function
  Pass in the item name, the quantity, and the list you want to update
  Update the item name's quantity in the list
Create print list function
  Pass in the name of the list to print and print it

*/

// Release 3: Initial Solution

// Create list variable and assign it to empty object.
var list = {};

// Create add function
//   Pass in the item name, the quantity, and the list you want to add the item to
//   Add item to specified list
function addItem(itemName, itemQuantity, list) {
  list[itemName] = itemQuantity;
}

// Create remove function
//   Pass in the item name and the list you want to remove the item from
//   Remove item and quantity from the list
function removeItem(itemName, list) {
  delete list[itemName];
}

// Create update quantity function
//   Pass in the item name, the quantity, and the list you want to update
//   Update the item name's quantity in the list
function updateItem(itemName, itemQuantity, list) {
  list[itemName] = itemQuantity;
}

// Create print list function
//   Pass in the name of the list to print and print it
function printList(list) {
  console.log(list);
}


// Driver's Code
console.log(list);
addItem("Burrito", 2, list);
addItem("Eggs", 12, list);
addItem("Milk", 2, list);
console.log("Items added:");
console.log(list);
updateItem("Milk",1,list);
console.log("Item updated:");
console.log(list);
removeItem("Burrito",list);
console.log("Item removed:");
console.log(list);
console.log("Print list:")
printList(list);



// Reflection
// What concepts did you solidify in working on this challenge? (reviewing the 
// passing of information, objects, constructors, etc.)
/*
The most significant thing I learned from this challenge is how to delete objects from 
object literals.

// What was the most difficult part of this challenge?

The challenge was relatively easy, especially since we had already done it in Ruby.

// Did an array or object make more sense to use and why?

I used an object in this case since every grocery item will have a quantity.

*/