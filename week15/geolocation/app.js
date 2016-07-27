$(document).ready(function(){
	if("geolocation" in navigator){
		console.log("We have geolocation");

		var options = {
			// timeout: 3000,
			enableHighAccuracy: true
		};

		navigator.geolocation.getCurrentPosition(onLocation, onError, options);
	} else {
		alert("We do not have geolocation");
	}
})

function onLocation(position){
	var coordinates = position.coords
	var latitude = coordinates.latitude
	var longitude = coordinates.longitude
	var html = `<img src=https://maps.googleapis.com/maps/api/staticmap?center=${latitude},${longitude}&zoom=17&size=400x300>`

	// https://maps.googleapis.com/maps/api/staticmap?center=25.7666768,-80.1973053&zoom=17&size=400x300 
			
		$("body").append(html)
}

function onError(err){
	console.log(err);
}