/************** 
Eduardo Robles 
CSCI 6333 
Pre-Class Work
***************/


/*
1
*/
SELECT DISTINCT color 
FROM Boat B, Reserve R  
WHERE B.bid = R.Bid > ( SELECT DISTINCT S.sname 
					    FROM Sailor S, Reserve R 
						WHERE S.sname = 'Akeem');



/*
2
*/




/*
3
*/
