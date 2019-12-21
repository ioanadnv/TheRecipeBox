CREATE SCHEMA	Pantry

CREATE TABLE	Pantry.Cupboard
		(IngredientID int
			IDENTITY (0001, 1)
			PRIMARY KEY
		, IngredientCode char(3)
			DEFAULT 'XX'
		, IngredientType varchar(15)
			NOT NULL
			DEFAULT 'Unknown'
		, IngredientBrand varchar (15)
			NOT NULL
			DEFAULT 'None listed'
		, QtyUnit varchar(15)
			NOT NULL
			DEFAULT 'None set'
		, ShelfLife tinyint
		, BrandRating tinyint
		, ValueRating tinyint
		, IngredientNote varchar(255)
			DEFAULT '-'
		)

//
**
//

CREATE SCHEMA	Dietary

CREATE TABLE	Dietary.DietaryRequirement
		(
		DietaryRequirementID int
			IDENTITY (0001, 1)
			PRIMARY KEY
		, DietaryRequirement varchar(20)
		, DietaryRequirementNote varchar(255)
			DEFAULT '-'
		)

-- here I actually made a mistake and forgot to assign below table to a schema
CREATE TABLE	NutritionalInfo
		(
		DietaryRequirementID int
			UNIQUE
			FOREIGN KEY
			REFERENCES Dietary.DietaryRequirement(DietaryRequirementID)
		, IngredientID int
			UNIQUE
			FOREIGN KEY
			REFERENCES Pantry.Cupboard(IngredientID)
		, Fat decimal(3,2)
			DEFAULT 0.00
		, Saturates decimal(3,2)
			DEFAULT 0.00
		, Carbohydrates decimal(3,2)
			DEFAULT 0.00
		, Sugar decimal(3,2)
			DEFAULT 0.00
		, Protein decimal(3,2)
			DEFAULT 0.00
		, Salt decimal(3,2)
			DEFAULT 0.00
		, PortionUnit varchar(15)
		)

-- swapping the table over to its owner schema:
  
ALTER SCHEMA Dietary
	TRANSFER dbo.NutritionalInfo
			
//
**
//

CREATE SCHEMA	RecipeBox

CREATE TABLE	RecipeBox.Recipe
		(
		RecipeID int
			IDENTITY (0001, 1)
			PRIMARY KEY
		, RecipeName varchar(20)
			NOT NULL
		, RecipeType varchar(15)
		, ProcessID int
			FOREIGN KEY
			REFERENCES RecipeBox.CookingProcess(CookingProcessID)
		, RecipeRating tinyint
		, RecipePortioning smallint
		, RecipeNote varchar(255)
			DEFAULT '-'
		)


CREATE TABLE	RecipeBox.RecipeDetail
		(
		RecipeID int
			FOREIGN KEY
			REFERENCES RecipeBox.Recipe(RecipeID)
		, IngredientID int
			FOREIGN KEY
			REFERENCES Pantry.Cupboard(IngredientID)
		, IngredientAmount varchar(20)
			NOT NULL
		, IngredientSubstitute int
			FOREIGN KEY
			REFERENCES Pantry.Cupboard(IngredientID)
		)


CREATE TABLE	RecipeBox.CookingProcess
		(
		CookingProcessID int
			IDENTITY (0001, 1)
			PRIMARY KEY
		, RecipeID int
			FOREIGN KEY
			REFERENCES RecipeBox.Recipe(RecipeID)
		, PrepareTime smallint
		, CookingTime smallint
		, CookingTemperature smallint
		, CookingProcessNote varchar(255)
			DEFAULT '-'
		)

CREATE TABLE	RecipeBox.CookingProcessDetail
		(
		CookingProcessID int
			FOREIGN KEY
			REFERENCES RecipeBox.CookingProcess(CookingProcessID)
		, CookingProcessStepDesc varchar(150)
			NOT NULL
		)

//
**
//

CREATE SCHEMA	Admin	--for intermediary tables -- Currently empty

//
**
//