/*
USER STORIES
As a user I would like...
To take a group of numbers THAT ARE IN NUMERICAL ORDER of any number of inputs and do the following:
-Add them all together when i ask to "sum" the group
-Calulate the average when I ask for the "mean" of the group
-Organize them in order and pick the middle value when I ask for the "median" of the group.
For instance  4, 8, 9 should give 8 as a result
Note: If there are an even number of values given, average the two in the middle.
For instance 4, 8, 9, 20 should give 8 as a result 8.5
*/

/*
PSEUDOCODE

Create a function called sum and take an array as its input.
Declare the variable total to 0.
Iterate through the array and increase 1 to a counter variable for each pass.
  Add the counter index of the array to the total for each loop pass.
Return the total.

Create a function called mean that takes an array as its input.
Declare the variable total to 0.
Iterate through the array and increase 1 to a counter variable for each pass.
  Add the counter index of the array to the total for each loop pass.
Declare variable average and set it equal to the total divided by the length of the array.
Return average.

Create a function called median that takes an array as its input.
Sort the array by smallest to largest.
If the sorted array is not divisible by 2, return the sorted array's middle index.
Otherwise, return the average of the two middle-most indices.
*/

// sum array
var oddLengthArray  = [1, 2, 3, 4, 5, 5, 7]
var evenLengthArray = [4, 4, 5, 5, 6, 6, 6, 7]
var scrambleArray = [6, 6, 5, 4, 4, 5, 7, 6]

function sum(array){
  var total = 0;
  for(var counter =0; counter < array.length; counter++){
    total+=array[counter];
  }
  console.log(total);
  return total;
}

sum(oddLengthArray)
sum(evenLengthArray)


// mean array
function mean(array){
  var total = 0;
  for(var counter = 0; counter < array.length; counter++){
    total += array[counter];
    }
  var average = total/array.length;
  console.log(average);
}
mean(oddLengthArray)
mean(evenLengthArray)


// median array
function median(array){
  sorted_array = array.sort(function(a, b){return a-b});
  if (sorted_array.length%2 != 0) {
    var index = Math.floor(sorted_array.length/2);
    var middle_number = sorted_array[index];
  } else {
    var index1 = sorted_array.length/2;
    var index2 = index1 - 1;
    var number1 = sorted_array[index1];
    var number2 = sorted_array[index2];
    var middle_number = (number1 + number2)/2;
  }
  console.log(middle_number);
}
median(oddLengthArray)
median(evenLengthArray)
median(scrambleArray)