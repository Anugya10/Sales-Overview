  -- Cleansed DIM_Product Table --
  SELECT 
    p.[ProductKey],
    p.[ProductAlternateKey] as ProductItemCode,
    --      ,[ProductSubcategoryKey],
    --      ,[WeightUnitMeasureCode]
    --      ,[SizeUnitMeasureCode]
    p.[EnglishProductName] as [Product Name],
	ps.EnglishProductSubCategoryName as [Sub Category], -- Joined in from Sub Category Table
	pc.EnglishProductCategoryName as [Product Category], -- Joined in from Category Table                                                                                  .
    --      ,[SpanishProductName]
    --      ,[FrenchProductName]
    --      ,[StandardCost]
    --      ,[FinishedGoodsFlag]
    p.[Color] as [Product Color],
    --      ,[SafetyStockLevel]
    --      ,[ReorderPoint]
    --      ,[ListPrice]
    p.[Size] as [Product Size],
    --      ,[SizeRange]
    --      ,[Weight]
    --      ,[DaysToManufacture]
    p.[ProductLine] as [Product Line],
    --      ,[DealerPrice]
    --      ,[Class]
    --      ,[Style]
    p.[ModelName] as [Product Model Name],
    --      ,[LargePhoto]
    p.[EnglishDescription] as [Product Description],
    --      ,[FrenchDescription]
    --      ,[ChineseDescription]
    --      ,[ArabicDescription]
    --      ,[HebrewDescription]
    --      ,[ThaiDescription]
    --      ,[GermanDescription]
    --      ,[JapaneseDescription]
    --      ,[TurkishDescription]
    --      ,[StartDate],
    --      ,[EndDate],
    ISNULl (p.status, 'Outdated') as [Product Status]
  FROM 
  [dbo].[DimProduct] as p
  LEFT JOIN dbo.DimProductSubCategory as ps on ps.ProductSubcategoryKey = p.ProductSubCategoryKey
  LEFT JOIN dbo.DimProductCategory as pc on ps.ProductCategoryKey = pc.ProductCategoryKey
  ORDER BY 
  p.ProductKey asc
