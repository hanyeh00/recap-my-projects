GO

create table Roles(RoleId int primary key not null ,
                   RoleTitle nvarchar(50) not null)
GO
insert into Roles(RoleId,RoleTitle) values (1, 'admin');
insert into Roles(RoleId,RoleTitle) values (2, 'user');
GO

create table Users( 
                   UserId int primary key identity(1,1) not null,
				   FirstName nvarchar(50),
				   LastName nvarchar(50),
				   MobileNumber char (11),
				   [Password] nvarchar(50) not null,
				   RoleId int Null,
				   registerDate datetime)
Go

Insert into Users( FirstName ,LastName ,MobileNumber ,[Password] ,RoleId ,registerDate ) 
           values ('David','jones',09125694510,'@yui123',1,GETDATE())
Insert into Users( FirstName ,LastName ,MobileNumber ,[Password] ,RoleId ,registerDate ) 
		   values ('David','jones',09125694510,'@yui123',1,GETDATE())
Insert into Users( FirstName ,LastName ,MobileNumber ,[Password] ,RoleId ,registerDate ) 		   
		   values ('Shervin','happy',091226910,'@yu45123',2,GETDATE())
Insert into Users( FirstName ,LastName ,MobileNumber ,[Password] ,RoleId ,registerDate ) 
		   values ('Jack','jones',09115294510,'@yufg23',2,GETDATE())
Insert into Users(FirstName ,LastName ,MobileNumber ,[Password] ,RoleId ,registerDate ) 
		   values ('David','nick',091125694510,'@yuhvj23',2,GETDATE())
Insert into Users( FirstName ,LastName ,MobileNumber ,[Password] ,RoleId ,registerDate ) 
		   values ('Isable','zeta',09985694510,'@hdjk23',2,GETDATE())
Insert into Users( FirstName ,LastName ,MobileNumber ,[Password] ,RoleId ,registerDate ) 
		   values ('Mike','brown',09565994510,'@dodii123',1,GETDATE())
Insert into Users( FirstName ,LastName ,MobileNumber ,[Password] ,RoleId ,registerDate ) 
		   values ('Danny','mechanics',09125677710,'@8iji123',2,GETDATE())
Insert into Users(FirstName ,LastName ,MobileNumber ,[Password] ,RoleId ,registerDate ) 
		   values ('Barny','safary',09125444510,'@yui123',2,GETDATE())
Insert into Users(FirstName ,LastName ,MobileNumber ,[Password] ,RoleId ,registerDate ) 
		   values ('harry','seri',09166594510,'@yui123',2,GETDATE())
Insert into Users( FirstName ,LastName ,MobileNumber ,[Password] ,RoleId ,registerDate ) 
		   values ('Hanna','Chef',09125690000,'@yui123',2,GETDATE())
Insert into Users(FirstName ,LastName ,MobileNumber ,[Password] ,RoleId ,registerDate ) 
		   values ('hani','Chepman',0955555510,'@yu5223',2,GETDATE())

GO
 alter table Users
 ADD foreign key(RoleId) references Roles(RoleId)
 Go

 Create table Product(
                      GroupId int primary key identity(1,1) ,
					  GroupTitle Nvarchar(50) unique,
					  GRoupParentId int null)


insert into Product ( GroupTitle,GRoupParentId) values 
                     (N'مواد غذایی', null)
insert into Product ( GroupTitle,GRoupParentId) values 
                    (N'دیجیتال', null)
insert into Product ( GroupTitle,GRoupParentId) values 
                     (N'تلویزیون', 2)
insert into Product ( GroupTitle,GRoupParentId) values 
                     (N'پفک', 1)
insert into Product (GroupTitle,GRoupParentId) values 
                     (N'دوربین', 2)
insert into Product ( GroupTitle,GRoupParentId) values 
                     (N'لواشک', 1)
insert into Product ( GroupTitle,GRoupParentId) values 
                     (N'سس', 1)
insert into Product ( GroupTitle,GRoupParentId) values 
                     (N'موبایل', 2)
insert into Product ( GroupTitle,GRoupParentId) values 
                     (N'بیسکوییت', 1)

Go
alter table Product
add foreign key (GRoupParentId) references Product(GRoupId)
Go
