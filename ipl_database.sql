use ipl;
Create table Team(Team_Id int PRIMARY KEY,
Team_Name varchar(30) not null,
Home_venue varchar(20),
No_of_batsmen int ,
No_of_bowlers int,
No_of_allrounders int);

desc Team;

Create table Match_ (M_Id varchar(10) PRIMARY KEY,
M_date Date NOT NULL,
Team_1 varchar(30),
Team_2 varchar(30),
Winner varchar(30),
Man_of_match varchar(20));

desc Match_;

Create table Players(P_Id int PRIMARY KEY,
P_name varchar(20) NOT NULL,
P_Role varchar(20),
Age int,
Country varchar(20),
Team_Id int);

desc Players;

create table Individual_stats(M_Id varchar(10),
P_Id int,
Runs int,
Strike_rate float,
Boundaries int,
Sixes int,
Wickets int,
Catches int,
Runouts int,
Economy float);



desc Individual_stats;

Create table Captain(Cap_Id int PRIMARY KEY,
Cap_name varchar(20) NOT NULL,
Team_Id int);

desc Captain;

Create table Coach(Coach_Id int PRIMARY KEY,
Coach_name varchar(20) NOT NULL,
Coach_Role varchar(20),
Team_Id int);

desc Coach;

Create table Umpire(U_Id int PRIMARY KEY,
U_Name varchar(20) NOT NULL,
No_of_matches int,
U_country varchar(20));

desc Umpire;

Create table Venue(V_Id int PRIMARY KEY,
V_name varchar(20),
Capacity int);

desc Venue;

Create table Owner(O_Id int PRIMARY KEY,
O_name varchar(20),
Team_Id int);

desc Owner;

Create table Sponsor(Company_Id int PRIMARY KEY,
Company_name varchar(20));

desc Sponsor;

Create table Plays(Team_Id int,
M_Id varchar(10));

desc Plays;

Create table Umpired_By(M_Id varchar(10),
U_Id int);

desc Umpired_By;

Create table Played_at(V_Id int,
M_Id varchar(10));

desc Played_at;

Create table Sponsored_By(Company_Id int,
Team_Id int);

desc Sponsored_By;
truncate table Team;

insert into Team values(1,'Mumbai Indians','Dubai Stadium',4,3,4);
insert into Team values(2,'Delhi Capitals','Sharjah Stadium',5,3,3);
insert into Team values(3,'Sunrisers Hyderabad','Dubai Stadium',4,3,4);
insert into Team values(4,'Royal Challengers Bangalore','Zayed Stadium',4,4,3);

select * from Team;


insert into Match_ values('Qualifier1','2020-11-05',
'Mumbai Indians','Delhi Capitals','Mumbai Indians','Jasprit Bumrah');
insert into Match_ values('Eliminator','2020-11-06',
'Sunrisers Hyderabad','Royal Challengers Bangalore','Sunrisers Hyderabad','Kane Williamson');
insert into Match_ values('Qualifier2','2020-11-08',
'Delhi Capitals','Sunrisers Hyderabad','Delhi Capitals','Marcus Stoinis');
insert into Match_ values('Final','2020-11-10',
'Mumbai Indians','Delhi Capitals','Mumbai Indians','Trent Boult');

select * from Match_;

insert into Players values(145,'Rohit Sharma','Batsman',34,'India',1);
insert into Players values(113,'Quinton de Kock','Batsman',28,'South Africa',1);
insert into Players values(177,'Suryakumar Yadav','Batsman',30,'India',1);
insert into Players values(123,'Ishan Kishan','Batsman(WK)',22,'India',1);
insert into Players values(133,'Hardik Pandya','All Rounder',27,'India',1);
insert into Players values(155,'Kieron Pollard','All Rounder',33,'West Indies',1);
insert into Players values(136,'Krunal Pandya','All Rounder',30,'India',1);
insert into Players values(107,'Nathan Coulter-Nile','All Rounder',33,'Australia',1);
insert into Players values(118,'Trent Boult','Bowler',31,'New Zealand',1);
insert into Players values(101,'Rahul Chahar','Bowler',21,'India',1);
insert into Players values(193,'Jasprit Bumrah','Bowler',27,'India',1);
insert into Players values(119,'Jayant Yadav','Bowler',31,'India',1);

