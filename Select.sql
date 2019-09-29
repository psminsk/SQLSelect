--Select
--1
Select * from Parties;
--2
Select * from Parties Where PartyDate > GetDate()  ;
--3
Select Top 5 * from Parties Where PartyDate > GetDate() order by PartyDate   ;
--4
Select * from Partycipants where attend is not null  ;
--5
Select * from Partycipants where attend=1 order by name   ;
--6
update Parties Set Location='drozdy'
where Location = 'Skryganova'       ;
--7
select u.Fio, 
Count (Owner_id) as PartyCount     
From Parties as P
right join [Users] as u on P.owner_id = u.id     
group by Owner_id,u.Fio;  