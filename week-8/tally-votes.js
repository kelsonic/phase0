// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with: Leland Meiners
// This challenge took me [3.5] hours.

var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
// INPUT: votes object
// OUTPUT: List of names and how many votes they received
// LOOP through the object votes and access their keys
// LOOP through the votes' keys and access each of their values
// IF the president does not exist in voteCount, create president object and assign its votes value to 1
// ELSE if the president does exist, increase votes value by 1

// INPUT: voteCount
// OUTPUT: name of candidate with highest occurance
// SET num to be 0
// SET winner to be empty string
// LOOP through each office in voteCount
// IF num is less than candidate votes
// ASSIGN candidate to winner variable
// LOG winner outside of the LOOP

// __________________________________________
// Initial Solution
function counter(votes,voteCount,officers) {
  var count = 0;
  // looping through votes
  for (var voter in votes) {
    for (var position in votes[voter]) {
      // Assign candidate from votes data
      var candidate = votes[voter][position];
      
      if (voteCount[position][candidate]) {
        // Add 1 to candidate's votes
        voteCount[position][candidate] += 1;
        
      } else {
        // Insert candidate and set their votes to 1
        voteCount[position][candidate] = 1;
      };
    };
  };
  
  for (var position in voteCount) {
    // SET num to be 0 for officer looping
    var num = 0;
    for (var cand_name in voteCount[position]) {
      // Assign candidate from voteCount data
      var cand_num = voteCount[position][cand_name];
      
      if (num < cand_num) {
        // count++;
        num = cand_num;
        officers[position] = cand_name;
      };
    };
  };
  console.log(voteCount);
  console.log(officers);
  console.log(count);
};

counter(votes,voteCount,officers);

// __________________________________________
// Refactored Solution
function counter(votes,voteCount,officers) {
  var count = 0;
  // looping through votes
  for (var voter in votes) {
    for (var position in votes[voter]) {
      // Assign candidate from votes data
      var candidate = votes[voter][position];
      
      if (voteCount[position][candidate]) {
        // Add 1 to candidate's votes
        voteCount[position][candidate] += 1;
        
      } else {
        // Insert candidate and set their votes to 1
        voteCount[position][candidate] = 1;
      };
    };
  };
  
  for (var position in voteCount) {
    // SET num to be 0 for officer looping
    var num = 0;
    for (var cand_name in voteCount[position]) {
      // Assign candidate from voteCount data
      var cand_num = voteCount[position][cand_name];
      
      if (num < cand_num) {
        // count++;
        num = cand_num;
        officers[position] = cand_name;
      };
    };
  };
  console.log(voteCount);
  console.log(officers);
  console.log(count);
};

counter(votes,voteCount,officers);

// __________________________________________
// Reflection

// What did you learn about iterating over nested objects in JavaScript?

// That it's really confusing. I still don't completely understand the difference between doing object.property and 
// object[property]. 

// Were you able to find useful methods to help you with this?

// Not really. I can't say we looked that much for JS methods as it seems to be lacking on creative 
// methods compared to Ruby. It would be nice if there were a package for the same Ruby methods but 
// in JavaScript.

// What concepts were solidified in the process of working through this challenge?

// That the num=0 variable has to be within the outer-most for loop as otherwise, if it is outside of 
// all the for loops, the num value does not get reset to 0.

// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)