/***** Script for SelectTopNRows command from SSMS *****/
SELECT 
   c.customerkey as CustomerKey,
   --      ,[GeographyKey]
   --      ,[CustomerAlternateKey]
   --      ,[Title]
   c.firstname as [First Name],
   --      ,[MiddleName]
   c.lastname as [Last Name],
   c.firstname + ' ' + lastname as [Full Name],
   --Combined First and Last name
   --      ,[NameStyle]
   --      ,[BirthDate]
   --      ,[MaritalStatus]
   --      ,[Suffix]
   CASE c.gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender,
   --      ,[EmailAddress]
   --      ,[YearlyIncome]
   --      ,[TotalChildren]
   --      ,[NumberChildrenAtHome]
   --      ,[EnglishEducation]
   --      ,[SpanishEducation]
   --      ,[FrenchEducation]
   --      ,[EnglishOccupation]
   --      ,[SpanishOccupation]
   --      ,[FrenchOccupation]
   --      ,[HouseOwnerFlag]
   --      ,[NumberCarsOwned]
   --      ,[AddressLine1]
   --      ,[AddressLine2]
   --      ,[Phone]
   c.datefirstpurchase as [DateFirstPurchase],
   --      ,[CommuteDistance]
   g.city as [Customer City] -- Joined in Customer city from Geography Table
  FROM 
     dbo.dimcustomer as c 
	 LEFT JOIN dbo.dimgeography as g on g.geographykey = c.geographykey
  ORDER BY 
     CustomerKey ASC -- Ordered List By CustomerKEy
