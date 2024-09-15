
INSERT INTO cursos (nombre, descripcion, duracion, isActivo) VALUES
('Programación en Python', 'Curso básico de programación en Python', 30, 1),
('Introducción a JavaScript', 'Curso para principiantes en JavaScript', 25, 1),
('Diseño de Bases de Datos', 'Curso sobre modelado y diseño de bases de datos', 40, 1),
('Desarrollo Web con HTML y CSS', 'Curso sobre creación de páginas web con HTML y CSS', 20, 1),
('Machine Learning', 'Curso introductorio a Machine Learning', 50, 1),
('Desarrollo de APIs con Node.js', 'Curso sobre creación de APIs usando Node.js', 35, 1),
('Seguridad Informática', 'Curso sobre fundamentos de la seguridad informática', 60, 1);

INSERT INTO estudiantes (nombres, apellidos, nro_identificacion, email, celular, isActivo) VALUES
('Juan', 'Pérez', '1234567890', 'juan.perez@gmail.com', '3001234567', 1),
('María', 'González', '1234567891', 'maria.gonzalez@gmail.com', '3001234568', 1),
('Carlos', 'Rodríguez', '1234567892', 'carlos.rodriguez@gmail.com', '3001234569', 1),
('Ana', 'López', '1234567893', 'ana.lopez@gmail.com', '3001234570', 1),
('Luis', 'Martínez', '1234567894', 'luis.martinez@gmail.com', '3001234571', 1),
('Paola', 'Gutiérrez', '1234567895', 'paola.gutierrez@gmail.com', '3001234572', 1),
('Miguel', 'Hernández', '1234567896', 'miguel.hernandez@gmail.com', '3001234573', 1),
('Sofía', 'Jiménez', '1234567897', 'sofia.jimenez@gmail.com', '3001234574', 1),
('Andrés', 'Ruiz', '1234567898', 'andres.ruiz@gmail.com', '3001234575', 1),
('Laura', 'Castillo', '1234567899', 'laura.castillo@gmail.com', '3001234576', 1),
('Daniel', 'Suarez', '1234567810', 'daniel.suarez@gmail.com', '3001234580', 1),
('Carolina', 'Morales', '1234567811', 'carolina.morales@gmail.com', '3001234581', 1),
('Jorge', 'Ramirez', '1234567812', 'jorge.ramirez@gmail.com', '3001234582', 1),
('Patricia', 'Rivas', '1234567813', 'patricia.rivas@gmail.com', '3001234583', 1),
('Fernando', 'Díaz', '1234567814', 'fernando.diaz@gmail.com', '3001234584', 1),
('Gabriela', 'Mejía', '1234567815', 'gabriela.mejia@gmail.com', '3001234585', 1),
('Ricardo', 'Vargas', '1234567816', 'ricardo.vargas@gmail.com', '3001234586', 1),
('Silvia', 'Quintero', '1234567817', 'silvia.quintero@gmail.com', '3001234587', 1),
('Héctor', 'Cruz', '1234567818', 'hector.cruz@gmail.com', '3001234588', 1),
('Mónica', 'Paredes', '1234567819', 'monica.paredes@gmail.com', '3001234589', 1),
('Sergio', 'Vega', '1234567820', 'sergio.vega@gmail.com', '3001234589', 1),
('Natalia', 'García', '1234567821', 'natalia.garcia@gmail.com', '3001234590', 1),
('Ricardo', 'Salazar', '1234567822', 'ricardo.salazar@gmail.com', '3001234591', 1),
('Verónica', 'Gómez', '1234567823', 'veronica.gomez@gmail.com', '3001234592', 1);

INSERT INTO status_inscripciones (nombre) VALUES
('Pendiente'), 
('Aprobada'), 
('Cancelada');

INSERT INTO inscripciones (curso_id, estudiante_id, fecha_inscripcion, status_id) VALUES
-- Curso de Programación en Python
(1, 1, '2024-07-01', 1), -- Juan Pérez
(1, 2, '2024-07-02', 1), -- María González
(1, 3, '2024-07-03', 1), -- Carlos Rodríguez
(1, 4, '2024-07-04', 2), -- Ana López
(1, 5, '2024-07-05', 1), -- Luis Martínez
(1, 6, '2024-07-06', 3), -- Paola Gutiérrez
(1, 7, '2024-07-07', 1), -- Miguel Hernández
(1, 8, '2024-07-08', 3), -- Sergio Vega

-- Curso de Introducción a JavaScript
(2, 1, '2024-07-10', 1), -- Juan Pérez
(2, 2, '2024-07-11', 1), -- María González
(2, 4, '2024-07-12', 2), -- Ana López
(2, 7, '2024-07-13', 1), -- Miguel Hernández
(2, 8, '2024-07-14', 2), -- Sergio Vega
(2, 9, '2024-07-15', 3), -- Natalia García
(2, 10, '2024-07-16', 1), -- Ricardo Salazar

-- Curso de Diseño de Bases de Datos
(3, 3, '2024-07-18', 1), -- Carlos Rodríguez
(3, 4, '2024-07-19', 2), -- Ana López
(3, 5, '2024-07-20', 1), -- Luis Martínez
(3, 7, '2024-07-21', 1), -- Miguel Hernández
(3, 8, '2024-07-22', 2), -- Sergio Vega
(3, 9, '2024-07-23', 2), -- Natalia García
(3, 10, '2024-07-24', 1), -- Ricardo Salazar
(3, 11, '2024-07-25', 3), -- Verónica Gómez

-- Curso de Desarrollo Web con HTML y CSS
(4, 2, '2024-07-26', 1), -- María González
(4, 3, '2024-07-27', 2), -- Carlos Rodríguez
(4, 4, '2024-07-28', 2), -- Ana López
(4, 6, '2024-07-29', 1), -- Paola Gutiérrez
(4, 7, '2024-07-30', 1), -- Miguel Hernández
(4, 8, '2024-07-31', 2), -- Sergio Vega
(4, 9, '2024-08-01', 3), -- Natalia García
(4, 12, '2024-08-02', 3); -- Ricardo Salazar
