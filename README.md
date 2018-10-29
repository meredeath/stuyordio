# stuyordio
My slither.io remake for my second term APCS final project.

## The Team
Meredith Hu

## Team Name
FakeRemakes

## Project Name
Stuyord.io (totally not ripping off another really popular game)

## Description
Stuyord.io is a remake of slither.io, a popular multiplayer online game that, although being rather meaningless, is ridiculously additive. The player is represented by a snake of their color choice in a seemingly endless arena. The game follows the player as the player moves through the world eating food particles, avoiding other snakes, and trying to kill other snakes. Touching any part of another snake's body spells instant death, as does bumping into the vast arena walls. Players aim to reach the largest size in the arena (something that can be tracked through the constantly updated leaderboard in the top right of the screen). Other fun features include pressing the mouse when you need a boost to escape bigger snakes, and having the ability to annihilate another snake if you meet it head on and it is smaller than you.

### How to use this program
Type processing sketch_stuyordio to open the file, and click the play button to run it.

### Critical Features
Snakes
* Is a LinkedList<> of SnakeFrags.
* Will have PlayerSnake and AISnake; PlayerSnake can follow the cursor, and AISnake will move randomly.

SnakeFrags
* Is an ellipse that is part of a snake
* Will eventually split into Head and BodyFrag to make modifying the look of the Head easier.

Mass
* Is a randomly generated ellipse of uniform size, random location and random color.


## Goals/What's Currently Done
minimum working version:
 - [x] Have snake fragments that display
 - [x] Have snakes that display
 - [x] Have the snakes look continuous
 - [x] Get the snakes to move in constant time

version 2:
 - [x] Have the snake follow the cursor's direction
 - [x] Write the PlayerSnake class and have it be the only one controlled by the cursor
 - [x] Write the AISnake class and have these snakes spawn randomly and move randomly
 - [x] Have PlayerSnakes spawn randomly
 - [x] Have the snakes display names
 - [x] Write the food class
 - [x] Have a certain amount of food in the world, and have the food replenish itself when some is eaten
 - [x] Have the snakes be able to eat food
 - [x] Have the snakes display names unique to what type of snake they are
 - [ ] Have snakes die when they hit the wall
 - [ ] Write a start screen with a "play" button
 - [ ] Have an end game screen for when the player dies with a "play again" button

making it valid:
 - [ ] Code a boost capability for all the snakes
 - [ ] Make the boost leave behind old Food in lieu of the snake's lost size
 - [ ] Have the camera follow the snake in the middle of the screen
 - [ ] Have snakes die when they hit other snakes (work on collision tracking)
 - [ ] Have snakes be able to eat other snakes
 - [ ] Make a "How To Play" screen
 - [ ] Write a less stupid AI that knows how to avoid other snakes, and stops moving randomly
 - [ ] Be able to select the colors of the your PlayerSnake (create a screen for it)
 - [ ] Be able to name your PlayerSnake (create a screen for it)

reaches:
 - [ ] make snakes glow
 - [ ] make food glow
 - [ ] make the food pulse
 - [ ] Have a PNG as the background of the slither.io arena
 - [ ] Make dead snakes leave behind glowing death trails
 - [ ] Make the heads have eyes
 - [ ] Have a leaderboard that constantly updates + tracks snakes in decreasing rank by volume
 - [ ] Have funny random messages display when you die and see the end screen
 - [ ] Make a more intelligent AI that tries to eat other snakes by going for their heads, or one that tries to trap other snakes
 - [ ] Make a fun mode you can trigger on or off that changes how the game looks

## devlog
<<<<<<< HEAD
### 06/11/2018
* Figured out how to have them follow the cursor's DIRECTION precisely - a lot harder than I thought it would be!
* Wrote the PlayerSnake and AISnake classes (extend Snake)
* Wrote BodyFrag and Head, which extend SnakeFrag, but are sadly obsolete
* Wrote a Food class and made food randomly generate in the world
* The snakes are able to eat food and grow in size!

### 06/10/2018
* Finished minimum functionality. The snakes move and display in constant time, but they get severely distorted.# stuyordio
My slither.io remake for my second term APCS final project.
