// JavaScript Olympics

// I paired [with: Ban Sanecki] on this challenge.

// This challenge took me [1] hours.


// Warm Up

console.log("doing pushups...")


// Bulk Up

function athletes(array) {
  var i = 0
  while (i < array.length) {
    array[i].win = console.log(array[i].name + " won the " + array[i].event)
    i ++
  }
}

athletes([{"name":"Tiger","event":"Golf"},{"name":"Serena","event":"Tennis"}])



// Jumble your words

function reversal(string) {
  console.log(string.split("").reverse().join(""))
}
reversal("String")

// 2,4,6,8

function evens(array) {
  var even_num = []
  for(var i = 0; i < array.length; i++) {
    if(array[i] % 2 == 0) {
      even_num.push(array[i]);
    }
  }
  console.log(even_num)
}
evens([1,2,3,4,5,6])

// "We built this city"


function Athlete(name, age, sport, quote) {
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
};
var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")

console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// var myObject = {
//     iAm : 'an object',
//     whatAmI : function(){
//         alert('I am ' + this.iAm);
//     }
// }


// Reflection

  // What JavaScript knowledge did you solidify in this challenge?
    //Adding properties to an object  
  
  // What are constructor functions?
    //Functions containing properties of their associated object
  
  // How are constructors different from Ruby classes (in your research)?
    //From what I've seen, constructors act like initialize methods in Ruby. 