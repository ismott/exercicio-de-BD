Create Database ClinicaVeterinaria;
Go

Use ClinicaVeterinaria;
Go

Create Table Clinica(
ClinicaId Tinyint Primary Key Identity(1,1),
NomeClinica Varchar(25),
);

Create Table Dono(
DonoId Smallint Primary Key Identity(1,1),
NomeDono Varchar(15),
);

Create Table TipoPet(
TipoPetId Tinyint Primary Key Identity(1,1),
NomeTipoPet Varchar(15),
);

Create Table Raca(
RacaID Smallint Primary Key Identity(1,1),
TipoPetId Tinyint Foreign Key References TipoPet(TipoPetId),
NomeRca VarChar(25) Not Null
);

Create Table Pet(
PetId Smallint Primary Key Identity(1,1),
RacaId Smallint Foreign Key References Raca(RacaId),
DonoId Smallint Foreign Key References Dono(DonoId),
NomePet VarChar(15) Not Null
);

Create Table Veterinario(
VeterinarioId Tinyint Primary Key Identity(1,1),
ClinicaId Tinyint Foreign Key References Clinica(ClinicaId),
NomeVeterinario Varchar(25) Not Null
);

Create Table Atendimento(
AtendimentoId Smallint Primary Key Identity(1,1),
VeterinarioId Tinyint Foreign Key References Veterinario(VeterinarioId),
PetId Smallint Foreign Key References Pet(PetId),
DataAtendimento Smalldatetime Not Null
);