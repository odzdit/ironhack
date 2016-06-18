var mars = [
	[, , , , , , , , , ],
	[, , , , , , , , , ],
	[, , , , , , , , , ],
	[, , , , , , , , , ],
	[, , , , , , , , , ],
	[, , , , , , , , , ],
	[, , , , , , , , , ],
	[, , , , , , , , , ],
	[, , , , , , , , , ],
	[, , , , , , , , , ],

]


var Rover = {
  position: [0,2], 
  direction: 'E'
}

var Rover2 = {
  position: [5,3], 
  direction: 'E'
}

mars[2][0] = "Kiwi"
mars[0][6] = "Kiwi"
mars[5][5] = "Kiwi"
mars[4][3] = "Kiwi"

function goForward	(rover, grid) {
  var x = rover.position[0];
  var y = rover.position[1];

  switch(rover.direction) {
    case 'N':
    if (rover.position[0] > 0 && grid[x-1][y] ==  undefined){
      rover.position[0]-- }
     break;

    case 'E':
    if (rover.position[1] < 9 && grid[x][y+1] == undefined){
      rover.position[1]++}
     break;

    case 'S':
      if (rover.position[0] < 9 && grid[x+1][y] == undefined){
      rover.position[0]++}
    break;

    case 'W':
      if (rover.position[1] > 0 && grid[x][y-1] == undefined){
      rover.position[1]--}
    break;
  }
}

function goBackwards(rover, grid) {
	var x = rover.position[0];
	var y = rover.position[1];

  switch(rover.direction) {
    case 'N':
    if (rover.position[0] < 9 && grid[x+1][y] ==  undefined){
      rover.position[0]++}
      break;

     case 'E':
     if(rover.position[1] > 0 && grid[x][y-1] ==  undefined){
      rover.position[1]--}
     break;

     case 'S':
     if(rover.position[0] > 0 && grid[x-1][y] ==  undefined){
      rover.position[0]--}
     break;

     case 'W':
     if (rover.position[1] < 9 && grid[x][y+1] ==  undefined){
      rover.position[1]++}
     break;

  }
}

function goRight(rover) {
 	switch(rover.direction){
 	case 'N':
 		rover.direction = 'E'
 	break;
 	case 'E':
 		rover.direction = 'S'
 	break;
 	case 'S':
 		rover.direction = 'W'
 	break;
 	case 'W':
 		rover.direction = 'N'
 	break;
  }
}

function goLeft(rover) {
	switch(rover.direction){
	 	case 'N':
	 		rover.direction = 'W'
	 	break;
	 	case 'E':
	 		rover.direction = 'N'
	 	break;
	 	case 'S':
	 		rover.direction = 'E'
	 	break;
	 	case 'W':
	 		rover.direction = 'S'
	 	break;
  }
}


function movement (rover, command, grid){
	command_array = command.split("")
	command_array.forEach(function(letter){
		if (letter === "f") {
			goForward(rover,grid);
		} else if (letter === "b") {
			 goBackwards(rover,grid);
		} else if (letter === "l"){
			 goLeft(rover,grid);
		} else if (letter === "r"){
		 rover.goRight(rover,grid);
		}
});
  	return rover.position;
}



console.log(mars);
console.log(movement(Rover,"ffffffff",mars))
console.log(movement(Rover2,"ffffffff",mars))
