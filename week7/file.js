var exampleArray = [ "pizza", "hot dog", "pizza", "ice cream", "fish", "steak", "oranges"];


function findOcurrences(array, wordToLookFor){
	var totalOcurrences = 0;

	array.forEach(function(word){
		if (word === wordToLookFor){
			totalOcurrences++;
		}
	});
	return totalOcurrences
}
var count = findOcurrences(exampleArray, "ice cream");
console.log(count)