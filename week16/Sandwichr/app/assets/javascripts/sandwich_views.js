$(document).ready(function(){
	$(".js-add-ingredient").on("click", function(event){
		
		var sandwichId = $(".js-sandwich").data("sandwich-id");
		var ingredientId = $(event.currentTarget).data("ingredient-id");
	
		var params = {
			"id": sandwichId,
			"ingredient_id": ingredientId
		}	
		$.ajax({
			type: "POST",
			url: `/api/sandwiches/${sandwichId}/ingredients/add`,
			success: addIngredient,
			data: params,
			error: addError
		});

	});
});

function addIngredient(response){
	var total_calories = response.sandwich.total_calores

	var lastIngredient = response.ingredients.pop()

	$(".js-total-calories").text(total_calories)
	
	var html = `
		<li>
			${lastIngredient.name} | calories: ${lastIngredient.calories}
		</li>
	`
	$(".js-ingredient-list").append(html)
};

function addError (err){

};