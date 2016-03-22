// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Kelson Adams

// Pseudocode
//Convert the integer to a string
//Make each number from integer an item in an array
//Reverse array
//Group array items (numbers) by 3
//Join array items with commas
//Join again to exit from array



// Initial Solution
//Need to put characters in groups of 3 before rejoining
function separateComma(integer) {
  var reverse = integer.toString().split("").reverse();
  console.log(reverse);
  
  var i = 1
  for(i in reverse) {
    if(i % 3 == 0) {
      reverse.splice(i, 0, ",");
    }
  }
  
  
  
  // var new_array = [];
  // for (var i = 0, j = reverse.length; i < j; i += 3) {
  // if(reverse[i] % 3 == 0) {
  //   new_array = reverse.join(",");
  
  // console.log(new_array);
  //   if(reverse[i] % 3 == 0) {
  // var reverse = reverse.slice("");  
  

  console.log(reverse);
};

separateComma(100000)

// Refactored Solution

  
function separateComma(integer) {
  console.log(integer.toLocaleString('en'));
  
}
separateComma(100002)
// separateComma(100002);


// Your Own Tests (OPTIONAL)


//var num = 15;
//var n = num.toString();


//"Hello world!".split('');
//["H", "e", "l", "l", "o", " ", "w", "o", "r", "l", "d", "!"]


//var newArray = []
//newArray.push(integer);




//Ruby Solution
// def nums_commas(integer) 
//   new_array = []
//   integer.to_s.chars.reverse.each_slice(3){|group| new_array << group.join}
//   new_array.join(",").reverse
// end

//p nums_commas(100002)


// Reflection

// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
  //We tried approaching it with similar methods as we used for the Ruby solution. Since JavaScript doesn't have enumerable methods, we used a for loop

// What did you learn about iterating over arrays in JavaScript?
  //It's much harder than in Ruby, as you can only use for and while loops

// What was different about solving this problem in JavaScript?
// We had to solve the problem with fewer methods available to us than with Ruby. 

// What built-in methods did you find to incorporate in your refactored solution?
// toString, split, reverse, splice, slice, toLocaleString




