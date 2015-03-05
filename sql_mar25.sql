/************** 
Eduardo Robles 
CSCI 6333 
Pre-Class Work
***************/


/*1. I did a subquery to find where the Sailor Akeem reserved a boat, then did the main query to find the color of boats that have been reserved. I couldn't find another way to to find how to get the boats reserved by Akeem */
SELECT DISTINCT color 
FROM Boat B, Reserve R  
WHERE B.bid = R.bid > ( SELECT DISTINCT S.sname 
					    FROM Sailor S, Reserve R 
						WHERE S.sname = 'Akeem');



/*2. I could only figure out how to find the COUNT of the color of boats that have been reserved. I need to find with the count of each rating level by Sailors*/

SELECT color COUNT(*)
FROM Boat B, Reserve R
WHERE B.bid = R.bid 


/*3. I could only figure out how to find the bid and bname of Boats that have been reserved. I need to find which boats have been reserved by 45 different Sailors*/

SELECT bid, bname
FROM Boat B, Reserved R,
WHERE B.bid = R.bid AND b.bname
