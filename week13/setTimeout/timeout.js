console.log("aa")

// function shout () {
// 	console.log("aaaaaaa");
// }

// setTimeout(shout,10000)

function sleep(seconds, callback){
	setTimeout(callback, seconds * 1000);
}

sleep(10, function() {
	console.log("It;s been 10 seconds")
});

