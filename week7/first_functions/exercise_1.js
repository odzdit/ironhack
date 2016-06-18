//EXERCISE 1
//
// Uncomment the exercise code deleting /* and */ chars
// Run the code with node functions.js in your terminal.
// Complete the code to decrypt the secret letter
// The functions receives an eight-digit number and returns a single letter.
// The algorithm to calculate the letter is as follows:
// The number is divided by 23 and the remainder is replaced by a letter determined by the following table: 
//	 _____________________________________________________________
//  | 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 |
//	| T R W A G M Y F P D X  B  N  J  Z  S  Q  V  H  L  C  K  E  |
//	|____________________________________________________________|
// 
// You can use 'result' variable to store the resulting letter.
// If your code works, the last three equalities will be "true"




function letterDecoder( codedNumber ) {
	var lookUp = 'TRWAGMYFPDXBNJZSQVHLCKE';
    var remainder = codedNumber%23
	var result = lookUp.charAt(remainder)
	if (codedNumber.toString().length!== 8 ||  isNaN(codedNumber)){
		return "Invalid parameter";
	}
	return result;
}

console.log( letterDecoder( 12345678 ) === 'Z');
console.log( letterDecoder( 34667892 ) === 'S');
console.log( letterDecoder( 92234488 ) === 'A');




// Part 2
//
// Uncomment the exercise code deleting /* and */ chars
// Open the console and reload the index page to see the result of the code.
// Improve the exercise above to be able to perform this new functionality
// Of course it has to keep working as usual with right inputs.



console.log( letterDecoder( -1 ) === 'Invalid parameter');
console.log( letterDecoder( "A1234567" ) === 'Invalid parameter');



