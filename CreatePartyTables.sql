use Party;

if not exists (select * from sysobjects where name = 'Parties' and xtype='U')
CREATE TABLE Parties
(
    [Id] INT PRIMARY KEY IDENTITY NOT NULL,     
    [Name] NVARCHAR(30) NOT NULL,    
    [Location] NVARCHAR(30),
    [PartyDate] datetime,
    [Owner_id] int 
) 



--CREATE TABLE Parties
--(
--    [Id] INT PRIMARY KEY IDENTITY NOT NULL,     
--    [Name] NVARCHAR(30) NOT NULL,    
--    [Location] NVARCHAR(30),
--    [PartyDate] datetime,
--    [Owner_id] int 
--)  ;
if not exists (select * from sysobjects where name = 'Users' and xtype='U')
CREATE TABLE [Users]
(
    [Id] INT PRIMARY KEY IDENTITY NOT NULL,     
    [Fio] NVARCHAR(30) NOT NULL,
    [BirthDate] datetime,
    [Email] NVARCHAR(30),
    [Role] int
)  ;



if not exists (select * from sysobjects where name = 'Partycipants' and xtype='U')
CREATE TABLE Partycipants
(
    [Id] INT PRIMARY KEY IDENTITY NOT NULL,     
    [Name] NVARCHAR(30) NOT NULL,
    [Attend] bit,
    [Avatar] NVARCHAR(30),
    [Reason] NVARCHAR(MAX),
    [Party_id] int,
    [User_id] int
)  ;



if not exists (select * from sysobjects where name = 'Sponsors' and xtype='U')
CREATE TABLE Sponsors
(
    [Id] INT PRIMARY KEY IDENTITY NOT NULL,     
    [Name] NVARCHAR(30) NOT NULL,    
    [Location] NVARCHAR(30),
    [Logo] NVARCHAR(30),
    [Contact_id] int
) ;

if not exists (select * from sysobjects where name = 'Contact' and xtype='U')
CREATE TABLE Contact
(
    [Id] INT PRIMARY KEY IDENTITY NOT NULL,     
    [email] NVARCHAR(30),    
    [phone] NVARCHAR(30)     
) ;


if not exists (select * from sysobjects where name = 'Events' and xtype='U')
CREATE TABLE Events
(
    [Id] INT PRIMARY KEY IDENTITY NOT NULL,     
    [Sponsor_id] INT,    
    [Party_id] int NOT NULL,
    [Summa] int 
     
);


--ALTER TABLE [Events]
--ADD CONSTRAINT [FK_Events_Sponsor] FOREIGN KEY([Sponsor_id]) REFERENCES [Sponsors] ([id]),
--    CONSTRAINT [FK_Events_Parties] FOREIGN KEY([Party_id]) REFERENCES [Parties] ([id]) ;

--ALTER TABLE Sponsors 
--ADD CONSTRAINT [FK_Sponsors_Contact] FOREIGN KEY([Contact_id]) REFERENCES [Contact]([id])  ;  

--ALTER TABLE Partycipants
--ADD CONSTRAINT [FK_Partycipants_Parties] FOREIGN KEY([Party_id]) REFERENCES [Parties] ([id]),
--    CONSTRAINT [FK_Partycipants_Users] FOREIGN KEY([User_id]) REFERENCES [Users] ([id])  ;
 
--ALTER TABLE Parties
--ADD CONSTRAINT [FK_Parties_Participants] FOREIGN KEY([Owner_id]) REFERENCES [Participants] ([id]);
   
 