insert into Players values(2100,'Prithvi Shaw','Batsman',21,'India',2);
insert into Players values(242,'Shikhar Dhawan','Batsman',35,'India',2);
insert into Players values(203,'Ajinkya Rahane','Batsman',32,'India',2);
insert into Players values(241,'Shreyas Iyer','Batsman',26,'India',2); 
insert into Players values(217,'Rishabh Pant','Batsman(WK)',23,'India',2);
insert into Players values(2189,'Shimron Hetmyer','Batsman',24,'West Indies',2);
insert into Players values(221,'Marcus Stoinis','All Rounder',31,'Australia',2);
insert into Players values(220,'Axar Patel','All Rounder',27,'India',2);
insert into Players values(223,'Ravichandran Ashwin','All Rounder',34,'India',2);
insert into Players values(260,'Daniel Sams','Bowler',23,'Australia',2);
insert into Players values(225,'Kagiso Rabada','Bowler',25,'South Africa',2);
insert into Players values(202,'Anrich Nortje','Bowler',27,'South Africa',2);
insert into Players values(246,'Praveen Dubey','All Rounder',27,'India',2);

insert into Players values(331,'David Warner','Batsman',33,'Australia',3);
insert into Players values(336,'Shreevats Goswami','Batsman(WK)',31,'India',3);
insert into Players values(321,'Manish Pandey','Batsman',31,'India',3);
insert into Players values(322,'Kane Williamson','Batsman',33,'New Zealand',3);
insert into Players values(311,'Priyam Garg','All Rounder',19,'India',3);
insert into Players values(301,'Abdul Samad','All Rounder',18,'India',3);
insert into Players values(398,'Jason Holder','All Rounder',28,'West Indies',3);
insert into Players values(319,'Rashid Khan','ALL Rounder',21,'Afghanistan',3);
insert into Players values(308,'Shabaz Nadeem','Bowler',31,'India',3);
insert into Players values(366,'Sandeep Sharma','Bowler',27,'India',3);
insert into Players values(344,'Natarajan','Bowler',29,'India',3);

insert into Players values(437,'Devdutt Padikkal','Batsman',20,'India',4);
insert into Players values(442,'Aaron Finch','Batsman',34,'Australia',4);
insert into Players values(418,'Virat Kohli','Batsman',32,'India',4);
insert into Players values(417,'AB de Villiers','Batsman(WK)',37,'South Africa',4);
insert into Players values(406,'Shivam Dube','All Rounder',27,'India',4);
insert into Players values(481,'Moeen Ali','All Rounder',33,'England',4);
insert into Players values(405,'Washington Sundar','All Rounder',21,'India',4);
insert into Players values(496,'Navdeep Saini','Bowler',27,'India',4);
insert into Players values(473,'Mohammed Siraj','Bowler',27,'India',4);
insert into Players values(436,'Adam Zampa','Bowler',29,'Australia',4);
insert into Players values(403,'Yuzvendra Chahal','Bowler',30,'India',4);

select * from Players;

insert into Individual_stats values('Qualifier1',145,0,0.00,0,0,0,1,0,null);
insert into Individual_stats values('Qualifier1',113,40,160.00,5,1,0,2,0,null);
insert into Individual_stats values('Qualifier1',177,51,134.21,6,2,0,1,0,null);
insert into Individual_stats values('Qualifier1',123,55,183.33,4,3,0,0,0,null);
insert into Individual_stats values('Qualifier1',133,37,264.29,0,5,0,0,0,null);
insert into Individual_stats values('Qualifier1',155,0,0.00,0,0,1,0,0,9.00);
insert into Individual_stats values('Qualifier1',136,13,130.00,0,1,1,0,0,5.50);
insert into Individual_stats values('Qualifier1',107,0,null,0,0,0,0,0,6.75);
insert into Individual_stats values('Qualifier1',118,0,null,0,0,2,0,0,4.50);
insert into Individual_stats values('Qualifier1',101,0,null,0,0,0,1,0,17.50);
insert into Individual_stats values('Qualifier1',193,0,null,0,0,4,0,0,3.50);
insert into Individual_stats values('Qualifier1',2100,0,0.00,0,0,0,0,0,null);
insert into Individual_stats values('Qualifier1',242,0,0.00,0,0,0,1,0,null);
insert into Individual_stats values('Qualifier1',203,0,0.00,0,0,0,0,0,null);
insert into Individual_stats values('Qualifier1',241,12,150.00,3,0,0,0,0,null);
insert into Individual_stats values('Qualifier1',217,3,33.33,0,0,0,0,0,null);
insert into Individual_stats values('Qualifier1',221,65,141.30,6,3,1,0,0,5.00);
insert into Individual_stats values('Qualifier1',220,42,127.27,2,3,0,0,0,9.00);
insert into Individual_stats values('Qualifier1',223,0,null,0,0,3,0,0,7.25);
insert into Individual_stats values('Qualifier1',260,0,0.00,0,0,0,2,0,11.00);
insert into Individual_stats values('Qualifier1',225,15,100.00,2,0,0,1,0,10.50);
insert into Individual_stats values('Qualifier1',202,0,null,0,0,1,0,0,12.50);

