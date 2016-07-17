var Viking = function(name, health, power){
	this.name = name;
	this.health = health;
	this.power = power;

	this.attack = function(viking){
		viking.health = viking.health - this.power;
		console.log(viking.health);
	};
};


var vikingPit = function(viking1, viking2){
	while(viking1.health > 1 && viking2.health > 1){
		viking1.attack(viking2);

		new_atk = viking2
		new_def = viking1

		viking1 = new_def
		viking2 = new_atk
		
		if (viking1.health <= 1){
			console.log("Viking 1 Lost");
			return;
		}
		else if (viking2.health<= 1 ) {
			console.log("viking 2 lost");
			return;
		}
	}
}


var josh = new Viking("Josh", 100, 8)
var faraz = new Viking("Faraz", 100, 50)

josh.attack(faraz)

vikingPit(josh, faraz)