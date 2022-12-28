-- This script creates the Avacado toast recipe (Recipe 2)
INSERT INTO Recipe (name, description, prep_time, cook_time, servings, instructions, categories_id, user_id) 
VALUES('Avacado Toast With Salmon', 'Delicous Avacado Toast with Smoked Salmon', 
'5-10 Min.', '3-5 Min.', '2',
'Step 1: Prepare the Avacodo By slicing open and mashing together. Add salt and pepper to liking.
Step2: Toast bread.
Step3: Spread Avacado on bread. Layered Smoked salmon ontop. 
Step4: Finish With a sprinkle of red pepper flakes. Enjoy!
', 2, 1);

-- Inserting Ingredients for Recipe 
INSERT INTO Ingredient (name) VALUES('Toast'),('Avacado'),('Smoked Salmon'),('Red Pepper Flakes');

-- Ingridients for the Smoked Salmon recipe 
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount) 
VALUES (2, 9,NULL, 1);
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount) 
VALUES (2, 10,NULL, 2);
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount) 
VALUES (2, 11,NULL, 2); 
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount) 
VALUES (2, 12, 2, 1); 


-- Recipe 3 

INSERT INTO Recipe (name, description, prep_time, cook_time, servings, instructions, categories_id, user_id) 
VALUES('Lemon Garlic Shrimp Pasta', 'Easy 30-Minute Pasta Recipe', 
'15 Min.', '15 Min.', '4', 
'1. In a large pot, boil water and add pasta. Cook (stirring frequently) until al dente.
2. Drain and set pasta aside.
3. In the same pan, heat olive oil and 2 tablespoons of butter. Add garlic and crushed red pepper, cook until fragrant.
4. Toss in shrimp, salt and pepper to taste, and stir until shrimp start to turn pink, but are not fully cooked.
5. Add oregano and spinach, cook until wilted.
6. Return cooked pasta to the pot, add remaining butter, parmesan, and parsley. Stir until well mixed and the butter is melted.
7. When the shrimp are cooked, add lemon juice, mix once more, then serve while hot.
8. Enjoy!
', 3, 2);
INSERT INTO Ingredient (name) VALUES('Linguine'),('Olive Oil'),('Unsalted Butter'),('Garlic Cloves'),('Red Pepper Flaked')
,('Large Shrimp'),('Oregano'),('Baby Spinach'),('Lemon Juice');

-- Ingridients for the Pasta recipe 
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount) 
VALUES (3, 13,6, 8);
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount) 
VALUES (3, 14,3, 2);
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount) 
VALUES (3, 15,NULL, 1);
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount) 
VALUES (3, 16,NULL, 4);
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount) 
VALUES (3, 17,2, 1);
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount) 
VALUES (3, 18,NULL, 4); 
-- ADD lb variation
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount) 
VALUES (3, 19,2, 1);
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount) 
VALUES (3, 20,1, 4);
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount) 
VALUES (3, 21,3, 4);









