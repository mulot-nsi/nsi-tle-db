CREATE TABLE auteurs
(
    id              INTEGER PRIMARY KEY AUTOINCREMENT,
    nom             TEXT NOT NULL,
    prenom          TEXT NOT NULL,
    annee_naissance INTEGER NOT NULL,
    langue_ecriture TEXT NOT NULL
);

INSERT INTO auteurs VALUES
(1, 'Orwell', 'George', 1903, 'anglais'),
(2, 'Herbert', 'Frank', 1920, 'anglais'),
(3, 'Asimov', 'Isaac', 1920, 'anglais'),
(4, 'Huxley', 'Aldous', 1894, 'anglais'),
(5, 'Bradbury', 'Ray', 1920, 'anglais'),
(6, 'K.Dick', 'Philip', 1928, 'anglais'),
(7, 'Barjavel', 'René', 1911, 'français'),
(8, 'Boulle', 'Pierre', 1912, 'français'),
(9, 'Van Vogt', 'Alfred Elton', 1912, 'anglais'),
(10, 'Verne', 'Jules', 1828, 'français');

CREATE TABLE livres
(
    id                INTEGER PRIMARY KEY AUTOINCREMENT,
    titre             TEXT NOT NULL,
    id_auteur         INTEGER NOT NULL ,
    annee_publication INTEGER NOT NULL,
    note              INTEGER NOT NULL,
    FOREIGN KEY(id_auteur) REFERENCES auteurs(id) ON DELETE CASCADE
);

INSERT INTO livres VALUES
(1,  '1984', 1, 1949, 10),
(2,  'Dune', 2, 1965, 8),
(3,  'Fondation', 3, 1951, 9),
(4,  'Le meilleur des mondes', 4, 1931, 7),
(5,  'Fahrenheit 451', 5, 1953, 7),
(6,  'Ubik', 6, 1969, 9),
(7,  'Chroniques martiennes', 5, 1950, 8),
(8,  'La nuit des temps', 7, 1968, 7),
(9,  'Blade Runner', 6, 1968, 8),
(10, 'Les Robots', 3, 1950, 9),
(11, 'La Planète des singes', 8, 1963, 8),
(12, 'Ravage', 7, 1943, 8),
(13, 'Le Maître du Haut Château', 6, 1962, 8),
(14, 'Le monde des Ā', 9, 1945, 7),
(15, 'La Fin de l’éternité', 3, 1955, 8),
(16, 'De la Terre à la Lune', 10, 1865, 10);