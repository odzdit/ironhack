// This is a synchronous function
// var kafka = fs.readFileSync("kafka.txt");
// console.log(kafka);


// var cicero = fs.readFileSync("cicero.txt");
// console.log(cicero);

// WHICH WAS THEN CONVERTED TO THE THING BELOW

// this is an asynchronous syntax for callback funcions

fs.readFile("werther.txt", function(error, content){
	if (error){
		console.log("There's an error");
	} else {
		console.log();
	}
});

fs.readFile("kafka.txt", function(error, content){
	if (error){
		console.log("There's an error");
	} else {
		console.log();
	}
});

fs.readFile("cicero.txt", function(error, content){
	if (error){
		console.log("There's an error");
	} else {
		console.log();
	}
});

