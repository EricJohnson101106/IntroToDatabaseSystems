/********************************************/
/*	Name: 	Eric Johnson					*/
/*	Class:	CS3410							*/
/*	Term:	Spring 2018						*/
/*	Lab#:	2								*/
/********************************************/


/* Projection: 								*/
/*		Identify the SQL that answers each
		of the following questions:			*/
		
			/* What pets are in the database? 	*/
				SELECT *
				FROM PET;
	
			/* What are the names of the pets in the database? 	*/
				SELECT name
				FROM PET;
				
			/* What are the ID numbers and breeds of the pets in the databse? */
				SELECT ID, breed
				FROM PET;
				
			/* What are the names, species, and breeds of the pets in the database? */
				SELECT name, species, breed
				FROM PET;
				
			/* What are the names, genders, and altered status of the pets in the database? */
				SELECT name, gender, altered
				FROM PET;
				
/* Restriction:								*/
/*		Identify the SQL that answers each
		of the following questions:			*/
		
			/* What dogs are in the database?	*/
				SELECT *
				FROM PET
				WHERE species = 'Dog';
				
			/* What cats are in the database?	*/
				SELECT *
				FROM PET
				WHERE species = 'Cat';
				
			/* What rabbits are in the database? */
				SELECT *
				FROM PET
				WHERE species = 'Rabbit';
				
			/* What pets are female? */
				SELECT *
				FROM PET
				WHERE gender = 'Female';
				
			/* What pets are male? */
				SELECT *
				FROM PET
				WHERE gender = 'Male';
				
/* Function:								*/
/*		Identify the SQL that answers each
		of the following questions:			*/
		
			/* What is the total number of scores recieved for the tests taken? */
				SELECT count(score)
				FROM TEST_SCORES;
				
			/* What is the sum of the scores of the tests taken? */
				SELECT sum(score)
				FROM TEST_SCORES;
				
			/* What is the average of the scores of the tests taken? */
				SELECT average(score)
				FROM TEST_SCORES;
				
			/* What is the lowest score of the tests taken? */ 
				SELECT min(score)
				FROM TEST_SCORES;
				
			/* What is the highest score of the tests taken? */
				SELECT max(score)
				FROM TEST_SCORES;
				
/* Group By:								*/
/*		Identify the SQL that answers each
		of the following questions:			*/
			
			/* What is the total number of scores received by each student? */
				SELECT StudentID, count(score)
				FROM TEST_SCORES
				GROUP BY StudentID;
			
			/* What is the total number of scores received for each test? */
				SELECT TestID, count(score)
				FROM TEST_SCORES
				GROUP BY TestID;
				
			/* What is the sum of the scores for each student? */
				SELECT StudentID, sum(score)
				FROM TEST_SCORES
				GROUP BY StudentID;
				
			/* What is the average score for each test? */
				SELECT TestID, average(score)
				FROM TEST_SCORES
				GROUP BY TestID;
			
			/* What is the average score for each student? */
				SELECT StudentID, average(score)
				FROM TEST_SCORES
				GROUP BY StudentID;
				
			/* What is the lowest score received for each test? */
				SELECT TestID, min(score)
				FROM TEST_SCORES
				GROUP BY TestID;
				
			/* What is the lowest score received by each student? */
				SELECT StudentID, min(score)
				FROM TEST_SCORES
				Group BY StudentID;
				
			/* What is the highest score received for each test? */
				SELECT TestID, max(score)
				FROM TEST_SCORES
				GROUP BY TestID;
				
			/* What is the highest score received by each student? */
				SELECT StudentID, max(score)
				FROM TEST_SCORES
				GROUP BY StudentID;
				
