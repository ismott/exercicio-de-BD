Create Database EMPRESA;
Go

Use EMPRESA;
Go 

Create Table PESSOA (
 idPessoa Smallint Primary Key Identity(1,1),
 nomePessoa VARCHAR(20) Not Null
);
Go 

Create Table TELEFONE (
  idTelefone Smallint Primary Key Identity(1,1),
  idPessoa Smallint Foreign Key References PESSOA(idPessoa),
  numeroTelefone Varchar(15) Not Null
);
Go

Create Table EMAIL (
  idEmail INT Primary Key Identity(1,1),
  idPessoa Smallint Foreign Key References PESSOA(idPessoa),
  end_email Varchar(256) Not Null
);
Go 

Create Table CNH(
 idCNH Smallint Primary Key Identity(1,1), 
 idPessoa Smallint Foreign Key References PESSOA(idPessoa),
 descricao Char(11) Not Null Unique
);
Go