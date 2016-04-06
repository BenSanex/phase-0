// Pseudocode
// Create new function to create a list
// function should take string of items as an argument
// create new object grocery_list
// SPLIT string into individual items
// add individual items from string into list with quantity 1

// Add item to list:
// New Function with two arguments, item and quantity
// Use constructor function to add new property and value to list object

// Remove item from list:
// New function, takes one argument, item
// Delete property from grocery list object

// Update quantity of item:
// New function, two arguments, item and quantity
// Set value of item property to new quantity

// Print list:
// FOR each item IN grocery list
// log to console.

var groceryList = {};

var listMaker = function(string) {
	listArray = string.split(" ");
	for (var item in listArray) {
		groceryList[listArray[item]] = 1
	};
	console.log(groceryList);
}

var addItem = function(item,quantity) {
	groceryList[item] = quantity;
	console.log('Added ' + quantity + ' ' + item);
};

var removeItem = function(item) {
	delete groceryList[item];
	console.log('Removed ' + item);
};

var updateQuantity = function(item, quantity) {
	groceryList[item] = quantity;
	console.log('Updated ' + item + ' to ' + quantity);
};

var printList = function() {
	for (var item in groceryList);
		console.log(item + ': ' + groceryList[item]);
};

listMaker('apple banana orange bread')
addItem('cereal',2)
removeItem('bread')
updateQuantity('apple', 5)
printList()



// Reflection
// What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
// It was quite easy to pass info between functions because I defined the list variable outside the scope of the individual functions. I didn't use a constructor because I didn't see the value in it for this challenge but I suppose if I was to attach this to a web app it might be valuable. 
// What was the most difficult part of this challenge?
// Remembering semicolons!
// Did an array or object make more sense to use and why?
// Ojbect made sense because an array wouldn't be able to handle the quantity of an item easily.
