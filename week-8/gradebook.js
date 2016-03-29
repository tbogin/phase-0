/*
Gradebook from Names and Scores
I worked on this challenge [by myself, with:]
This challenge took me [#] hours.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]






// __________________________________________
// Write your code below.


//Release 1

// var gradebook = {};

// function intoGradebook(students, scores) {
//   for(var i = 0; i < students.length; i++) {
//     gradebook[students[i]] = scores[i];
//   }
// }
// intoGradebook(students, scores);
// console.log(gradebook);

// function addScores() {
//   for(var element in gradebook) {
//     gradebook[element] = {"testScores": gradebook[element]};
//   }
// }
// addScores();
// console.log(gradebook);

//Release 4
// gradebook["addScores"] = function(name, score) {
//   gradebook[name]["testScores"].push(score);
// }
// console.log(gradebook);
// gradebook["addScores"]("Susan",80);
// console.log(gradebook);
// var gradebook = {
//   "Joseph": {testScores: scores[0]},
//   // "Joseph": {testScores: [80, 70, 70, 100]},
//   "Susan": {testScores: [85, 80, 90, 90]},
//   "William": {testScores: [75, 70, 80, 75]},
//   "Elizabeth": {testScores:  [100, 90, 95, 85]},
  
// }




//Calculate average grade
// function average(num_array) {
//   var sum = 0
//   for(var i = 0; i < num_array.length; i++){
//     sum += num_array[i];
//   }
//   var mean = (sum/num_array.length)
//   return mean;
// }

//Modified average grade
// gradebook["getAverage"] = function(name) {return average(gradebook[name]["testScores"]);}
// console.log(gradebook["getAverage"]("Susan"));

// __________________________________________
// Refactored Solution
// Release 1
var students = ["Joseph", "Susan", "William", "Elizabeth"]
var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]
var gradebook = {}

// Release 2 -- add students w their scores into gradebook
function intoGradebook(students, scores) {
  for(var i = 0; i < students.length; i++) {
    gradebook[students[i]] = scores[i];
  }
}
intoGradebook(students, scores);

// Release 3 -- fix gradebook values
function updateGradebook() {
  for (var elem in gradebook) {
    gradebook[elem] = {"testScores": gradebook[elem]}
  }
}
updateGradebook();

// Release 4 - add gradebook 'addScore' key and function as a value
gradebook["addScore"] = function(name, score){gradebook[name]["testScores"].push(score)}

// Release 5,6 - add gradebook 'getAverage' key and function as a value
function average(num_array) {
  var sum = 0
  for (var i = 0; i < num_array.length; i++){
    sum += num_array[i];
  }
  var mean = (sum/num_array.length)
  return mean;
}
// Release 7
gradebook["getAverage"] = function(name) {return average(gradebook[name]["testScores"]);}
console.log(gradebook["getAverage"]("Susan"));


// __________________________________________
// Reflect


// What did you learn about adding functions to objects?
  //We made the object global, and then called external functions on the object
// How did you iterate over nested arrays in JavaScript?
  //for in loops
// Were there any new methods you were able to incorporate? If so, what were they and how did they work?
  //We stuck with loops




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
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)