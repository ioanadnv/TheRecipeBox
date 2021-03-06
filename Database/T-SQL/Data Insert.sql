USE [TheRecipeBox]
GO
;

-----------------------------
INSERT INTO Pantry.Cupboard
	(
		IngredientName,
		IngredientCode,
		IngredientType,
		QtyUnit,
		ShelfLife,
		IngredientNote
	)
VALUES
		('Chicken breast fillet', 'PT', 'Poultry', 'grams', '2 weeks', '-'),
		('Pitta', 'BK', 'Bakery', 'piece', '2 weeks', '-'),
		('Cucumber', 'VG', 'Vegetables', 'part', '1 week', '-'),
		('Garlic clove', 'HB', 'Herbs', 'clove', '3 weeks', '-'),
		('Tomato', 'FT', 'Fruit', 'piece', '1 week', '-'),
		('Greek-style yoghurt', 'DR', 'Dairy', 'grams', '4 weeks', '-'),
		('Gem lettuce', 'LG', 'Leafy Green', 'piece', '1 week', '-'),
		('Lemon', 'FT', 'Fruit', 'piece', '1 week', '-'),
		('Potato', 'VG', 'Vegetables', 'grams', '2 weeks', '-'),
		('Dried oregano', 'HB', 'Herbs', '(tea/table)spoon', '24 weeks', '-'),
		('Beef mince', 'BF', 'Beef', 'grams', '1 week', '-'),
		('Onion', 'HB', 'Herbs', '(tea/table)spoon', '24 weeks', '-'),
		('Cheese', 'DR', 'Dairy', 'grams', '1 week', '-'),
		('Pickles', 'PL', 'Pickles', 'grams', '3 weeks', '-'),
		('Mayonnaise', 'AT', 'Artisan', 'grams', '2 weeks', '-'),
		('Pickle relish', 'SC', 'Sauces', 'grams', '2 weeks', '-'),
		('English mustard', 'SC', 'Sauces', 'grams', '2 weeks', '-'),
		('White wine vinegar', 'VN', 'Vinegar', 'grams', '12 weeks', '-'),
		('White wine vinegar', 'VN', 'Vinegar', 'millilitres', '12 weeks', '-'),
		('White wine vinegar', 'VN', 'Vinegar', '(tea/table)spoon', '12 weeks', '-'),
		('Paprika', 'SP', 'Spice', '(tea/table)spoon', '24 weeks', '-'),
		('Onion powder', 'SP', 'Spice', '(tea/table)spoon', '24 weeks', '-'),
		('Garlic powder', 'SP', 'Spice', '(tea/table)spoon', '24 weeks', '-'),
		('Egg', 'AP', 'Animal Product', 'piece', '2 weeks', '-'),
		('Butter', 'DR', 'Dairy', 'grams', '2 weeks', '-'),
		('Lemon juice', 'JC', 'Juice', 'grams', '2 weeks', '-'),
		('Lemon juice', 'JC', 'Juice', 'millilitres', '2 weeks', '-'),
		('Lemon juice', 'JC', 'Juice', 'cup', '2 weeks', '-'),
		('Lemon juice', 'JC', 'Juice', '(tea/table)spoon', '2 weeks', '-'),
		('Breadcrumbs', 'BK', 'Bakery', 'grams', '4 weeks', '-'),
		('Breadcrumbs', 'BK', 'Bakery', 'cup', '4 weeks', '-'),
		('Carrot', 'VG', 'Vegetables', 'piece', '2 weeks', '-'),
		('Vegetable stock cube', 'SS', 'Seasoning', 'cube', '24 weeks', '-'),
		('Spring onion', 'HB', 'Herbs', 'piece', '24 weeks', '-'),
		('Parsley', 'HB', 'Herbs', '(tea/table)spoon', '24 weeks', '-'),
		('Coriander', 'HB', 'Herbs', '(tea/table)spoon', '24 weeks', '-'),
		('Rice vinegar', 'VN', 'Vinegar', '(tea/table)spoon', '24 weeks', '-'),
		('Rice vinegar', 'VN', 'Vinegar', 'grams', '24 weeks', '-'),
		('Rice vinegar', 'VN', 'Vinegar', 'millilitres', '24 weeks', '-'),
		('Curry powder', 'SP', 'Spice', '(tea/table)spoon', '24 weeks', '-'),
		('Pork loin steaks', 'PK', 'Pork', 'piece', '1 week', '-'),
		('Dijon mustard', 'SC', 'Sauces', 'grams', '2 weeks', '-'),
		('Dijon mustard', 'SC', 'Sauces', 'tablespoon', '2 weeks', '-'),
		('Worcester sauce', 'SC', 'Sauces', 'grams', '4 weeks', 'Also known as Henderson''s Relish.'),
		('Worcester sauce', 'SC', 'Sauces', 'millilitres', '4 weeks', '-'),
		('Worcester sauce', 'SC', 'Sauces', '(tea/table)spoon', '4 weeks', '-'),
		('Redcurrant jelly', 'AT', 'Artisan', 'grams', '2 weeks', '-'),
		('Dried Cranberries', 'DF', 'Dried Fruit', 'grams', '4 weeks', '-'),
		('Dill', 'HB', 'Herbs', '(tea/table)spoon', '24 weeks', '-'),
		('Cauliflower', 'VG', 'Vegetables', 'grams', '1 week', '-'),
		('Trimmed green beans', 'VG', 'Vegetables', 'tin', '8 weeks', '-'),
		('Pork mince', 'PK', 'Pork', 'grams', '1 week', '-'),
		('Chicken stock cube', 'SS', 'Seasoning', 'cube', '24 weeks', '-'),
		('Cherry tomato', 'FT', 'Fruit', 'piece', '1 week', '-'),
		('Italian hard cheese', 'DR', 'Dairy', 'grams', '1 week', '-'),
		('Italian hard cheese', 'DR', 'Dairy', 'cup', '1 week', '-'),
		('Chorizo', 'MP', 'Meat Product', 'grams', '2 weeks', '-'),
		('Thyme', 'HB', 'Herbs', '(tea/table)spoon', '24 weeks', '-'),
		('Arborio rice', 'RC', 'Rice', 'grams', '4 weeks', '-'),
		('Arborio rice', 'RC', 'Rice', 'cup', '4 weeks', '-'),
		('Bacon', 'PK', 'Pork', 'rashers', '1 week', 'The maple kind?'),
		('Black olives', 'FT', 'Fruit', 'grams', '4 weeks', 'Scientifically speaking, olives count as fruit - who would have known?'),
		('Garlic paste', 'SC', 'Sauces', 'grams', '4 weeks', '-'),
		('Garlic paste', 'SC', 'Sauces', '(tea/table)spoon', '4 weeks', '-'),
		('Tomato paste', 'SC', 'Sauces', 'grams', '4 weeks', '-'),
		('Tomato paste', 'SC', 'Sauces', '(tea/table)spoon', '4 weeks', '-'),
		('Black olives', 'FT', 'Fruit', 'cup', '4 weeks', '-'),
		('Baby leaf spinach', 'VG', 'Vegetables', 'gram', '1 week', '-'),
		('Natural yoghurt', 'DR', 'Dairy', '', '', '-'),
		('Pineapple', 'FT', 'Fruit', 'tin', '4 weeks', '-'),
		('Basmati rice', 'RC', 'Rice', 'grams', '4 weeks', '-'),
		('Red pepper', 'VG', 'Vegetables', 'piece', '1 week', '-'),
		('Chilli flakes', 'SP', 'Spice', '(tea/table)spoon', '24 weeks', '-'),
		('Cornflour', 'LA', 'Leavening Agent', '(tea/table)spoon', '12 weeks', 'Same as cornstarch'),
		('Soy sauce', 'SC', 'Sauces', '(tea/table)spoon', '12 weeks', '-'),
		('Cashew nuts', 'NT', 'Nuts', 'grams', '2 weeks', '-'),
		('Parsnip', 'VG', 'Vegetables', 'piece', '1 week', '-'),
		('Wholegrain mustard', 'SC', 'Sauces', '(tea/table)spoon', '2 weeks', '-'),
		('French mustard', 'SC', 'Sauces', '(tea/table)spoon', '2 weeks', '-'),
		('Mature cheddar', 'DR', 'Dairy', 'grams', '1 week', '-'),
		('Cavolo nero', 'VG', 'Vegetables', 'grams', '1 week', 'Some form of aquatic plant. Tastes horrendous.'),
		('Cinnamon', 'SP', 'Spice', '(tea/table)spoon', '24 weeks', '-'),
		('Red kidney beans', 'VG', 'Vegetables', 'tin', '4 weeks', '-'),
		('Medium tomato', 'FT', 'Fruit', 'piece', '1 week', '-'),
		('Cumberland sausage', 'MP', 'Meat Product', 'piece', '1 week', '-'),
		('Sugar', 'SS', 'Seasoning', '(tea/table)spoon', '24 weeks', '-'),
		('Baking powder', 'LA', 'Leavening Agent', '(tea/table)spoon', '12 weeks', '-'),
		('Baking soda', 'LA', 'Leavening Agent', '(tea/table)spoon', '12 weeks', '-'),
		('White sugar', 'SS', 'Seasoning', 'grams', '24 weeks', '-'),
		('White sugar', 'SS', 'Seasoning', 'cup', '24 weeks', '-'),
		('White sugar', 'SS', 'Seasoning', '(tea/table)spoon', '24 weeks', '-'),
		('Brown sugar', 'SS', 'Seasoning', 'grams', '24 weeks', '-'),
		('Brown sugar', 'SS', 'Seasoning', 'cup', '24 weeks', '-'),
		('Brown sugar', 'SS', 'Seasoning', '(tea/table)spoon', '24 weeks', '-'),
		('Sugar cube', 'SS', 'Seasoning', 'cube', '24 weeks', '-'),
		('Sweetener', 'SW', 'Sweetener', '(tea/table)spoon', '24 weeks', '-'),
		('Sweetener', 'SW', 'Sweetener', 'grams', '24 weeks', '-'),
		('Demerara sugar', 'SS', 'Seasoning', 'grams', '24 weeks', 'Brown sugar'),
		('Blueberries', 'FT', 'Fruit', 'grams', '1 week', '-'),
		('Blueberries', 'FT', 'Fruit', 'cup', '1 week', '-'),
		('Summer fruit', 'FT', 'Fruit', 'grams', '1 week', 'Typically a mix of small berries, cherries and blue and blackberries'),
		('Demerara sugar', 'SS', 'Seasoning', 'cup', '24 weeks', '-'),
		('Demerara sugar', 'SS', 'Seasoning', '(tea/table)spoon', '24 weeks', '-'),
		('Olive oil', 'OL', 'Oil', '(tea/table)spoon', '24 weeks', '-'),
		('Vegetable Oil', 'OL', 'Oil', '(tea/table)spoon', '24 weeks', '-'),
		('Sunflower Oil', 'OL', 'Oil', '(tea/table)spoon', '24 weeks', '-'),
		('Rapeseed Oil', 'OL', 'Oil', '(tea/table)spoon', '24 weeks', '-'),
		('Basil', 'HB', 'Herbs', '(tea/table)spoon', '24 weeks', '-'),
		('Bay leaf', 'HB', 'Herbs', '(tea/table)spoon', '24 weeks', '-'),
		('Cilantro', 'HB', 'Herbs', '(tea/table)spoon', '24 weeks', '-'),
		('Mace', 'HB', 'Herbs', '(tea/table)spoon', '24 weeks', '-'),
		('Marjoram', 'HB', 'Herbs', '(tea/table)spoon', '24 weeks', '-'),
		('Mint', 'HB', 'Herbs', '(tea/table)spoon', '24 weeks', '-'),
		('Rosemary', 'HB', 'Herbs', '(tea/table)spoon', '24 weeks', '-'),
		('Sage', 'HB', 'Herbs', '(tea/table)spoon', '24 weeks', '-'),
		('Saffron', 'HB', 'Herbs', '(tea/table)spoon', '24 weeks', '-'),
		('Tarragon', 'HB', 'Herbs', '(tea/table)spoon', '24 weeks', '-'),
		('Cumin', 'HB', 'Herbs', '(tea/table)spoon', '24 weeks', '-'),
		('Dry mustard powder', 'SP', 'Spice', '(tea/table)spoon', '24 weeks', '-'),
		('Summer fruit', 'FT', 'Fruit', 'cup', '1 week', '-'),
		('Green pepper', 'VG', 'Vegetables', 'piece', '1 week', '-'),
		('Allspice', 'SP', 'Spice', '(tea/table)spoon', '24 weeks', '-'),
		('Cloves', 'HB', 'Herbs', '(tea/table)spoon', '24 weeks', '-'),
		('Fennel', 'HB', 'Herbs', '(tea/table)spoon', '24 weeks', '-'),
		('Ginger', 'HB', 'Herbs', 'piece', '24 weeks', '-'),
		('Oregano', 'HB', 'Herbs', '(tea/table)spoon', '24 weeks', '-'),
		('Digestive biscuits', 'CF', 'Confectionery', 'grams', '4 weeks', '-'),
		('Milk', 'AP', 'Animal Product', 'millilitres', '2 weeks', '-'),
		('Cornstarch', 'LA', 'Leavening Agent', 'teaspoon', '12 weeks', '-'),
		('Basmati rice', 'RC', 'Rice', 'cup', '4 weeks', '-'),
		('Burger relish - MD', 'SC', 'Sauces', '(tea/table)spoon', '1 week', 'Home-made version of McDonald''s burger relish'),
		('Chicken breast fillet', 'PT', 'Poultry', 'piece', '2 weeks', '-'),
		('Potato', 'VG', 'Vegetables', 'piece', '2 weeks', '-'),
		('Parmesan', 'DR', 'Dairy', 'grams', '1 week', '-'),
		('Parmesan', 'DR', 'Dairy', 'cup', '1 week', '-'),
		('Italian seasoning', 'HB', 'Herbs', '(tea/table)spoon', '24 weeks', '-'),
		('Unsalted butter', 'DR', 'Dairy', 'grams', '4 weeks', '-'),
		('Unsalted butter', 'DR', 'Dairy', 'cup', '4 weeks', '-'),
		('Unsalted butter', 'DR', 'Dairy', '(tea/table)spoon', '4 weeks', '-'),
		('Riced cauliflower', 'VG', 'Vegetables', 'grams', '1 week', '-'),
		('Riced cauliflower', 'VG', 'Vegetables', 'cup', '1 week', '-'),
		('White onion', 'HB', 'Herbs', 'piece', '1 week', '-'),
		('Lemon juice', 'JC', 'Juice', 'piece', '< 1 week', '-'),
		('Parsley', 'HB', 'Herbs', 'cup', '1 week', '-'),
		('Egg yolk', 'AP', 'Animal Product', 'piece', '< 1 week', '-'),
		('Sugar', 'SS', 'Seasoning', 'cup', '24 weeks', '-'),
		('All-purpose flour', 'FL', 'Flour', 'grams', '24 weeks', '-'),
		('All-purpose flour', 'FL', 'Flour', 'cup', '24 weeks', '-'),
		('Butter', 'DR', 'Dairy', 'grams', '4 weeks', '-'),
		('Butter', 'DR', 'Dairy', 'cup', '4 weeks', '-'),
		('Butter', 'DR', 'Dairy', '(tea/table)spoon', '4 weeks', '-'),
		('Salt', 'SS', 'Seasoning', 'pinch', '24 weeks', '-'),
		('Cauliflower mash', 'VG', 'Vegetables', 'grams', '3 days', '-'),
		('Cauliflower mash', 'VG', 'Vegetables', 'cup', '3 days', '-'),
		('Cauliflower mash', 'VG', 'Vegetables', 'portion', '3 days', '-'),
		('Cauliflower rice', 'VG', 'Vegetables', 'grams', '1 week', '-'),
		('Cauliflower rice', 'VG', 'Vegetables', 'cup', '1 week', '-'),
		('Cauliflower rice', 'VG', 'Vegetables', 'portion', '1 week', '-'),
		('Salt', 'SS', 'Seasoning', 'grams', '24 weeks', '-'),
		('Turkey mince', 'PT', 'Poultry', 'grams', '2 weeks', '-'),
		('Dried thyme', 'HB', 'Herbs', '(tea/table)spoon', '24 weeks', '-'),
		('Lazy garlic', 'HB', 'Herbs', '(tea/table)spoon', '4 weeks', '-'),
		('Almond flour', 'VG', 'Vegetables', 'grams', '4 weeks', '-'),
		('Almond flour', 'VG', 'Vegetables', 'cup', '4 weeks', '-'),
		('Panko breadcrumbs', 'BK', 'Bakery', 'grams', '4 weeks', '-'),
		('Panko breadcrumbs', 'BK', 'Bakery', 'cup', '4 weeks', '-'),
		('Dried dill', 'HB', 'Herbs', 'grams', '24 weeks', '-'),
		('Dried dill', 'HB', 'Herbs', '(tea/table)spoon', '24 weeks', '-'),
		('Green beans', 'VG', 'Vegetables', 'grams', '1 week', '-'),
		('Sour cream', 'DR', 'Dairy', 'cup', '1 week', '-'),
		('Sour cream', 'DR', 'Dairy', 'grams', '1 week', '-'),
		('Sour cream', 'DR', 'Dairy', '(tea/table)spoon', '1 week', '-'),
		('Dry coriander', 'HB', 'Herbs', 'grams', '24 weeks', '-'),
		('Dry coriander', 'HB', 'Herbs', '(tea/table)spoon', '24 weeks', '-'),
		('Dry parsley', 'HB', 'Herbs', 'grams', '24 weeks', '-'),
		('Dry parsley', 'HB', 'Herbs', '(tea/table)spoon', '24 weeks', '-'),
		('All-purpose flour', 'FL', 'Flour', '(tea/table)spoon', '4 weeks', '-'),
		('Salt', 'SS', 'Seasoning', '(tea/table)spoon', '24 weeks', '-'),
		('Granulated sugar', 'SS', 'Seasoning', 'cup', '24 weeks', '-'),
		('Granulated sugar', 'SS', 'Seasoning', 'grams', '24 weeks', '-'),
		('Granulated sugar', 'SS', 'Seasoning', '(tea/table)spoon', '24 weeks', '-'),
		('Vanilla extract', 'FV', 'Flavouring', '(tea/table)spoon', '12 weeks', '-'),
		('Chocolate chips', 'CF', 'Confectionery', 'grams', '2 weeks', '-'),
		('Chocolate chips', 'CF', 'Confectionery', 'cup', '2 weeks', '-'),
		('Powdered sugar', 'SS', 'Seasoning', 'cup', '24 weeks', '-'),
		('Powdered sugar', 'SS', 'Seasoning', 'grams', '24 weeks', '-'),
		('Powdered sugar', 'SS', 'Seasoning', '(tea/table)spoon', '24 weeks', '-'),
		('Flour', 'FL', 'Flour', 'grams', '4 weeks', '-'),
		('Flour', 'FL', 'Flour', 'cup', '4 weeks', '-'),
		('Flour', 'FL', 'Flour', '(tea/table)spoon', '4 weeks', '-'),
		('Plain cocoa powder', 'OT', 'Other', '(tea/table)spoon', '4 weeks', '-'),
		('Plain cocoa powder', 'OT', 'Other', 'cup', '4 weeks', '-'),
		('Plain cocoa powder', 'OT', 'Other', 'grams', '4 weeks', '-')