insert into Individual_stats values('Eliminator',331,17,100.00,3,0,0,1,0,null);
insert into Individual_stats values('Eliminator',336,0,0.00,0,0,0,1,0,null);
insert into Individual_stats values('Eliminator',321,24,114.29,3,1,0,0,0,null);
insert into Individual_stats values('Eliminator',322,50,113.64,2,2,0,0,0,null);
insert into Individual_stats values('Eliminator',311,7,50.00,0,0,0,1,0,null);
insert into Individual_stats values('Eliminator',398,24,120.00,3,0,3,0,0,6.25);
insert into Individual_stats values('Eliminator',301,0,null,0,0,0,2,0,null);
insert into Individual_stats values('Eliminator',319,0,null,0,0,0,0,1,5.50);
insert into Individual_stats values('Eliminator',308,0,null,0,0,1,0,0,7.50);
insert into Individual_stats values('Eliminator',366,0,null,0,0,0,0,0,5.25);
insert into Individual_stats values('Eliminator',344,0,null,0,0,2,0,0,8.25);
insert into Individual_stats values('Eliminator',437,1,16.67,0,0,0,0,0,null);
insert into Individual_stats values('Eliminator',442,32,106.67,3,1,0,0,0,null);
insert into Individual_stats values('Eliminator',418,6,85.71,0,0,0,0,0,null);
insert into Individual_stats values('Eliminator',417,56,130.23,5,0,0,3,0,null);
insert into Individual_stats values('Eliminator',406,8,61.54,0,0,0,0,0,7.00);
insert into Individual_stats values('Eliminator',481,0,0.00,0,0,0,0,0,4.00);
insert into Individual_stats values('Eliminator',405,5,83.33,0,0,0,0,0,10.50);
insert into Individual_stats values('Eliminator',496,9,112.50,1,0,0,0,0,8.45);
insert into Individual_stats values('Eliminator',473,10,142.86,1,0,2,0,0,7.00);
insert into Individual_stats values('Eliminator',436,0,null,0,0,1,1,0,3.00);
insert into Individual_stats values('Eliminator',403,0,null,0,0,1,0,0,6.00);


insert into Individual_stats values('Qualifier2',311,17,141.67,0,2,0,0,0,null);
insert into Individual_stats values('Qualifier2',331,2,66.67,0,0,0,0,0,null);
insert into Individual_stats values('Qualifier2',321,21,150.00,3,0,0,1,0,null);
insert into Individual_stats values('Qualifier2',322,67,148.89,5,4,0,0,0,null);
insert into Individual_stats values('Qualifier2',398,11,73.33,1,0,1,0,0,12.50);
insert into Individual_stats values('Qualifier2',301,33,206.25,2,2,0,0,0,null);
insert into Individual_stats values('Qualifier2',319,11,157.14,1,1,1,0,0,6.50);
insert into Individual_stats values('Qualifier2',336,0,0.00,0,0,0,0,0,null);
insert into Individual_stats values('Qualifier2',308,2,66.67,0,0,0,0,0,12.00);
insert into Individual_stats values('Qualifier2',366,2,50.00,0,0,1,0,0,7.50);
insert into Individual_stats values('Qualifier2',344,0,null,0,0,0,0,0,8.00);
insert into Individual_stats values('Qualifier2',221,38,140.74,5,1,3,1,0,8.67);
insert into Individual_stats values('Qualifier2',242,78,156.00,6,2,0,0,0,null);
insert into Individual_stats values('Qualifier2',241,21,105.00,1,0,0,0,0,null);
insert into Individual_stats values('Qualifier2',2189,42,190.91,4,1,0,0,0,null);
insert into Individual_stats values('Qualifier2',217,2,66.67,0,0,0,0,0,null);
insert into Individual_stats values('Qualifier2',203,0,null,0,0,0,0,0,null);
insert into Individual_stats values('Qualifier2',220,0,null,0,0,1,1,0,8.25);
insert into Individual_stats values('Qualifier2',223,0,null,0,0,0,0,0,11.00);
insert into Individual_stats values('Qualifier2',225,0,null,0,0,4,1,0,7.25);
insert into Individual_stats values('Qualifier2',202,0,null,0,0,0,1,0,9.00);
insert into Individual_stats values('Qualifier2',246,0,null,0,0,0,0,0,7.00);


