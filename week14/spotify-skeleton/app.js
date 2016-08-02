$(document).ready(function(){
	$(".js-search-song").on("submit", function(event){
		event.preventDefault();
		var song = $(".js-song-input").val();
		// console.log(song);

		$.ajax({
			type: "GET",
			url: "https://api.spotify.com/v1/search?type=track&query=" + song,
			success: getTrack, 
			error: errorTrack
		});
	});

	function getTrack(response){
		var song_array = response.tracks;
		var songName = song_array.items[0];
		var artist = song_array.items[0].artists[0]
		var webCover = songName.album.images[0]
		var previewUrl = songName.preview_url
		var songNames = song_array.items

		var title = songName.name
		var cover = webCover.url
		var author = artist.name
		
		$(".title").text(title);
		$(".author").text(author);
		$(".album_cover").prop("src", cover)
		$(".js-player").prop("src", previewUrl)

		
		songNames.forEach(function(song_name){
			console.log(song_name.name)
		});
		

	};

	function errorTrack(err){

	};


	$(".PLAY").on("click", function(){
		if($(".PLAY").hasClass("playing") === false) {
		$('.js-player').trigger('play');
		$(".PLAY").addClass('playing');
	} else {
		$('.js-player').trigger('pause');
		$('.PLAY').removeClass('playing');
	}});

	function printTime () {
  var current = $('.js-player').prop('currentTime');
  $("progress").prop("value", current);
}

// Have printTime be called when the time is updated
$('.js-player').on('timeupdate', printTime);

$(".author").on("click", function(event){
	var artist_info = $('.js-artist-info').text();
	$.ajax({
		type: "GET",
		url: "https://api.spotify.com/v1/search?type=artist&query=" + artist_info,
		success: showArtist , 
		error: showArtistError, 

	});
});

function showArtist(response) {
	var artist = response.artists.items[1]
	var artistName = artist.name
	var artistImage = artist.images[1].url
	var artistGenre = artist.genres[0]
	var artistPopularity = artist.popularity
	var artistFollowers = artist.followers.total
	var modalArtistNameHtml = `
	Artist: ${artistName}
	`

	$(".js-artist-name").append(modalArtistNameHtml)


	var modalHtml = `
	<img src="${artistImage}">
	<ul>
		<li>Genre: ${artistGenre}</li>
		<li>Popularity Grade :${artistPopularity}</li>
		<li>Followers: ${artistFollowers}</li>
	</ul>
	`
	$(".modal-body").append(modalHtml)
	$(".js-modal").modal("show");



};

function showArtistError(err) {

};


$('.more').on("click", function(event){

});


});