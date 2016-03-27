
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
var axe = {
	name:"Battle Axe",
	damage:Math.floor(Math.random() * 3) + 2, 
	returnDamage:Math.floor(Math.random() * 3) + 2
}
var sword = {
	name:"Sword and Shield",
	damage:Math.floor(Math.random() * 3) + 1,
	returnDamage:Math.floor(Math.random() * 3) + 1
}
var bow = {
	name:"Bow and Arrow",
	damage:Math.floor(Math.random() * 2) + 1,
	returnDamage:Math.floor(Math.random() * 2) + 1
}
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
chooseWeapon(bow)
attack()
checkHealth()

// Refactored Code






// Reflection
//
//
//
//
//
//
//
//