insert into Individual_stats values('Final',145,68,133.33,5,4,0,0,0,null);
insert into Individual_stats values('Final',113,20,166.67,3,1,0,2,0,null);
insert into Individual_stats values('Final',177,19,95.00,1,1,0,0,1,null);
insert into Individual_stats values('Final',123,33,173.68,3,1,0,0,0,null);
insert into Individual_stats values('Final',133,3,60.00,0,0,0,1,0,null);
insert into Individual_stats values('Final',155,9,225.00,2,0,0,0,0,13.00);
insert into Individual_stats values('Final',136,1,100.00,0,0,0,0,0,10.00);
insert into Individual_stats values('Final',107,0,null,0,0,2,1,0,7.25);
insert into Individual_stats values('Final',118,0,null,0,0,3,0,0,7.50);
insert into Individual_stats values('Final',119,0,null,0,0,1,0,0,6.25);
insert into Individual_stats values('Final',193,0,null,0,0,0,0,0,7.00);
insert into Individual_stats values('Final',221,0,0.00,0,0,1,0,0,11.50);
insert into Individual_stats values('Final',242,15,115.38,3,0,0,0,0,null);
insert into Individual_stats values('Final',203,2,50.00,0,0,0,1,0,null);
insert into Individual_stats values('Final',241,65,130.00,6,2,0,0,0,null);
insert into Individual_stats values('Final',217,56,147.37,4,2,0,1,0,null);
insert into Individual_stats values('Final',2189,5,100.00,1,0,0,0,0,null);
insert into Individual_stats values('Final',220,9,100.00,1,0,0,0,0,4.00);
insert into Individual_stats values('Final',225,0,null,0,0,0,0,0,10.67);
insert into Individual_stats values('Final',246,0,null,0,0,0,0,1,9.67);
insert into Individual_stats values('Final',223,0,null,0,0,0,0,0,7.00);
insert into Individual_stats values('Final',202,0,null,0,0,2,0,0,9.38);

select * from Individual_stats;

insert into Captain values(145,'Rohith Sharma',1);
insert into Captain values(241,'Shreyas Iyer',2);
insert into Captain values(331,'David Warner',3);
insert into Captain values(418,'Virat Kohli',4);

select * from Captain;

insert into Coach values(1101,'Mahela Jayawardene','Head Coach',1);
insert into Coach values(1102,'Robin Singh','Batting Coach',1);
insert into Coach values(1103,'Shane Bond','Bowling Coach',1);
insert into Coach values(1104,'James Pamment','Fielding Coach',1);
insert into Coach values(2201,'Ricky Ponting','Head Coach',2);
insert into Coach values(2203,'Ryan Harris','Bowling Coach',2);
insert into Coach values(2204,'Mohammad Kaif','Fielding Coach',2);
insert into Coach values(3301,'Trevor Bayliss','Head Coach',3);
insert into Coach values(3302,'V.V.S Laxman','Batting Coach',3);
insert into Coach values(3303,'Muttaih Muralitharan','Bowling Coach',3);
insert into Coach values(3304,'Biju George','Fielding Coach',3);
insert into Coach values(4401,'Simon Katich','Head Coach',4);
insert into Coach values(4402,'Sridharan Sriram','Batting Coach',4);
insert into Coach values(4403,'Adam Griffith','Bowling Coach',4);
insert into Coach values(4404,'Malolan Rangarajan','Fielding Coach',4);

select * from Coach;

insert into Umpire values(501,'Chris Gaffaney',136,'New Zealand');
insert into Umpire values(502,'Anil Chaudhary',53,'India');
insert into Umpire values(503,'S Ravi',107,'India');
insert into Umpire values(504,'Paul Reiffel',138,'Australia');

select * from Umpire;

insert into Venue values(601,'Dubai Stadium',25000);
insert into Venue values(602,'Sharjah Stadium',27000);
insert into Venue values(603,'Zayed Stadium',20000);

select * from Venue;

insert into Owner values(701,'Nita Ambani',1);
insert into Owner values(702,'Parth Jindal',2);
insert into Owner values(703,'Kalanithi Maran',3);
insert into Owner values(704,'Amrit Thomas',4);

select * from Owner;

insert into Sponsor values(801,'Samsung');
insert into Sponsor values(802,'Colors');
insert into Sponsor values(803,'Jio');
insert into Sponsor values(804,'JSW Group');
insert into Sponsor values(805,'EBIX Cash');
insert into Sponsor values(806,'UltraTech Cement');
insert into Sponsor values(807,'Valvoline');
insert into Sponsor values(808,'Mutooth Fincorp');
insert into Sponsor values(809,'Myntra');
insert into Sponsor values(810,'Kingfisher');

