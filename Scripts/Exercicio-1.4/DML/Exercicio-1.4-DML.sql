Use EmpresaOptus;
Go

Insert Into TipoUsuario (NomeTipo) Values ('ADM'), ('Comun');
Go

Insert Into Estilo (NomeEstilo) Values ('Inde'), ('Eletronica');
Go

Insert Into Usuario (TipoUsuarioId, Nome, Senha, Email) Values (1, 'Lucas', '123', 'Lucas@hotmail.com'), (2, 'Giovana', '132', 'Giovana@hotmail.com');
Go

Insert Into Optus (UsuarioId, NomeEmpresa) Values (1, 'Optus'), (2, 'Optus');
Go

Insert Into Album (OptusId, NomeAlbum) Values (1, 'MusicasSla'), (1, 'MusicaTop');
Go

Insert Into AlbumEstilo (AlbumId, EstiloId) Values (1, 2), (2, 1), (1, 1);
Go