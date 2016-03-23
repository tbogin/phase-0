// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: Score 3 hockey goals
// Overall mission: In ghost hockey, a haunted puck shoots unaided toward a net guarded by a goalie.
// Goals: Shoot hockey puck past goalie and into net until game is won
// Characters: Hockey puck, goalie
// Objects: Hockey puck, goalie
// Functions: 

// Pseudocode
//Hockey puck has a starting place
//Goalie moves left and right before the goal
//If hockey puck meets goalie, no goal is scored
//If hockey puck goes past goalie, a goal is scored
//Game ends with 3 points

// Initial Code
// var ghostPuck = {
//   position: 0,
//   score: 0,


// shoot: function() {
//     ghostPuck.position = Math.floor(Math.random()*3);
//     goalie.position = Math.floor(Math.random()*3);
  
//     if(ghostPuck.position === goalie.position) {
//       console.log("The goalie blocked your shot");
//     }
//     else {
//       console.log("Haunted puck reached the net")
//       ghostPuck.score = ghostPuck.score += 1
//       console.log("Your score is " + ghostPuck.score);
//     } 
  
//     if(ghostPuck.score == 3){
//       console.log("You won!")
//     }
// },

// fight: function() {
//     if(ghostPuck.score == 0) {
//       console.log("Goalie led the crowd in a seance. Ghost Puck was unaffected, and slid back into position.")
//     }
//     else if(ghostPuck.score == 1) {
//       console.log("Goalie skated after the puck until the puck vanished into thin air.")
//     }
//     else if(ghostPuck.score == 2){
//       console.log("Ghost Puck flew around the stadium.")
//     }
//     else {
//       console.log("Goalie fled the rink in terror.")
//     }  
//   }
  
// };


// var goalie = {
//   position: 0,
// };

// ghostPuck.shoot();
// ghostPuck.fight();

// Refactored Code

var ghostPuck = {
  position: 0,
  score: 0,
  
  shoot: function() {
    ghostPuck.position = Math.floor(Math.random()*3);
    goalie.position = Math.floor(Math.random()*3);
    
    if(ghostPuck.position === goalie.position){
      console.log("Goalie blocked the shot.");
    }
    else {
     console.log("Haunted Puck reached the net!"); 
      ghostPuck.score = ghostPuck.score += 1
      console.log("Your score is " + ghostPuck.score + ". You win!");
    }
  
  },
  
  fight: function(){
    if(ghostPuck.score == 0){
      console.log("Goalie led the crowd in a seance. Ghost Puck was unaffected, and slid back into position.");
    }
    else if(ghostPuck.score == 1){
      console.log("Goalie fled the rink in terror.");
    }
  }
  
    
};




var goalie = {
  position: 0
};

ghostPuck.shoot();
ghostPuck.fight();
// Reflection
//
// What was the most difficult part of this challenge?
    //Deciding on the game I wanted to program, and how complicated I wanted the game to be. This is the first game I've ever created, so I refactored to make it simpler than initially.
    
// What did you learn about creating objects and functions that interact with one another?
  //I learned that an object can contain different fuctions that can be called with the object. I should have expected this - a JS object is similar to a Ruby class.

// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
  //I didn't use any built-in methods besides conditionals, and Math properties

// How can you access and manipulate properties of objects?
  //You can call on objects, and attach properties w/ arguments to them if those properties exist within the object