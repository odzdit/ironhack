// EXERCISE 2
//
// Uncomment the exercise code deleting /* and */ chars
// Open the console and reload the index page to see the result of the code.
// Write a function that takes an array of words and returns the length of the longest one.



function findLongestWord( array_words ){
	var wordLength = 0;
	array_words.forEach(function(word){
		if (word.length > wordLength){
			wordLength = word.length;
	    }
	 });
	return wordLength;
}

console.log(findLongestWord( ["Richie", "Joanie", "Greg", "Marcia", "Bobby"] ) === 6 );
console.log(findLongestWord( ["Blanka", "Zangief", "Chun Li", "Guile"] ) === 7 );
console.log(findLongestWord( ["Red", "Blue", "Green"] ) === 5 );



// Part 2
//
// Uncomment the exercise code deleting /* and */ chars
// Now we are going to save the longest length of every array in a new array called array_lengths
// Open the console and reload the index page to see the result of the code.
// You have to complete the calculateAverage function (it is a few lines below), and it has
// to return the average of every number in a array instead of the "Not implemented yet" message.



var array_lengths = [];
array_lengths.push( findLongestWord( ["Richie", "Joanie", "Greg", "Marcia", "Bobby"]) );
array_lengths.push( findLongestWord( ["Blanka", "Zangief", "Chun Li", "Guile"] ) );
array_lengths.push( findLongestWord( ["Red", "Blue", "Green"] ) );
//<place to add more lines>, read the next commented text and you will understand

console.log( "These are the longest lengths of each group: " + array_lengths );
console.log( calculateAverage( array_lengths ) === 6 && "The average of longest lengths is: " + calculateAverage( array_lengths ))

function calculateAverage( array ){
	var number_items = array.length
	var sum = array.reduce(function(sum,num){
		return sum + num;
	});
	return sum/number_items;
}

// Now add more lengths to the array_lengths. You have to do it where <place to add more lines> is written. 
// You can use this structure: array_lengths.push( findLongestWord( [<add some elements>] ) );
// Don't forget to add words to the array. The longer the better!

