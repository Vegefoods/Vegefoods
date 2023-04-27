CREATE DATABASE Vegefoods
GO
USE Vegefoods
GO
CREATE TABLE Roles (
	role_id INT IDENTITY(1, 1) PRIMARY KEY,
	name VARCHAR(MAX)
)
GO
CREATE TABLE Users (
	user_id INT IDENTITY(1, 1) PRIMARY KEY,
	phoneNumber VARCHAR(11),
	password VARCHAR(MAX),
	email VARCHAR(MAX),
	role_id INT FOREIGN KEY REFERENCES Roles(role_id)
)
GO
CREATE TABLE Categories (
	cate_id INT IDENTITY(1, 1) PRIMARY KEY,
	name VARCHAR(MAX)
)
GO
CREATE TABLE Products (
	product_id INT IDENTITY(1, 1) PRIMARY KEY,
	name VARCHAR(MAX),
	description VARCHAR(MAX),
	price FLOAT,
	image VARCHAR(MAX),
	cate_id INT FOREIGN KEY REFERENCES Categories(cate_id)
)
GO
CREATE TABLE Order_Details (
	user_id INT FOREIGN KEY REFERENCES Users(user_id),
	product_id INT FOREIGN KEY REFERENCES Products(product_id),
	PRIMARY KEY(user_id, product_id),
	quantity FLOAT
)
