var numbers = '40:70:60:100:120'


function averageColon(num){
	var arrayNum = num.split(":");
	 var newArray = arrayNum.reduce(function(sum, num){
		// sum1 = parseInt(sum)
		// num1 = parseInt(num)
		return parseInt(sum) + parseInt(num);
	});
	 return newArray/arrayNum.length
}

console.log(averageColon(numbers))