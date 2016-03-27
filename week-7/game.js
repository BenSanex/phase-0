
 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: Slay the dragon!
// Overall mission: Choose your weapon and attempt to slay the dragon!
// Goals:
// Characters: Knight, Dragon
// Objects: Knight, Dragon, Sword, Axe, Bow and Arrow
// Functions: Attack, Choose Weapon

/* Pseudocode for MVP
Create dragon with 10 health
Create knight with health and open weapon property
Prompt user for type of weapon they want to use and add it to knight
Create attack function which does variable damage to dragon, lowering health by an amount within a range
Also have knight take range of damage after attacking
Create loop where knight attacks until either knight or dragon health reach 0
*/


// Initial Code
var dragon = {
	name:"Dragon",
	health:10
}
var knight = {
	name:"Knight",
	health:10,
	weapon:"fists"
}
// var axe = {
// 	name:"Battle Axe",
// 	damage:Math.floor(Math.random() * 3) + 2, 
// 	returnDamage:Math.floor(Math.random() * 3) + 2
// }
// var sword = {
// 	name:"Sword and Shield",
// 	damage:Math.floor(Math.random() * 3) + 1,
// 	returnDamage:Math.floor(Math.random() * 3) + 1
// }
// var bow = {
// 	name:"Bow and Arrow",
// 	damage:Math.floor(Math.random() * 2) + 1,
// 	returnDamage:Math.floor(Math.random() * 2) + 1
// }
chooseWeapon = function(choice) {
	knight.weapon = choice
	console.log("Equipped the " + choice.name + "!")
}

attack = function() {
	console.log("Attacked the dragon with the " + knight.weapon.name)
	var hit = knight.weapon.damage
	console.log("Hit for " + hit + " damage")
	dragon.health -= hit
	var hurt = knight.weapon.returnDamage
	console.log("Took " + hurt + " damage from the dragon!")
	knight.health -= hurt
}

checkHealth = function() {
	console.log('Dragon down to: ' + dragon.health + 'hp')
	console.log('You are down to: ' + knight.health + 'hp')
}

battle = function() {
	while (dragon.health >0 && knight.health > 0) {
		attack()
	}
		checkHealth()
	if (knight.health <= 0) {
		console.log("Oh no! You were defeated by the dragon.")
	}
	else {
		console.log("You defeated the dragon!")
	}
}


// Refactored Code
function weapon(name,damage,counter) {
	this.name = name;
	this.damage = Math.floor(Math.random() * damage) + 1;
	this.returnDamage = Math.floor(Math.random() * counter) + 1;
}
var axe = new weapon("axe",4,4)
var sword = new weapon("Sword and Shield",3,3)
var bow = new weapon("Bow and Arrow",2,2)

chooseWeapon(axe)
battle()

// // Reflection
// What was the most difficult part of this challenge?
// The most difficult part for me was figuring out what I wanted to do! Once I had an idea of a simple game
// I then spent a good deal of time planning how I would go through it, and I strayed from my Pseudocode because I didn't anticipate how far I wanted to take it.
// What did you learn about creating objects and functions that interact with one another?
// It's important to have good variable names that are descriptive but not confusing so you can reference them easily.
// It also seems easier to make objects that can manipulate other objects in Ruby.
// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
// I learned about some different math methods, which I used in my initial solution, and I realized I could use a constructor to make my code cleaner.
// How can you access and manipulate properties of objects?
// object.property