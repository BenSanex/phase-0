// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Kunal.

// Pseudocode
// Define function that takes a integer as an argument
// Convert integer to array
// Reverse array
// Add commas after every 3 Numbers
// Reverse array
// Convert back to string
// Print new number


// Initial Solution
var separateCommas = function(number) {
	var array = number.toString().split("")
	array = array.reverse()
	for(var i = 3; i < array.length; i+=4) {
		array.splice(i,0,",")
	}
	var string = array.reverse().join("")
	console.log(string)
}

separateCommas(100000)

// Refactored Solution

var separateCommas = function(number) {
	var string = number.toString()

	for(var i = string.length; i > 3; i-=3) {
		string = string.slice(0,i-3) + "," + string.slice(i-3)
	}
	console.log(string)
}

separateCommas(1000000000)


// Your Own Tests (OPTIONAL)




// Reflection
// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
// Since JavaScript works mostly the same way we did the same basic approach.
// What did you learn about iterating over arrays in JavaScript?
// Its like Ruby, but with different built in methods.
// What was different about solving this problem in JavaScript?
// JavaScript has a handy splice method which lets you replace or add something to an array.
// What built-in methods did you find to incorporate in your refactored solution?
// You can get just part of a string using the slice method, so if you slice in into 2 places where you want to put a comma and then add them back together you can add the commas as needed.