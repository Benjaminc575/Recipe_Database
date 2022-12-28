-- This Script contains all the statements in order to retireve and display data for the recipes.
-- Run this section In order to Display All Recipes and select columns 
SELECT r.name AS 'Recipe', 
    r.prep_time AS 'Prep. Time',
    r.cook_time AS 'Cook Time',
    r.servings AS 'Servings',
	ri.amount AS 'Amount', 
	mu.name AS 'Unit of Measure', 
	i.name AS 'Ingredient',
    r.instructions,
    c.name AS 'Category',
    r.user_id AS 'User'
FROM Recipe r 
JOIN RecipeIngredient ri ON r.id = ri.recipe_id 
JOIN Ingredient i ON i.id = ri.ingredient_id 
LEFT JOIN Categories c ON c.id = r.categories_id
LEFT OUTER JOIN Measure mu ON mu.id = measure_id;

-- Run This Section to only recipe 2
SELECT r.name AS 'Recipe', 
    r.prep_time AS 'Prep. Time',
    r.cook_time AS 'Cook Time',
    r.servings AS 'Servings',
	ri.amount AS 'Amount', 
	mu.name AS 'Unit of Measure', 
	i.name AS 'Ingredient',
    r.instructions,
    r.user_id AS 'User'
FROM Recipe r 
JOIN RecipeIngredient ri on r.id = ri.recipe_id 
JOIN Ingredient i on i.id = ri.ingredient_id 
LEFT OUTER JOIN Measure mu on mu.id = measure_id
WHERE r.id = 2;

-- Shows Recipes for User 1
SELECT r.name AS 'Recipe', 
    r.prep_time AS 'Prep. Time',
    r.cook_time AS 'Cook Time',
    r.servings AS 'Servings',
	ri.amount AS 'Amount', 
	mu.name AS 'Unit of Measure', 
	i.name AS 'Ingredient',
    r.instructions,
    r.user_id AS 'User'
FROM Recipe r 
JOIN RecipeIngredient ri on r.id = ri.recipe_id 
JOIN Ingredient i on i.id = ri.ingredient_id 
LEFT OUTER JOIN Measure mu on mu.id = measure_id
WHERE r.user_id = 1;

-- Update Ingredient 
UPDATE Ingredient 
SET name = 'pepper'
WHERE id = 2;






