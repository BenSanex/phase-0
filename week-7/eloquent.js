// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var ben = 1;
ben = ben + 1;
console.log(ben)

// prompt("What's your favorite food?")
// alert("Mine too!")

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
var triangle = "#"
while (triangle.length <= 7) {
	console.log(triangle);
	triangle = triangle + "#"
};



// Functions

// Complete the `minimum` exercise.
function min(a,b) {
	if (a < b)
		return a
	else
		return b;
}
console.log(min(-92,10))

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.
var me = {
	name: "Ben"
	age: 28
	favoriteFoods: "Pizza", "Hot Dogs", "Cheese"
	qurik: "eSports" 
}