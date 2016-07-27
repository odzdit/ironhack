$(document).ready(function(){
	$('.js-artist-form').on("submit", function(event){
		event.preventDefault();
		var searchTerm = $(".js-artist-input").val();
		console.log(searchTerm)
		$.ajax({
			type: "GET" ,
			url: "https://api.spotify.com/v1/search?type=artist&query=" + searchTerm,
			success: showArtists,
			error: artistError ,
		})
	})
})

function showArtists(response){
	console.log("Reponse", response);
	var artists = response.artists.items 
	
	artists.forEach(appendArtist);
}

function appendArtist(artist){
		var artistImg;
		if (artist.images[2]){
			artistImg = artist.images[2].url;
		} else {
			artistImg = "http://placehold.it/200x200"
		}
		var html = `
		<li>
			<h3>${artist.name}</h3>	
			<img src=${artistImg} alt="${artist.name} Image">
		</li>
		`
		$(".js-artist-list").append(html)
}

function artistError(error){
	console.log("Error!", error.response);
}