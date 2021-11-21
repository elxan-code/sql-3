create database mybook
use mybook
create table Books
(
Id INT IDENTITY PRIMARY KEY,
Name NVARCHAR(50) check(len(Name)>1) NOT NULL,
PageCount int check (pagecount>9)
)

create table Authors
(
Id INT IDENTITY PRIMARY KEY,
Name NVARCHAR(30)  NOT NULL,
Surname  NVARCHAR(30)  NOT NULL
)
alter table Books
add AuthorId INT CONSTRAINT FK_Faculties_AuthorId FOREIGN KEY REFERENCES Authors(Id)
insert into Authors
values
('Andrzej','Sapkowski'),
('Hilary','Mantel'),
('Diana ','Gabaldon')
select * from Authors
insert into Books
values
('The Last Wish',288,1 ),
('Wolf Hall',672,2 ),
('Outlander',640,3 )
select* from Books

create view vw_info
as
select Books.Id,Books.Name,Books.PageCount,
Authors.Name+' '+Authors.Surname as 'AoutorsFullName' from Books
join Authors on Books.AuthorId=Authors.Id
select * from  vw_info



