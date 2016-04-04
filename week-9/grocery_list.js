//Grocery List

//User Stories
  //I want a tool that allows me to create a grocery list from scratch
  //I want to be able to add an item to the grocery list
  //I want to be able to remove an item from the grocery list
  //I want to be able to update quantities of items on my grocery list
  //I want to be able to print my grocery list
  
//Pseudocode
  //Create a grocery list object - check
  //Create a function within grocery list to create grocery objects and their default quantity - check
  //Create a function that adds an item to grocery list - check
  //Create a function that removes an item from the grocery list - check
  //Create a function that allows you to update grocery item quantity using positive or negative numbers - check
  //Create a function that prints grocery list to console - check
  
var grocery_list = {}

function new_list(items) {
  for(var i = 0; i < items.length; i ++) {
  grocery_list[items[i]] = 1;  
  }
}
new_list(["cheese","carrots","bread"]);
// console.log(grocery_list);

function add_item(item, quantity) {
  grocery_list[item] = quantity;
}

// add_item("pizza", 2);
// console.log(grocery_list);

function remove_item(item) { 
  delete grocery_list[item];
}

// remove_item("cheese");
// console.log(grocery_list);

function update_item(item, quantity) {
  grocery_list[item] = quantity;
}

// update_item("cheese", 4);
// console.log(grocery_list);

function print_list() {
  console.log(grocery_list);
}

print_list();


