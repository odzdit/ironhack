$(document).ready(function(){
	
	$('.js-artist-form').on("submit", function(event){
		event.preventDefault();
		var searchTerm = $(".js-artist-input").val();
		console.log(searchTerm)
		$.ajax({
			type: "GET" ,
			url: "https://api.spotify.com/v1/search?type=artist&query=" + searchTerm,
			success: showArtists,
			error: artistError,
		});
	});
});

	$(".js-artist-list").on("click", ".artist-li", function(event){
		var artistId = $(event.currentTarget).data("artist-id")
		var artistName = $(event.currentTarget).data("artist-name")
		
		$.ajax({
			type: "GET",
			url: `https://api.spotify.com/v1/artists/${artistId}/albums`,
			success: function(response){
				showAlbums(response, artistName);
				artist_albums = response.items

				artist_albums.forEach(function(albumName){
					single_album = `
					<li class="data-artist-album" data-album-id="${albumName.id}">${albumName.name}</li>
					`
					$(".modal-artist-albums").append(single_album)
					// console.log(albumName.id)
				});
			error: albumError

			},
		});
	});

	$('.modal-artist-albums').on("click", ".data-artist-album", function(event){
			var albumId = $(event.currentTarget).data("album-id")
			$.ajax({
				type: "GET",
				url: `https://api.spotify.com/v1/albums/${albumId}/tracks`,
				success: trackSucess,
				error: trackError
			});
		});


function showAlbums(response, artistName){
	$(".modal-artist-name").text(artistName)
	$("#myAlbumModal").modal("show");
}

function albumError(err){
	console.log(err);
}


function trackSucess(response){
var tracks = response.items
	tracks.forEach(function(trackName){
		single_track = `
		<li> ${trackName.name}</li>
		`
		$(".modal-track-albums"). append(single_track);
		$("#myAlbumModal").modal("hide");
		$("#myTrackModal").modal("show");
	}) 
};

function trackError(err){

};


function showArtists(response){
	// console.log("Reponse", response);
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
		<li class ="artist-li" data-artist-id="${artist.id}" data-artist-name="${artist.name}">
			<h3>${artist.name}</h3>	
			<img src=${artistImg} alt="${artist.name} Image">
		</li>
		`
		$(".js-artist-list").append(html)
}

function artistError(error){
	console.log("Error!", error.response);
}