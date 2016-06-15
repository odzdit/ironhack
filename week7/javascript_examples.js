function eat (food){
	console.log("Eating some " + food);
}

eat("Pizza");


// LOOPS

// for (var i = 1; i <= 43; i += 2){
// 	console.log(i)
// }

// WHILE LOOP
var i = 1
while (i <= 42){
	console.log(i);
	i++;
}

// EACH LOOP
//  Anonymous Style
var foods = ["pizza", "hot dog", "bread"];
foods.forEach(function(food){
	console.log(food);
})

// These are the same thing
// Named Style

function logFood(food){
	console.log(food)
}
foods.forEach(logFood);

// MAP LOOP
var capsFoods = foods.map(function(food){
	return food.toUpperCase();
})

console.log(capsFoods)

//  REDUCE LOOP
var foodMsg = foods.reduce(function(pre,food){
	return pre + " and " + food
})

console.log(foodMsg)

// FILTER LOOPS

var breadless = foods.filter(function(food){
	return food !== "bread"
})

console.log(breadless)

var food = "bread"

if (food === "pizza"){
	console.log("Pizza is my favorite food too!");
} else if (food === "hot dog"){
	console.log("hot dog is my favorite food too!");
} else {
	console.log("i dont like bread");
}
