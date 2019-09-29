--Create DataBase

if not exists (select * from sys.databases where name=N'Party')
Begin
Create DataBase [Party]
end
go