;

-----------------------------

INSERT INTO Dietary.DietaryRequirement
	(
		DietaryRequirement,
		DietaryRequirementNote
	)
VALUES
	('Calorie count', 'Calorie-restricted diet'),
	('Low carbohydrates - strict', 'Diabetic and ketogenic-friendly. This dietary requirement focuses on low carbohydrate intake, balanced by increased fat intake. In case of the ketogenic diet, carbohydrate intake per day is decreased to 20g.'),
	('Paleo', 'Diet based on the types of food presumed to have been eaten by early humans. Mainly consists of meat, fish, vegetables and fruit. It does not include dairy or cereal products as well as processed food.'),
	('Vegetarian', 'A focus on plant-based food. Vegetarians typically do not eat meat (fish included) or other animal products.'),
	('Vegan', 'A focus on a way of life that excludes the eating and usage of animal products.'),
	('Low carbohydrates', 'Diabetic and ketogenic-friendly. This dietary requirement focuses on low carbohydrate intake, balanced by increased fat intake. In case of the ketogenic diet, carbohydrate intake per day sits at about 50-60g.')
;

-----------------------------
--Next table to insert into was going to be RecipeBox.Recipe, however I ran into an error generated by a referential integrity constraint. Decided to drop the constraints and re-add.
INSERT INTO RecipeBox.Recipe
	(
		RecipeName,
		RecipeType,
		ProcessID,
		RecipeRating,
		RecipePortioning,
		RecipeNote
	)
