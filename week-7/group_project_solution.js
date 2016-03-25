
/*
Pseudocode - create 3 functions to apply to an array of numbers

Create a function called 'sum' 

sum will have an array of numbers as its argument

sum will add the numbers within that array

--------------------------------------------------

Create a new function called 'mean'

mean will average all the numbers within the array of numbers

--------------------------------------------------------

Create a function called 'median'

median will find the middle value from the array of numbers. If there is no single middle number, the function should average the 2 middle numbers
*/
//User Story 1: As a user, I'll want to sum the numbers in a list of numbers.

var sum = function(numbers){

  var add = 0
  for(var i = 0; i < numbers.length; i++){
    add += numbers[i];
  }

  console.log(add);
}


sum([1,2,3,4,5])


/*############################################*/

//User Story 2: As a user, I'll want to find the average within a list of numbers.

var mean = function(numbers){

  var answer = 0;
  var totalNumbers = numbers.length;
  var add = 0;

  for(var i = 0; i < totalNumbers; i++){
    add += numbers[i];
  }

  answer = (add / totalNumbers);

  console.log(answer);
}

mean([1,2,3,5,5])

/*############################################*/

//User Story 3: As a user, I'll want to find the middle number within a list of numbers, or both middle numbers if the list is even.

var median = function(numbers){

  var index = 0;
  var totalNumbers = numbers.length;
  var results = 0;

  var results = [];

  if (totalNumbers % 2 != 0){
    index = Math.floor(totalNumbers / 2);
    results = numbers[index];
  }
  
  else if (totalNumbers % 2 == 0){
    index = Math.floor(totalNumbers / 2);
    results = (numbers[index] + numbers[index-1]) / 2;



  }

  console.log(results);

}

median([1, 1, 2, 5, 6, 6, 9])
median([1, 1, 2, 6, 6, 9])
