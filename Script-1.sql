CREATE table autores(
	id_autor int primary key not null,
	nombre text,
	nacionalidad text
);

create table libros(
	id_libro int primary key not null,
	titulo text,
	id_autor int,
	FOREIGN key (id_autor) references autores(id_autor)
);


INSERT INTO autores (id_autor, nombre, nacionalidad) VALUES
(1, 'Gabriel García Márquez', 'Colombiano'),
(2, 'J.K. Rowling', 'Británica'),
(3, 'Isabel Allende', 'Chilena'),
(4, 'Haruki Murakami', 'Japonés'),
(5, 'Stephen King', 'Estadounidense');

INSERT INTO libros (id_libro, titulo, id_autor) VALUES
(1, 'Cien años de soledad', 1),
(2, 'Harry Potter', 2),
(3, 'La casa de los espíritus', 3),
(4, 'Kafka en la orilla', 4),
(5, 'It', 5),
(6, 'El resplandor', 5);

'autores'
SELECT * from autores

'libros'
SELECT * from libros

'Todos los libros de Stephen King'
select titulo from libros l join autores a on l.id_autor = a.id_autor where l.id_autor = 5;

'Autores y libros'
select a.nombre, l.titulo from libros l FULL OUTER join autores a on l.id_autor = a.id_autor;