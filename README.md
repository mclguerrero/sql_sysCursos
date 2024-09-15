# BD sistema_cursos

Este proyecto contiene los archivos necesarios para la creación, gestión y consultas de una base de datos MySQL destinada a un sistema de gestión de cursos.

## Índice

1. [Requisitos](#requisitos)
2. [Instalación](#instalación)
  - [Paso 1: Crear la Base de Datos](#paso-1-crear-la-base-de-datos)
  - [Paso 2: Crear las Tablas](#paso-2-crear-las-tablas)
  - [Paso 3: Insertar Datos Iniciales](#paso-3-insertar-datos-iniciales)
  - [Paso 4: Restaurar un Backup (Opcional)](#paso-4-restaurar-un-backup-opcional)
  - [Paso 5: Realizar Consultas](#paso-5-realizar-consultas)
3. [Consultas Adicionales](#consultas-adicionales)

## Requisitos

- MySQL Server 
- MySQL Workbench 

## Instalación

### Paso 1: Crear la Base de Datos

Crea la base de datos ejecutando el siguiente comando

```bash
CREATE DATABASE sistema_cursos;
USE sistema_cursos;
```

### Paso 2: Crear las Tablas
En la carpeta `scripts/` se encuentra el archivo `create_tables.sql`, el cual contiene el código necesario para crear las tablas en la base de datos.

```bash
CREATE TABLE nombre_tabla (
    id INT AUTO_INCREMENT PRIMARY KEY,
    columna1 DATATYPE [constraints],
    columna2 DATATYPE [constraints],
    ...
);
```

* `cursos`

| Columna           | Tipo          | Descripción                          |
| :---------------- | :------------ | :----------------------------------- |
| id              | INT          | Identificador único para cada curso |
| nombre          | VARCHAR(100) | Nombre del curso      |
| descripcion     | TEXT         | Descripción del curso |
| duracion        | INT          | Duración del curso en horas |
| isActivo        | TINYINT      | Indica si el curso está activo (1) o inactivo (0) |
| fecha_creacion  | DATETIME     | Fecha de creación del curso |
| fecha_modificacion | DATETIME  | Fecha de la última modificación del curso |

* `estudiantes`

| Columna            | Tipo          | Descripción                          |
| :----------------- | :------------ | :----------------------------------- |
| id               | INT          |  Identificador único para cada estudiante |
| nombres          | VARCHAR(50)  |  Nombres del estudiante |
| apellidos        | VARCHAR(50)  |  Apellidos del estudiante |
| nro_identificacion | VARCHAR(10) |  Número de identificación del estudiante |
| email            | VARCHAR(150) |  Correo electrónico del estudiante |
| celular          | VARCHAR(10)  |  Número de teléfono del estudiante |
| isActivo         | TINYINT      |  Indica si el estudiante está activo (1) o inactivo (0) |
| fecha_creacion   | DATETIME     |  Fecha de creación del registro del estudiante |
| fecha_modificacion | DATETIME   | Fecha de la última modificación del registro del estudiante |

* `status_inscripciones`

| Columna           | Tipo          | Descripción                          |
| :---------------- | :------------ | :----------------------------------- |
| id              | INT          | Identificador único para cada estado de inscripción |
| nombre          | VARCHAR(50)  | Nombre del estado de inscripción |

* `inscripciones`

| Columna            | Tipo          | Descripción                          |
| :----------------- | :------------ | :----------------------------------- |
| id               | INT          | Identificador único para cada inscripción |
| curso_id         | INT          | Identificador del curso al que se inscribe el estudiante |
| estudiante_id    | INT          | Identificador del estudiante que se inscribe |
| fecha_inscripcion | DATE        | Fecha de la inscripción |
| status_id        | INT          | Identificador del estado de inscripción |
| fecha_creacion   | DATETIME     | Fecha de creación del registro de inscripción |
| fecha_modificacion | DATETIME   | Fecha de la última modificación del registro de inscripción |

### Paso 3: Insertar Datos Iniciales
En la carpeta `scripts/` se encuentra el archivo `insert_data.sql`, el cual contiene el código necesario para insertar datos en las tablas.

```bash
INSERT INTO nombre_tabla (columna1, columna2, ...)
VALUES (valor1, valor2, ...);
```

### Paso 4: Restaurar un Backup (Opcional)

Si deseas restaurar un backup completo de la base de datos, puedes hacerlo utilizando un archivo de la carpeta `backups/`.

- Abre MySQL Workbench
- Crea la base de datos
```bash
CREATE DATABASE zzz_bd;
USE zzz_bd;
```
- En el menú superior, ve a `Server`
  - Selecciona `Data Import` desde el menú desplegable
- Configura la Importación
  - Selecciona `Import from Self-Contained File`
  - Haz clic en el botón `...` para seleccionar el archivo SQL del backup que deseas restaurar
  - En el panel de Default Target Schema, selecciona la BD donde deseas importar los datos. Si el esquema aún no existe, deberás crear uno nuevo antes de continuar
  - Después de configurar los ajustes, haz clic en el botón `Start Import` para comenzar el proceso de restauración

### Paso 5: Realizar Consultas
En la carpeta `scripts/` se encuentra el archivo `queries.sql`, el cual contiene el código necesario para ejecutar las consultas predefinidas.

* Obtener todos los cursos con los estudiantes inscritos y su estado de inscripción

```bash
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
```

### Consultas Adicionales

* Consultar datos:
Consultar Todos los Cursos
```bash
SELECT * FROM cursos;
```
* Actualizar datos:
Actualizar el Status de una Inscripción
```bash
UPDATE inscripciones
SET status_id = 2
WHERE id = 1;
```
* Eliminar datos:
Eliminar una Inscripción
```bash
DELETE FROM inscripciones WHERE id = 1;
```