select * from Sponsor;

insert into Plays values(1,'Qualifier1');
insert into Plays values(2,'Qualifier1');
insert into Plays values(3,'Eliminator');
insert into Plays values(4,'Eliminator');
insert into Plays values(2,'Qualifier2');
insert into Plays values(3,'Qualifier2');
insert into Plays values(1,'Final');
insert into Plays values(2,'Final');

select * from Plays;

insert into Umpired_By values('Qualifier1','501');
insert into Umpired_By values('Qualifier1','502');
insert into Umpired_By values('Eliminator','503');
insert into Umpired_By values('Elimiator','504');
insert into Umpired_By values('Qualifier2','503');
insert into Umpired_By values('Qualifier2','504');
insert into Umpired_By values('Final','501');
insert into Umpired_By values('Final','502');

select * from Umpired_By;

insert into Played_at values(601,'Qualifier1');
insert into Played_at values(603,'Eliminator');
insert into Played_at values(603,'Qualifier2');
insert into Played_at values(601,'Final');

select * from Played_at;

insert into Sponsored_By values(801,1);
insert into Sponsored_By values(802,1);
insert into Sponsored_By values(803,1);
insert into Sponsored_By values(804,2);
insert into Sponsored_By values(805,2);
insert into Sponsored_By values(806,3);
insert into Sponsored_By values(807,3);
insert into Sponsored_By values(810,3);
insert into Sponsored_By values(803,3);
insert into Sponsored_By values(808,4);
insert into Sponsored_By values(809,4);
insert into Sponsored_By values(810,4);
insert into Sponsored_By values(803,4);

select * from Sponsored_By;

SELECT P.P_Name,P.Age,P.P_Role
FROM Players P, Team T
WHERE P.Team_Id=T.Team_Id AND T.Team_Name="Mumbai Indians" AND P.Country="India" ORDER BY P.Age DESC;

SELECT P.P_Id, P.P_Name
FROM Players P, Individual_stats I
WHERE P.P_id=I.P_Id AND I.M_Id = "Qualifier2" AND I.Runs >= 50 AND I.Strike_rate > 120;

SELECT M.M_Id, M.M_date, V.V_Name
FROM Match_ M, Venue V, Played_at PA
WHERE PA.M_Id=M.M_Id AND PA.V_Id=V.V_Id AND M.M_Id="Qualifier2";

SELECT C.Coach_Id, C.Coach_name, C.Coach_Role
FROM Coach C
WHERE C.Team_Id=3; 

SELECT U.U_Id, U.U_Name, U.No_of_matches
FROM Umpire U
WHERE U.U_country <> "India" AND U.No_of_matches >= 60; 

SELECT P.P_Name,I.Runs
FROM Match_ M,Players P, Individual_stats I, Team T
WHERE P.P_Id = I.P_Id AND M.M_Id=I.M_Id AND T.Team_Name=M.Winner AND T.Team_Id=P.Team_Id AND M.M_Date="2020-11-08";

SELECT P.P_Name, P.Age, P.Country
FROM Players P, Team T
WHERE T.Team_Id=P.Team_Id AND T.Team_Name = "Sunrisers Hyderabad" AND P.Age<30 AND P.Country<>"India";

SELECT P.P_Name
FROM Players P, Individual_stats I
WHERE P.P_Id = I.P_Id AND I.M_Id="Eliminator" AND (I.Wickets>1 OR I.Catches>1 OR I.Runouts>1) AND (I.Boundaries>=1 OR I.Sixes>=1);

SELECT P.P_Name
FROM Players P, Individual_stats I
WHERE P.P_Id = I.P_Id AND I.M_Id="Final" AND P.Country="India" AND P.P_Role = "All Rounder" AND I.Strike_rate>=100 AND I.Economy<8;

SELECT P.P_Name, SUM(I.Wickets)
FROM Players P, Individual_stats I, Team T
WHERE P.P_Id = I.P_Id AND P.Team_Id = T.Team_Id AND T.Team_Name="Sunrisers Hyderabad" AND (P.P_Role="All Rounder" OR P.P_Role="Bowler")
GROUP BY P.P_Name;

SELECT P.P_Name, P.Age, AVG(I.Runs)
FROM Players P, Individual_stats I, Team T, Match_ M
WHERE P.P_Id=I.P_Id
AND P.Team_Id=(SELECT T.Team_Id FROM Team T, Match_ M WHERE M.M_Id="Final" AND T.Team_Name=M.Winner)
AND (P.P_Role="Batsman" OR P.P_Role="All Rounder" OR P.P_Role="Batsman(WK)")
GROUP BY I.P_Id;