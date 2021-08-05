Use ClinicaVeterinaria;
Go

Insert Into Clinica (NomeClinica) Values ('Pet Landia');
Go

Insert Into Dono (NomeDono) Values ('joão'), ('Felipe');
Go

Insert Into TipoPet (NomeTipoPet) Values ('Cachorro'), ('Gato');
Go

Insert Into Raca (TipoPetId, NomeRca) Values (1, 'Pastor Alemão'), (2, 'Persa');
Go

Insert Into Pet (RacaId, DonoId, NomePet) Values (1, 2, 'Bolinho'), (2, 1, 'Venus');
Go

Insert Into Veterinario (ClinicaId, NomeVeterinario) Values (1, 'lucas'), (1, 'Bruna');
Go

Insert Into Atendimento (VeterinarioId, PetId, DataAtendimento) Values (1, 2, '15/2/2021'), (2, 1, '13/2/2021');
Go