-- Creating schemas:
CREATE SCHEMA	Pantry
GO
CREATE SCHEMA	Dietary
GO
CREATE SCHEMA	RecipeBox
GO
CREATE SCHEMA	Admin			-- for intermediary tables (currently empty)
GO


-- 1. Pantry:
CREATE TABLE	Pantry.Cupboard
		(IngredientID int
			IDENTITY (0001, 1)
			PRIMARY KEY
		, IngredientName varchar(30)
			NOT NULL
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
;
/*
Re-Seeding the IngredientID column. The original idea was to start the seed
with 3 leading 0 and increment from there. Turns out this doesn't work unless
padding with these 0's in future SELECT statements:
*/

DBCC CHECKIDENT ('Pantry.Cupboard', RESEED, 1000);


-----------------------------


-- 2. Dietaty:
CREATE TABLE	Dietary.DietaryRequirement
		(
		DietaryRequirementID int
			IDENTITY (1000, 1)
			PRIMARY KEY
		, DietaryRequirement varchar(20)
		, DietaryRequirementNote varchar(255)
			DEFAULT '-'
		)
;
---- Here I forgot to assign below table to a schema:
CREATE TABLE	NutritionalInfo
		(
		DietaryRequirementID int	-- FK
			NOT NULL
		, IngredientID int			-- FK
			NOT NULL
		, Energy decimal(5,2)
			DEFAULT 0.00
		, Fat decimal (5,2)
			DEFAULT 0.00
		, Saturates decimal(5,2)
			DEFAULT 0.00
		, Carbohydrates decimal(5,2)
			DEFAULT 0.00
		, Sugar decimal(5,2)
			DEFAULT 0.00
		, Protein decimal(5,2)
			DEFAULT 0.00
		, Salt decimal(5,2)
			DEFAULT 0.00
		, PortionUnit varchar(15)
		)
;
---- Swapping the table over to its rightful schema:
ALTER SCHEMA Dietary
	TRANSFER dbo.NutritionalInfo
;
			
-----------------------------

-- 3. RecipeBox:

CREATE TABLE	RecipeBox.Recipe
		(
		RecipeID int
			IDENTITY (1000, 1)
			PRIMARY KEY
		, RecipeName varchar(20)
			NOT NULL
		, RecipeType varchar(15)
		, ProcessID int					-- FK
			NOT NULL
		, RecipeRating tinyint
		, RecipePortioning varchar(25)
		, RecipeNote varchar(255)
		)
;

CREATE TABLE	RecipeBox.RecipeVariant
		(
		ReferencingRecipeID int			-- FK
			NOT NULL
		, RecipeVariant int				-- FK
			NOT NULL
		)
;

CREATE TABLE	RecipeBox.RecipeDetail
		(
		RecipeID int					-- FK
			NOT NULL
		, IngredientID int				-- FK
			NOT NULL
		, IngredientAmount varchar(20)
			NOT NULL
		, IngredientSubstitute int		-- FK
			NOT NULL
		, SubstituteAmount decimal(5,2)
			DEFAULT 0.00
			NOT NULL
		)
;

CREATE TABLE	RecipeBox.CookingProcess
		(
		CookingProcessID int
			IDENTITY (1000, 1)
			PRIMARY KEY
		, RecipeID int					-- FK
			NOT NULL
		, PrepareTime smallint
		, CookingTime smallint
		, CookingTemperature smallint
		, CookingProcessNote varchar(255)
			DEFAULT ' '
		)

CREATE TABLE	RecipeBox.CookingProcessDetail
		(
		CookingProcessID int
			NOT NULL
		, CookingProcessStepDesc varchar(255)
			NOT NULL
		)
;



-----------------------------

-- Foreign Keys
/*
Naming convention used:
	FKPrefix_DestinationTable_OriginTable
*/

ALTER TABLE		Dietary.NutritionalInfo
ADD CONSTRAINT	FK_DietaryRequirement_NutritionalInfo1
				FOREIGN KEY (DietaryRequirementID)
				REFERENCES Dietary.DietaryRequirement (DietaryRequirementID)
				ON UPDATE CASCADE
				ON DELETE CASCADE
;
ALTER TABLE		Dietary.NutritionalInfo
ADD CONSTRAINT	FK_DietaryRequirement_NutritionalInfo2
				FOREIGN KEY (IngredientID)
				REFERENCES Pantry.Cupboard (IngredientID)
				ON UPDATE CASCADE
				ON DELETE CASCADE
;

ALTER TABLE		RecipeBox.Recipe
ADD CONSTRAINT	FK_CookingProcess_Recipe
				FOREIGN KEY	(ProcessID)
				REFERENCES	RecipeBox.CookingProcess (CookingProcessID)
				ON UPDATE CASCADE
				ON DELETE CASCADE
;

ALTER TABLE		RecipeBox.RecipeVariant
ADD CONSTRAINT	FK_Recipe_RecipeVariant1
				FOREIGN KEY	(ReferencingRecipeID)
				REFERENCES	RecipeBox.Recipe (RecipeID)
;

ALTER TABLE		RecipeBox.RecipeVariant
ADD CONSTRAINT	FK_Recipe_RecipeVariant2
				FOREIGN KEY	(RecipeVariant)
				REFERENCES	RecipeBox.Recipe (RecipeID)
;


ALTER TABLE		RecipeBox.RecipeDetail
ADD CONSTRAINT	FK_Recipe_RecipeDetail
				FOREIGN KEY	(RecipeID)
				REFERENCES	RecipeBox.Recipe (RecipeID)
				ON UPDATE CASCADE
				ON DELETE CASCADE
;

ALTER TABLE		RecipeBox.RecipeDetail
ADD CONSTRAINT	FK_Cupboard_RecipeDetail1
				FOREIGN KEY	(IngredientID)
				REFERENCES	Pantry.Cupboard (IngredientID)
				ON UPDATE CASCADE
				ON DELETE CASCADE
;

ALTER TABLE		RecipeBox.RecipeDetail
ADD CONSTRAINT	FK_Cupboard_RecipeDetail2
				FOREIGN KEY	(IngredientSubstitute)
				REFERENCES	Pantry.Cupboard (IngredientID)
;

ALTER TABLE		RecipeBox.CookingProcess
ADD CONSTRAINT	FK_Recipe_CookingProcess
				FOREIGN KEY	(RecipeID)
				REFERENCES	RecipeBox.Recipe (RecipeID)
				ON UPDATE CASCADE
				ON DELETE CASCADE
;

ALTER TABLE		RecipeBox.CookingProcessDetail
ADD CONSTRAINT	FK_CookingProcess_CookingProcessDetail
				FOREIGN KEY (CookingProcessID)
				REFERENCES RecipeBox.CookingProcess (CookingProcessID)
				ON UPDATE CASCADE
				ON DELETE CASCADE
;
GO
-----------------------------
-- Insert Data Into Child Tables -> Triggers
/*
Naming convention used:
	TG_OriginSchemaOriginTable

CREATE TRIGGER yourNewTrigger ON yourSourcetable
FOR INSERT
AS

INSERT INTO yourDestinationTable
        (col1, col2, col3)
    SELECT
        'a'  , default , null
    FROM
		inserted
*/

/*
CREATE TRIGGER TG_PantryCupboard ON Pantry.Cupboard
FOR INSERT
AS

INSERT INTO Dietary.NutritionalInfo
        (IngredientID)
    SELECT
        IngredientID
    FROM
		inserted
INSERT INTO Dientary.DietaryRequirement
		(DietaryRequirementID)
	SELECT
		(IngredientID)
	FROM
		inserted
INSERT INTO RecipeBox.RecipeDetail
		(IngredientID)
	SELECT
		(IngredientID)
	FROM
		inserted
INSERT INTO RecipeBox.RecipeDetail
		(IngredientSubstitute)
	SELECT
		(IngredientID)
	FROM
		inserted
GO

CREATE TRIGGER TG_RecipeBoxRecipe ON RecipeBox.Recipe
FOR INSERT
AS

INSERT INTO RecipeBox.RecipeDetail
        (RecipeID)
    SELECT
        RecipeID
    FROM
		inserted
INSERT INTO RecipeBox.RecipeVariant
        (ReferencingRecipeID)
    SELECT
        RecipeID
    FROM
		inserted
INSERT INTO RecipeBox.RecipeVariant
        (RecipeVariant)
    SELECT
        RecipeID
    FROM
		inserted


*/

-----------------------------
-- Creating Indexes
/*
Naming convention used:
	IXPrefix_TableName_Column1(_Column2_Column3)
*/