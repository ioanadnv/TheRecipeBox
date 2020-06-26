--1. Inserting Ingredients
INSERT INTO	Pantry.Cupboard
	(IngredientID, IngredientName, IngredientCode, IngredientType, IngredientBrand, QtyUnit, ShelfLife, BrandRating, ValueRating, IngredientNote)
	VALUES	(
			)
	, VALUES(
			)
;


INSERT INTO	Dietary.DietaryRequirement
	(DietaryRequirementID, DietaryRequirement, DietaryRequirementNote)
	VALUES	(
			)
	, VALUES(
			)
;


INSERT INTO	NutritionalInfo
	(DietaryRequirementID, IngredientID, Energy, Fat, Saturates, Carbohydrates, Sugar, Protein, Salt, PortionUnit)
	VALUES (
			)
	, VALUES(
			)
;

--2. Inserting Recipe

INSERT INTO	RecipeBox.Recipe
	(RecipeID, RecipeName, RecipeType, ProcessID, RecipeRating, RecipePortioning, RecipeNote)
	VALUES	(
			)
	, VALUES(
			)
;


INSERT INTO	RecipeBox.RecipeVariant
	(ReferencingRecipeID, RecipeVariant)
	VALUES	(
			)
	, VALUES(
			)
;


INSERT INTO	RecipeBox.RecipeDetail
	(RecipeID, IngredientID, IngredientAmount, IngredientSubstitute, SubstituteAmount)
	VALUES	(
			)
	, VALUES(
			)
;


INSERT INTO	RecipeBox.CookingProcess
	(CookingProcessID, RecipeID, PrepareTime, CookingTime, CookingTemperature, CookingProcessNote)
	VALUES	(
			)
	, VALUES(
			)
;


INSERT INTO	RecipeBox.CookingProcessDetail
	(CookingProcessID, CookingProcessStepDesc)
	VALUES	(
			)
	, VALUES(
			)
;