/* Having:											*/
/*		Identify the SQL that answers each of the 
		following questions:						*/
		
			/* What is the total number of scores for each test 
			with a total score of at least 200? */
				SELECT TestID, count(score)
				FROM TEST_SCORES
				GROUP BY TestID
				HAVING sum(score)>=200;
				
			/* What is the total number of scores for each student 
			with a total score of at least 200? */
				SELECT StudentID, count(score)
				FROM TEST_SCORES
				GROUP BY StudentID
				HAVING sum(score)>=200;
				
			/* What is the total number of scores for each student 
			who has taken exactly three tests (ie has 3 scores)? */
				SELECT StudentID, count(score)
				FROM TEST_SCORES
				GROUP BY StudentID
				HAVING count(score)=3;
				
			/* What is the total number of scores for each test
			that has been taken by exactly 3 students (ie has 3 scores)? */
				SELECT TestID, count(score)
				FROM TEST_SCORES
				GROUP BY TestID
				HAVING count(score)=3;
				
			/* What is the average score for each test which has received
			exactly three scores (ie taken by 3 students)? */
				SELECT TestID, average(score)
				FROM TEST_SCORES
				GROUP BY TestID
				HAVING count(score)=3;
				
			/* What is the average score for each student with exactly
			three scores (ie taken 3 tests)? */
				SELECT StudentID, average(score)
				FROM TEST_SCORES
				GROUP BY StudentID
				HAVING count(score)=3;
				
			/* What is the lowest score for each test with exactly
			three scores (ie taken by 3 students)? */
				SELECT TestID, min(score)
				FROM TEST_SCORES
				GROUP BY TestID
				HAVING count(score)=3;
				
			/* What is the lowest score for each student with 
			exactly three scores (ie taken 3 tests)? */
				SELECT StudentID, min(score)
				FROM TEST_SCORES
				GROUP BY StudentID
				HAVING count(score)=3;
				
			/* What is the highest score for each test with 
			exactly three scores (ie taken by 3 students)? */
				SELECT TestID, max(score)
				FROM TEST_SCORES
				GROUP BY TestID
				HAVING count(score)=3;
				
			/* What is the highest score for each student with
			exactly three scores (ie taken 3 tests)? */
				SELECT StudentID, max(score)
				FROM TEST_SCORES
				GROUP BY StudentID
				HAVING count(score)=3;
				
/* Distinct:												*/
/*		Identify the SQL that answers each 
		of the following questions 							*/
		
			/* What are the names of all the different pets in the database? */
				SELECT name
				FROM PET;
				
			/* What are the distinct names of the pets in the database? */
				SELECT distinct name
				FROM PET;
				
			/* What are the species of all the different pets in the database? */
				SELECT species
				FROM PET;
				
			/* What are the distinct species of the pets in the database? */
				SELECT distinct species
				FROM PET;
				
			/* What are the gender of all the different pets in the database? */
				SELECT gender
				FROM PET;
			
			/* What are the distinct genders of the pets in the database? */
				SELECT distinct gender
				FROM PET;
				
			/* What are the genders and altered status of all the different pets in the database? */
				SELECT gender, altered
				FROM PET;
				
			/* What are the distinct genders and altered status of the pets in the database? */
				SELECT distinct gender, altered
				FROM PET;
				
/*	Order By:												*/
/*		Identify the SQL that answers each
		of the following questions:							*/
	
			/* Who are the pets in the database, sorted by ID number? */
				SELECT *
				FROM PET
				ORDER BY ID;
				
			/* Who are the pets in the database, sorted by name? */
				SELECT *
				FROM PET
				ORDER BY name;
				
			/* Who are the pets in the datase, sorted by name, in reverse order? */
				SELECT *
				FROM PET
				ORDER BY name desc;
				
			/* What are the names, species, and breeds of the pets in the database, sorted by ID number? */
				SELECT name, species, breed
				FROM PET
				ORDER BY ID;
				
			/* What are the names, species, andbreeds of the pets in the database, sorted by name? */
				SELECT name, species, breed
				FROM PET
				ORDER BY name;
				
			/* What are the names, species, and breeds of the pets in the database, sorted by name in reverse order? */
				SELECT name, species, breed
				FROM PET
				ORDER BY name desc;
				
			/* What are the names of the pets in the database, sorted by ID number? */
				SELECT name
				FROM PET
				ORDER BY ID;
				
			/* What are the names of the pets in the database, sorted by name? */
				SELECT name
				FROM PET
				ORDER BY name;
			
			