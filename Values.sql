INSERT INTO [Parties] 
VALUES
('Halloween', 'Skryganova', '2020-10-31',1),
('NewYear', 'Surganova', '2020-01-01',3),
('StPatricsDay', 'any pub', '2020-03-17',2),
('MachineBuildingDay', 'Belaz', '2020-03-18',2),
('StPatricsDay', 'any pub', '2019-03-17',2),
('drinking', 'Flat', '2019-11-11',2)
go

insert into [Users]
values
('olga', '19840305', 'olga@tut.by',1),
('vasia', '19840503', 'vasia@tut.by',1),
('viktor', '19940503', 'viktor@tut.by',2),
('maria', '19940503', 'maria@tut.by',3)
go

insert into [Partycipants]
values
('olga',1,'ava1','drink',1,1),
('vasiaDrink',1,'ava2','drink very much',2,2),
('viktor',0,'ava3','ill',1,3),
('masha',1,'ava4','drink a little',1,4)
go

insert into [Sponsors]
values
('a1','Brest','logo1',1),
('b2','Minsk','logo2',2),
('Itra','Grodno','logo3',3)
go

insert into [Contact]
values
('a1@tut.by','+123 4567890'),
('b2@mail.ru','+234 5678901'),
('c3@gmail.com','+987 1234560')
go

insert into [Events]
values
(1,1,100),
(2,2,200),
(3,3,300),
(3,2,300)
go

