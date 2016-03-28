 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: Create a paddle board, ball, and walls
// Overall mission: How long can you keep the ball from falling?
// Goals: Move the paddle with keyboard, create ball, create bouncy walls, create game over if ball touches bottom wall
// Characters: paddle, ball, walls
// Objects: paddle, ball, walls
// Functions:

// Keyboard Event Listener Functions

// Ball function that draws ball on canvas

// Event listener for wall collisions

// Pseudocode
// Create ball's dimensions and its speed variables
// Create paddle dimensions
// Set left and right keys to false
// If the ball hits the left, top, or right walls it should change direction
// Create a drawPaddle function that will display the moved/stationary paddle every frame
// Create a drawBall function that will display the moved ball every frame
// Add event listeners for key left and right
// Add event listening functions for keys and change booleans to true if keys are pressed

// INITIAL CODE
// Creating canvas
var canvas = document.getElementById("myCanvas");
var ctx = canvas.getContext("2d");
// Define position for circle
var x = canvas.width/2;
var y = canvas.height-30;
// Define the movement for circle
var dx = 2;
var dy = -2;
// Define paddle and keyboard
var paddleHeight = 10;
var paddleWidth = 75;
var paddleX = (canvas.width-paddleWidth)/2;
// Define the movement controls on keyboard
var rightPressed = false;
var leftPressed = false;

// Wall collisions
// Top
if(y + dy < 0) {
    dy = -dy;
}
// Bottom
if(y + dy > canvas.height) {
    dy = -dy;
}
// Left
if(x + dx < 0) {
    dx = -dx;
}
// Right
if(x + dx > canvas.width) {
    dx = -dx;
}

// Draw Function for paddle
function drawPaddle() {
    ctx.beginPath();
    ctx.rect(paddleX, canvas.height-paddleHeight, paddleWidth, paddleHeight);
    ctx.fillStyle = "#0095DD";
    ctx.fill();
    ctx.closePath();
}

// Draw Function for blocks
function draw() {
  // Clear canvas to ensure trail doesn't occur with objects
  ctx.clearRect(0, 0, canvas.width, canvas.height);
  // Create a circle
  ctx.beginPath();
  ctx.arc(x, y, 10, 0, Math.PI*2);
  ctx.fillStyle = "#0095DD";
  ctx.fill();
  ctx.closePath();
  x += dx;
  y += dy;
  // Check if right or left keyboard keys are pressed
  if(rightPressed) {
      paddleX += 7;
  }
  else if(leftPressed) {
      paddleX -= 7;
  }
}

// Event listeners for keyboard controls
document.addEventListener("keydown", keyDownHandler, false);
document.addEventListener("keyup", keyUpHandler, false);

// Add key down and up handler functions to change booleans
function keyDownHandler(e) {
    if(e.keyCode == 39) {
        rightPressed = true;
    }
    else if(e.keyCode == 37) {
        leftPressed = true;
    }
}

function keyUpHandler(e) {
    if(e.keyCode == 39) {
        rightPressed = false;
    }
    else if(e.keyCode == 37) {
        leftPressed = false;
    }
}

setInterval(draw, 10);





// Refactored Code
// Run in HTML5 script and canvas tags
var canvas = document.getElementById("myCanvas");
var ctx = canvas.getContext("2d");
var ballRadius = 10;
var x = canvas.width/2;
var y = canvas.height-30;
var dx = 2;
var dy = -2;
var paddleHeight = 10;
var paddleWidth = 75;
var paddleX = (canvas.width-paddleWidth)/2;
var rightPressed = false;
var leftPressed = false;

document.addEventListener("keydown", keyDownHandler, false);
document.addEventListener("keyup", keyUpHandler, false);

function keyDownHandler(e) {
    if(e.keyCode == 39) {
        rightPressed = true;
    }
    else if(e.keyCode == 37) {
        leftPressed = true;
    }
}
function keyUpHandler(e) {
    if(e.keyCode == 39) {
        rightPressed = false;
    }
    else if(e.keyCode == 37) {
        leftPressed = false;
    }
}

function drawBall() {
    ctx.beginPath();
    ctx.arc(x, y, ballRadius, 0, Math.PI*2);
    ctx.fillStyle = "#0095DD";
    ctx.fill();
    ctx.closePath();
}

function drawPaddle() {
    ctx.beginPath();
    ctx.rect(paddleX, canvas.height-paddleHeight, paddleWidth, paddleHeight);
    ctx.fillStyle = "#0095DD";
    ctx.fill();
    ctx.closePath();
}

function draw() {
    ctx.clearRect(0, 0, canvas.width, canvas.height);
    drawBall();
    drawPaddle();
    
    if(x + dx > canvas.width-ballRadius || x + dx < ballRadius) {
        dx = -dx;
    }
    if(y + dy < ballRadius) {
        dy = -dy;
    }
    else if(y + dy > canvas.height-ballRadius) {
        if(x > paddleX && x < paddleX + paddleWidth) {
            dy = -dy;
        }
        else {
            alert("GAME OVER");
            document.location.reload();
        }
    }
    
    if(rightPressed && paddleX < canvas.width-paddleWidth) {
        paddleX += 7;
    }
    else if(leftPressed && paddleX > 0) {
        paddleX -= 7;
    }
    
    x += dx;
    y += dy;
}

setInterval(draw, 10);



// Reflection
/*
What was the most difficult part of this challenge?

This challenge was quite difficult. I tried to follow a tutorial on how to build 
this game from Mozilla, but many of the methods (if not all) I have never used before. 
This was an excellent learning experience and I hope for more projects like this in 
the future.

What did you learn about creating objects and functions that interact with one another?

I learned that it is fairly easy to modify global variables by various functions 
and the changes you make to them are not necessarily permanent, as is the case with 
the keyboard key booleans.

Did you learn about any new built-in methods you could use in your refactored 
solution? If so, what were they and how do they work?

I learned about quite a few. One of the most essential ones is .clearRect as it is 
important to clear the screen every frame in order to make an animation -- otherwise, 
you can end up with just a painted screen.

How can you access and manipulate properties of objects?

JavaScript is fairly simple in this regard. Here is an example:

object = {};
object.name = "Kelson";
console.log(object); => { name: "Kelson" }

*/