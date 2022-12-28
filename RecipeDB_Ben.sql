-- Script to Create Recipe Database 
-- Creates all necessary tables	

-- CREATE DATABASE RecipeDBBen;

CREATE TABLE Ingredient (id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
	name VARCHAR(50));
	
CREATE TABLE Measure (id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
	name VARCHAR(30));
    
CREATE TABLE Categories (id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
	name VARCHAR(30));

CREATE TABLE Nutrition (id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
	carbohydrates VARCHAR(10), 
	protein VARCHAR(10), 
	fat VARCHAR(10),
    calories INT(4));
    
CREATE TABLE Users (id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	username VARCHAR(20),
    password VARCHAR(20));
    
    
CREATE TABLE Recipe (id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
	name VARCHAR(25), 
	description VARCHAR(50), 
    prep_time VARCHAR(20),
    cook_time VARCHAR(20),
    servings INT(2),
    instructions VARCHAR(500),
    categories_id INT,
    user_id INT,
    CONSTRAINT fk_categories FOREIGN KEY(categories_id) REFERENCES Categories(id),
    CONSTRAINT fk_users FOREIGN KEY(user_id) REFERENCES Users(id)); 
	
CREATE TABLE RecipeIngredient (recipe_id INT NOT NULL, 
	ingredient_id INT NOT NULL, 
	measure_id INT, 
	amount INT, 
	CONSTRAINT fk_recipe FOREIGN KEY(recipe_id) REFERENCES Recipe(id), 
	CONSTRAINT fk_ingredient FOREIGN KEY(ingredient_id) REFERENCES Ingredient(id), 
	CONSTRAINT fk_measure FOREIGN KEY(measure_id) REFERENCES Measure(id));



-- Inserts Designated Atributes to the Designated tables
INSERT INTO Measure (name) VALUES('CUP'), ('TEASPOON'), ('TABLESPOON'),('TEASPOONS'),('PINCH'),('Oz');

INSERT INTO Categories (name) VALUES('Breakfast'),('Lunch'),('Dinner'),('Quick Meals');

INSERT INTO Users (username, password) VALUES ('user', '123'), ('user2','4321'); 


-- Starts off First recipe 
INSERT INTO Recipe (name, description, prep_time, cook_time, servings, instructions, categories_id, user_id) 
VALUES('Tuna Patties', 'Simple Delicious Tuna Patties.','10 Min.','8-12 Min','2', 
'Step 1: Beat eggs and lemon juice in a bowl; stir in bread crumbs and Parmesan cheese to make a paste. Fold in tuna and onion until well combined; season with black pepper.,
Step2: Use your hands to shape tuna mixture into 8 (1-inch-thick) patties.
Step3: Heat vegetable oil in a skillet over medium heat. Fry patties in the hot oil until golden brown, about 5 minutes per side.
', 3,1);

INSERT INTO Ingredient (name) VALUES('egg'), ('salt'), ('lemon juice'),('Bread Crumbs'),('Grated Parmesan cheese'),
('Canned Tuna'),('Diced Onion'),('Vegetable Oil');

-- Igredients for Tuna Patties
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount) 
VALUES (1, 1, NULL, 2); 
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount) 
VALUES (1, 2, 4, NULL);
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount) 
VALUES (1, 3, 3, 2);
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount) 
VALUES (1, 4, 3, 10);
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount) 
VALUES (1, 5, 3, 3);
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount) 
VALUES (1, 6, NULL, 3);
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount) 
VALUES (1, 7, 3, 3);
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount) 
VALUES (1, 8, 3, 3);








