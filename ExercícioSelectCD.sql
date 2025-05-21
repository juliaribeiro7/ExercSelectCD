CREATE DATABASE MusicasDB;
USE MusicasDB;

CREATE TABLE Cds (
    Codigo INT PRIMARY KEY,
    Nome_cd VARCHAR(100),
    DataCompra DATE,
    ValorPago DECIMAL(10, 2),
    LocalCompra VARCHAR(100),
    Album VARCHAR(3) -- 'Sim' ou 'Não'
);

CREATE TABLE Musicas (
    CodigoCD INT,
    Numero_musica INT,
    Nome_musica VARCHAR(100),
    Artista VARCHAR(100),
    Tempo TIME,
    FOREIGN KEY (CodigoCD) REFERENCES Cds(Codigo)
);

INSERT INTO Cds VALUES 
(1, 'Pop Hits', '2023-01-10', 39.90, 'Submarino', 'Sim'),
(2, 'Rock Legends', '2023-02-20', 49.90, 'Amazon', 'Sim'),
(3, 'Jazz Classics', '2023-03-15', 29.90, 'Submarino', 'Não'),
(4, 'Sertanejo Top', '2023-04-01', 34.90, 'Americanas', 'Sim'),
(5, 'Mix Eletrônico', '2023-05-05', 44.90, 'Submarino', 'Não');

INSERT INTO Musicas VALUES
(1, 1, 'Música A1', 'José Pedro', '00:03:50'),
(1, 2, 'Música A2', 'Ana Paula', '00:04:10'),
(1, 3, 'Música A3', 'José Pedro', '00:05:00'),

(2, 1, 'Música B1', 'Banda Rock', '00:04:30'),
(2, 2, 'Música B2', 'Banda Rock', '00:04:00'),
(2, 3, 'Música B3', 'Guitarrista X', '00:03:40'),

(3, 1, 'Música C1', 'Jazz Man', '00:06:00'),
(3, 2, 'Música C2', 'Jazz Woman', '00:05:30'),
(3, 3, 'Música C3', 'Trio Jazz', '00:04:45'),

(4, 1, 'Música D1', 'Zé da Viola', '00:03:20'),
(4, 2, 'Música D2', 'José Pedro', '00:04:50'),
(4, 3, 'Música D3', 'Dupla Boa', '00:03:55'),

(5, 1, 'Música E1', 'DJ Mix', '00:05:15'),
(5, 2, 'Música E2', 'DJ Mix', '00:04:20'),
(5, 3, 'Música E3', 'DJ Cool', '00:03:40');

SELECT * FROM Cds;

SELECT Nome_cd, DataCompra FROM Cds ORDER BY Nome_cd;

SELECT Nome_cd, DataCompra FROM Cds ORDER BY DataCompra DESC;

SELECT Nome_cd, DataCompra, ValorPago FROM Cds ORDER BY ValorPago DESC;

SELECT SUM(ValorPago) AS TotalGasto FROM Cds;

SELECT * FROM Musicas WHERE CodigoCD = 1;

SELECT Nome_musica, Artista FROM Musicas;

SELECT Numero_musica, Nome_musica, Tempo FROM Musicas 
WHERE CodigoCD = 5 ORDER BY Numero_musica;

SELECT COUNT(*) AS TotalMusicas FROM Musicas;

SELECT Nome_musica FROM Musicas WHERE Artista = 'José Pedro';

SELECT Nome_cd FROM Cds WHERE LocalCompra = 'Submarino';

SELECT Nome_musica FROM Musicas ORDER BY Nome_musica;

SELECT * FROM Cds WHERE Album = 'Sim';

SELECT AVG(ValorPago) AS MediaPreco FROM Cds;
