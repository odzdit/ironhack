// var Viking = function(name, health, power){
// 	this.name = name;
// 	this.health = health;
// 	this.power = power;

// 	this.attack = function(viking){
// 		viking.health = viking.health - this.power;
// 		console.log(viking.health);
// 	};
// };


// var vikingPit = function(viking1, viking2){
// 	while(viking1.health => 1);
// 		viking1.attack(viking2);

// 		new_atk = viking2
// 		new_def = viking1

// 		viking1 = new_def
// 		viking2 = new_atk
// 		if (viking1.health => 1) {
// 			console.log("viking 1 wins");
// 		};
// 		else (viking2.health =>1){
// 			console.log("viking 2 wins");
// 		};

// };


var josh = new Viking("Josh", 100, 8)
var faraz = new Viking("Faraz", 100, 6)

// josh.attack(faraz)

var TownAssault = function(assaulters, victims){
	this.assaulters = assaulters;
	this.victims = victims;	
	this.turns = Math.round((	Math.random() * 3) + 5);
	this.casualties = {
		vikings: [],
		victims: []
	}
} 

TownAssault.prototype.initiate = function(){
	for (var i = 1; i <= this.turns; i++){
		var survivors = [];

		this.assaulters.forEach((viking) => {
			var randomIndex = Math.round(Math.random() * (this.victims.length - 1 ));
			var randomVictim = this.victims[randomIndex];

			viking.attack(randomVictim);
			randomVictim.attack(viking);

			if (viking.health <= 0){
				this.casualties.vikings.push(viking);
			} else {
				survivors.push(viking)
			}

			if (randomVictim.health <= 0){
				this.casualties.victims.push(randomVictim);
				this.victims.splice(randomIndex, 1);
			}
		})

		this.assaulters = survivors;
	}

	this.printCasualtyReport();
}

TownAssault.prototype.printCasualtyReport = function(){
	console.log(`The vikings had ${this.casualties.vikings.length - 1} casualties`);
	console.log(`The saxons had ${this.casualties.victims.length - 1} casualties`);
}

module.exports = TownAssault;