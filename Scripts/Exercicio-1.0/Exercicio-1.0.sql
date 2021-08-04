Create Database Catalogo;
Go 

Use Catalogo;
Go

Create Table GENERO (
  idGenero Tinyint Primary Key Identity(1,1),
  nomeGenero Varchar(20)
);
Go

Alter Table GENERO
Add nomeGenero Varchar(20) Not Null 
Go

Create Table FILME(
  idFilme Smallint Primary Key Identity(1,1),
  idGenero Tinyint Foreign Key References GENERO(idGenero),
  tituloFilme Varchar(50) Not Null
);
Go
