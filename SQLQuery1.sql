create table Account (
	AccountID int primary key,
	Username varchar(50) not null,
	Password varchar(50) not null,
	Email Varchar(100) not null
);
create table Product (
	ProductID int primary key,
	ProductName varchar(100) not null,
	Date Date,
	Amount decimal(10,2) not null
);
create table Income (
	IncomeID int primary key,
	Date Date,
	Amount decimal(10,2) not null
);
create table SalesHistory (
	SalesID int primary key,
	AccountID int,
	ProductID int,
	SaleDate Date,
	Quantity int,
	TotalPrice Decimal(10,2),
	foreign key (AccountID) references Account(AccountID),
	foreign key (ProductID) references Product(ProductID),
);

select * from Account
select * from Product
select * from SalesHistory

