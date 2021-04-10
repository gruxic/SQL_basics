/*https://docs.google.com/document/d/1wiuYbTQslmfolQWgeVPB356csjK6yqOUBhgC7fM44o8/edit*/

/*QUESTION-1*/
SELECT * FROM cd.facilities

/*QUESTION-2*/
SELECT name,membercost FROM cd.facilities
/*QUESTION-3*/
SELECT name,membercost FROM cd.facilities
WHERE membercost!=0
/*QUESTION-4*/
SELECT* FROM cd.facilities
WHERE membercost!=0 and membercost<(0.02*facilities.monthlymaintenance)
/*QUESTION-5*/
SELECT * FROM cd.facilities
WHERE name ILIKE '%tennis%'
/*QUESTION-6*/
SELECT * FROM cd.facilities
WHERE facid IN (1,5)
/*QUESTION-7*/
SELECT * FROM cd.members
WHERE joindate > '2012-09-01'
/*QUESTION-8*/
SELECT DISTINCT * FROM cd.members
ORDER BY surname 
/*QUESTION-9*/
SELECT DISTINCT * FROM cd.members
ORDER BY joindate DESC
LIMIT 1;
/*QUESTION-10*/
SELECT COUNT(*) FROM cd.facilities
WHERE guestcost>5
/*QUESTION-11*/
SELECT facid, SUM(slots) FROM cd.bookings
GROUP BY facid
/*QUESTION-12*/
SELECT facid, SUM(slots) FROM cd.bookings
GROUP BY facid 
HAVING SUM(slots) > 1000
/*QUESTION-13*/
SELECT cd.facilities.name, cd.bookings.starttime FROM cd.bookings
INNER JOIN cd.facilities
on cd.bookings.facid = cd.facilities.facid
WHERE name ILIKE '%tennis court%'
ORDER BY starttime
/*QUESTION-14*/
SELECT cd.members.memid,cd.members.firstname, cd.members.surname, cd.bookings.starttime FROM cd.bookings
INNER JOIN cd.members
on cd.bookings.memid = cd.members.memid
WHERE cd.members.firstname='David' and cd.members.surname='Farrell'
ORDER BY starttime

