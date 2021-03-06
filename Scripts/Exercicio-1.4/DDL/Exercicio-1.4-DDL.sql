Create Database EmpresaOptus;
Go

Use EmpresaOptus;
Go

Create Table TipoUsuario(
TipoUsuarioId Smallint Primary Key Identity(1,1),
NomeTipo Varchar(13) Not Null
);
Go

Create Table Estilo(
EstiloId Tinyint Primary Key Identity(1,1),
NomeEstilo Varchar(25) Not Null
);
Go

Create Table Usuario(
UsuarioId Smallint Primary Key Identity(1,1),
TipoUsuarioId Smallint Foreign Key References TipoUsuario(TipoUsuarioId),
Nome Varchar(25),
Senha VarChar(30),
Email Char(256)
);
Go

Create Table Optus(
OptusId Tinyint Primary Key Identity(1,1),
UsuarioId Smallint Foreign Key References Usuario(UsuarioId),
NomeEmpresa Char(5) Not Null
);
Go

Create Table Album(
AlbumId Smallint Primary Key Identity(1,1),
OptusId Tinyint Foreign Key References Optus(OptusId),
NomeAlbum Varchar(25)
);
Go

Create Table AlbumEstilo(
AlbumEstiloId int Primary Key Identity(1,1),
EstiloId Tinyint Foreign Key References Estilo(EstiloId),
AlbumId Smallint Foreign Key References Album(AlbumId)
);
Go




