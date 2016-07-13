var l = console.log;
l("Hey")

var car = function(model, noise){
	this.model = model;
	this.noise = noise;
	this.wheels = 4

	this.makeNoise = function(){
		console.log(this.noise + "!!!!")
	};

}

var bmw = ("I8", "ZAZZAAM")
bmw.makeNoise