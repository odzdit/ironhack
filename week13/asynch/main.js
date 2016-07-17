var slideLoader = require('./readfile');


slideLoader('example.txt', function(slides){
	slides.forEach(function(slide) {
		console.log('\n\n\n\n     ' + slide);
	});
});