// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

//var ruby_js = console.log("Ruby is easier to write");

var addition = 1;
console.log(addition + 1);


//Favorite food
var favorite = prompt("What is your favorite food?");
  if(favorite) {
    console.log("Hey! That's my favorite food, too!")
};
// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
//FizzBuzz

for(var i = 0; 1 < 101; i = i + 1)
  if(i % 3 == 0) 
    console.log("Fizz");
  else if(i % 5 == 0)
    console.log("Buzz");
  else if(i % 3 == 0 && i % 5 == 0)
    console.log("FizzBuzz");
  else
    console.log(i);

// Functions

// Complete the `minimum` exercise.

function minimum(num1, num2) {
  console.log(Math.min(num1, num2));
}
minimum(5,7);
// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.
var me = {
  name: "Ted",
  age: 24,
  food1: "Sourdough",
  food2: "Crab cake",
  food3: "Chocolate cake",
  quirk: "coloboma"
};