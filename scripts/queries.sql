
-- 1. Obtener todos los cursos con los estudiantes inscritos y su estado de inscripción
SELECT c.nombre AS curso, 
       e.nombres AS estudiante, 
       e.apellidos, 
       si.nombre AS estado_inscripcion,
       i.fecha_inscripcion
FROM inscripciones i
JOIN cursos c ON i.curso_id = c.id
JOIN estudiantes e ON i.estudiante_id = e.id
JOIN status_inscripciones si ON i.status_id = si.id
ORDER BY i.fecha_inscripcion DESC;

-- 2. Obtener la cantidad de estudiantes inscritos en cada curso
SELECT c.nombre AS curso, 
       COUNT(i.estudiante_id) AS total_estudiantes
FROM cursos c
LEFT JOIN inscripciones i ON c.id = i.curso_id
GROUP BY c.nombre;

-- 3. Listar los estudiantes inscritos en cursos que tengan más de 40 horas de duración
SELECT e.nombres, 
       e.apellidos, 
       c.nombre AS curso, 
       c.duracion
FROM estudiantes e
JOIN inscripciones i ON e.id = i.estudiante_id
JOIN cursos c ON i.curso_id = c.id
WHERE c.duracion > 25;

-- 4. Consultar los cursos que no tienen inscripciones activas (cursos sin estudiantes actualmente)
SELECT c.nombre AS curso
FROM cursos c
LEFT JOIN (
    SELECT curso_id
    FROM inscripciones
    WHERE status_id IN (1, 2) 
    GROUP BY curso_id
) i ON c.id = i.curso_id
WHERE i.curso_id IS NULL;

-- 5. Obtener los estudiantes que tienen inscripciones en más de un curso
SELECT e.nombres, 
       e.apellidos, 
       COUNT(i.curso_id) AS cantidad_cursos
FROM estudiantes e
JOIN inscripciones i ON e.id = i.estudiante_id
GROUP BY e.id
HAVING COUNT(i.curso_id) > 1;

-- 6. Obtener los estudiantes cuyo curso esté en estado "Aprobada"
SELECT e.nombres, 
       e.apellidos, 
       c.nombre AS curso,
       si.nombre AS estado
FROM estudiantes e
JOIN inscripciones i ON e.id = i.estudiante_id
JOIN cursos c ON c.id = i.curso_id
JOIN status_inscripciones si ON si.id = i.status_id
WHERE si.nombre = 'Aprobada';

-- 7 Listar los estudiantes y el curso más reciente en el que se inscribieron
SELECT e.nombres, 
       e.apellidos, 
       c.nombre AS curso, 
       i.fecha_inscripcion
FROM estudiantes e
JOIN inscripciones i ON e.id = i.estudiante_id
JOIN cursos c ON c.id = i.curso_id
JOIN (
    SELECT estudiante_id, MAX(fecha_inscripcion) AS fecha_mas_reciente
    FROM inscripciones
    GROUP BY estudiante_id
) i_reciente ON i.estudiante_id = i_reciente.estudiante_id 
            AND i.fecha_inscripcion = i_reciente.fecha_mas_reciente;


-- 8. Obtener todos los cursos que tienen inscripciones "Canceladas"
SELECT c.nombre AS curso, 
       COUNT(i.id) AS total_canceladas
FROM cursos c
JOIN inscripciones i ON c.id = i.curso_id
JOIN status_inscripciones si ON i.status_id = si.id
WHERE si.nombre = 'Cancelada'
GROUP BY c.nombre;

-- 9. Listar los cursos activos (isActivo = 1) con inscripciones pendientes (status = 'Pendiente')
SELECT c.nombre AS curso, 
       COUNT(i.id) AS inscripciones_pendientes
FROM cursos c
JOIN inscripciones i ON c.id = i.curso_id
JOIN status_inscripciones si ON i.status_id = si.id
WHERE c.isActivo = 1 AND si.nombre = 'Pendiente'
GROUP BY c.nombre;
