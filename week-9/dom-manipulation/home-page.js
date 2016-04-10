// DOM Manipulation Challenge


// I worked on this challenge [by myself, with: ].


// Add your JavaScript calls to this page:

// Release 0:
document.getElementById('release-0').className = 'done';


// Release 1:
document.getElementById('release-1').style.display = 'none';


// Release 2:
document.getElementsByTagName('H1')[0].innerHTML = 'I completed release 2';


// Release 3:
document.getElementById('release-3').style.background = "#955259";


// Release 4:
for (var i=0; i<document.getElementsByClassName('release-4').length; i ++) {
	document.getElementsByClassName('release-4')[i].style.fontSize = '2em';
};


// Release 5:
var tmpl = document.getElementById('hidden');
document.body.appendChild(tmpl.content.cloneNode(true));

// Reflection:
// What did you learn about the DOM?
// The DOM is like a tree in its structure, which is quite logical. It's moderately easy to manipulate with JavaScript. Which is new to me.
// What are some useful methods to use to manipulate the DOM?
// getElementBy(Id,ClassName,TagName) are all very useful.  appendChild is great for adding things on to the page, like if you were adding additional blog posts you could have a script to add them for you following a template. Style is used any time you want to adjust the CSS for an element. innerHTML allows you to edit what is inside of an element.