VALUES
	('Greek Chicken Gyros, Chips & Salad', 'Greek Cuisine, Dinner', 1, 4.5, '2', 'Pronounced yee-ros. Greek street food. No rotiserie chicken here, but you can replicate it by rolling the chicken breast into a tight roll.'),
	('Pork Katsu Curry', 'Asian Cuisine, Dinner', 2, 4, '2', 'Mild, Japanese-style pork curry.'),
	('Garlic Butter Chicken', 'Dinner', 3, 3, '2', 'Served with mashed potatoes or cauliflower rice'),
	('Cauliflower Rice', 'Dinner Accompanyment', 4, 3, '2', 'Low in carbohydrates'),
	('Lemon Bars', 'Dessert', 5, 3, '10', 'Cornstarch optional - it depends on how the curd sets'),
	('Chorizo & Cherry Tomato Risotto', 'Dinner', 6, 4, '2', '-'),
	('Swedish Meatballs', 'Dinner, Swedish Cuisine', 7, 4.5, '2', '-'),
	('Swedish Meatballs', 'Dinner, Swedish Cuisine', 7, 4.5, '2', '-'),
	('Caf� Style Cookies', 'Dessert', 9, 5, '15', 'Chewy!'),
	('Coffee Cake', 'Dessert', 10, 5, '4', 'Too much of it in one sitting might prove a bit heavy')

;
