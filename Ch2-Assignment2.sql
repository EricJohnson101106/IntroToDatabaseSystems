/********************************/
/*	Name:		Eric Johnson	*/
/*	Class:		CS3410			*/
/*	Term:		Spring 2018		*/
/*	Assign#:	2 Part 1		*/
/********************************/

/* 2.17 */
	SELECT [SKU]
	,[SKU_Description]
	FROM [INVENTORY];
	
/* 2.18 */
	SELECT [SKU_Description]
	,[SKU]
	FROM [INVENTORY];

/* 2.19 */
	SELECT [WarehouseID]	
	FROM [INVENTORY];

/* 2.20 */
	SELECT distinct [WarehouseID]
	FROM [INVENTORY];

/* 2.21 */
	SELECT [WarehouseID]
      ,[SKU]
      ,[SKU_Description]
      ,[QuantityOnHand]
      ,[QuantityOnOrder]
	FROM [INVENTORY];

/* 2.22 */
	SELECT *
	FROM [INVENTORY];

/* 2.23 */
	SELECT *
	FROM [INVENTORY]
	WHERE [QuantityOnHand]>0;

/* 2.24 */
	SELECT [SKU]
		,[SKU_Description]
	FROM [INVENTORY]
	WHERE [QuantityOnHand]=0;

/* 2.25 */
	SELECT [SKU]
		,[SKU_Description]
		,[WarehouseID]
	FROM [INVENTORY]
	WHERE [QuantityOnHand]=0
	ORDER BY [WarehouseID];

/* 2.26 */
	SELECT [SKU]
		,[SKU_Description]
		,[WarehouseID]
	FROM [INVENTORY]
	WHERE [QuantityOnHand]>0
	ORDER BY [WarehouseID] DESC
		,[SKU] ASC;

/* 2.27 */
	SELECT [SKU]
		,[SKU_Description]
		,[WarehouseID]
	FROM [INVENTORY]
	WHERE [QuantityOnHand]=0
		AND [QuantityOnOrder]>0
	ORDER BY [WarehouseID] DESC
		,[SKU] ASC;


/********************************/
/*	Name:		Eric Johnson	*/
/*	Class:		CS3410			*/
/*	Term:		Spring 2018		*/
/*	Assign#:	2 Part 2		*/
/********************************/


/* A */
	
	SELECT *
	FROM [CUSTOMER];

	SELECT *
	FROM [ITEM];
	
	SELECT *
	FROM [SALE];
	
	SELECT *
	FROM [SALE_ITEM];

/* B */

	SELECT [LastName]
		,[FirstName]
		,[Phone]
	FROM [CUSTOMER];

/* C */

	SELECT [LastName]
		,[FirstName]
		,[Phone]
	FROM [CUSTOMER]
	WHERE [FirstName] LIKE 'John';

/* D */

	SELECT [LastName]
		,[FirstName]
		,[Phone]
	FROM [CUSTOMER]
	WHERE [FirstName] LIKE 'D%';

/* E */
	
	SELECT [LastName]
		,[FirstName]
		,[Phone]
	FROM [CUSTOMER]
	WHERE [LastName] LIKE '%ne%';

/* F */

	SELECT [LastName]
		,[FirstName]
		,[Phone]
	FROM [CUSTOMER]
	WHERE [Phone] LIKE '%56_';

/* G */

	SELECT max([Total]) AS [Max]
		,min([Total]) AS [Min]
	FROM [SALE];

/* H */
	
	SELECT avg(Total) AS [Average]
	FROM [SALE];

/* I */
	
	SELECT count(*)
	FROM [CUSTOMER];

/* J */

	SELECT [LastName]
		,[FirstName]
	FROM [CUSTOMER]
	ORDER BY [LastName]
		,[FirstName] ASC;

/* K */
	
	SELECT count(*) AS [Count]
		,[LastName]
		,[FirstName]
	FROM [CUSTOMER]
	GROUP BY [LastName]
		,[FirstName];