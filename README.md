El script que comparto define un esquema para un sistema de gestión de proyectos, que incluye tablas como **Cliente**, **Proyecto**, **Empleado**, **Servicio**, y una tabla de relación llamada **AsignacionProyecto** para vincular proyectos, empleados y servicios.

### Descripción de las Tablas:

1. **Cliente**:
   - Contiene información de las empresas que solicitan proyectos.
   - Campos: `id_cliente`, `nombre`, `direccion`, `telefono`, `email`.

2. **Proyecto**:
   - Representa los proyectos asociados a los clientes.
   - Campos: `id_proyecto`, `nombre`, `direccion`, `fecha_inicio`, `fecha_fin`, `id_cliente` (clave foránea hacia Cliente).

3. **Empleado**:
   - Almacena información de los empleados asignados a los proyectos.
   - Campos: `id_empleado`, `nombre`, `apellido`, `cargo`, `salario`.

4. **Servicio**:
   - Describe los servicios ofrecidos como diseño arquitectónico, construcción, etc.
   - Campos: `id_servicio`, `nombre`, `descripcion`, `costo`.

5. **AsignacionProyecto**:
   - Relaciona proyectos, empleados y servicios, incluyendo detalles como horas trabajadas.
   - Campos: `id_asignacion`, `id_proyecto`, `id_empleado`, `id_servicio`, `horas_trabajo` (con claves foráneas hacia las tablas relacionadas).

### Observaciones:

- **Integridad referencial**: Todas las claves foráneas están correctamente definidas para asegurar la relación entre las tablas.
- **Carga de datos**: Cada tabla incluye inserciones que cubren más de 20 registros para simular un escenario real.
- **Expansión de datos**: Además de los datos iniciales, hay nuevas tuplas insertadas para demostrar un sistema en crecimiento.

###El script proporcionado está diseñado para gestionar la información de proyectos de construcción mediante una base de datos relacional. La estructura está organizada en varias tablas y relaciones entre ellas, lo que implica una serie de roles y políticas para garantizar la integridad, la seguridad y la eficacia en la gestión de datos. A continuación, se detallan los roles y políticas que pueden ser observados en el script:

### Roles en el Sistema

1. **Cliente**:
   - **Descripción**: Los clientes son empresas o entidades que solicitan proyectos de construcción. Cada cliente tiene un conjunto de datos asociados como nombre, dirección, teléfono y correo electrónico.
   - **Rol en el sistema**: Los clientes pueden ser responsables de la financiación y supervisión de los proyectos, pero no interactúan directamente con las otras tablas del sistema más allá de ser referenciados en los proyectos.

2. **Proyecto**:
   - **Descripción**: Un proyecto representa un trabajo específico en el que se realizan obras de construcción o servicios relacionados. Un proyecto está vinculado a un cliente.
   - **Rol en el sistema**: Los proyectos son los objetos centrales de la base de datos, y en ellos se gestionan los recursos (empleados, servicios) necesarios para su ejecución.

3. **Empleado**:
   - **Descripción**: Los empleados son las personas que trabajan en los proyectos. Cada empleado tiene detalles como su cargo y salario.
   - **Rol en el sistema**: Los empleados son asignados a los proyectos según las necesidades de cada uno. Tienen un vínculo directo con las tareas que se realizan en cada proyecto a través de la tabla de asignaciones.

4. **Servicio**:
   - **Descripción**: Los servicios son actividades específicas que se prestan dentro de los proyectos, tales como diseño arquitectónico, construcción, instalaciones, etc. Cada servicio tiene un costo asociado.
   - **Rol en el sistema**: Los servicios representan las actividades que los empleados realizarán dentro del proyecto y son clave para definir los presupuestos y el alcance de las obras.

5. **Asignación de Proyecto (AsignacionProyecto)**:
   - **Descripción**: Esta tabla gestiona la asignación de empleados a proyectos y servicios, incluyendo las horas trabajadas por cada empleado en cada servicio de un proyecto.
   - **Rol en el sistema**: Es esencial para gestionar la carga laboral de cada empleado dentro de los proyectos y es donde se conectan las tareas (servicios) con las personas que las realizan.

### Políticas del Sistema

1. **Integridad Referencial**:
   - **Relaciones entre tablas**: El sistema asegura que las relaciones entre las tablas estén correctamente definidas mediante el uso de claves foráneas. Por ejemplo:
     - La tabla **Proyecto** tiene una clave foránea hacia **Cliente** para garantizar que cada proyecto esté asociado a un cliente válido.
     - La tabla **AsignacionProyecto** incluye claves foráneas hacia las tablas **Proyecto**, **Empleado** y **Servicio**, lo que garantiza que las asignaciones se realicen solo si existen registros correspondientes en las otras tablas.
   - **Política**: La integridad referencial garantiza que no se puedan insertar datos inválidos o huérfanos en el sistema, lo que ayuda a mantener la coherencia de los datos y evita la creación de proyectos o asignaciones sin un cliente, empleado o servicio relacionado.

2. **Gestión de Datos y Crecimiento del Sistema**:
   - **Expansión**: El script contiene múltiples instrucciones `INSERT INTO` para poblar las tablas con registros iniciales, cubriendo más de 20 registros en cada una de las tablas. Esto simula un sistema en funcionamiento, con varios clientes, proyectos, empleados y servicios disponibles.
   - **Política**: Los datos iniciales permiten simular una base de datos funcional, pero el sistema está diseñado para escalar. El uso de claves foráneas facilita la expansión y la incorporación de más proyectos, empleados, clientes y servicios sin comprometer la integridad de las relaciones.

3. **Seguridad y Acceso a los Datos**:
   - Aunque el script no define explícitamente usuarios, roles de seguridad o políticas de acceso, se pueden deducir algunas prácticas relacionadas con la seguridad a nivel de base de datos, tales como:
     - **Privilegios de solo lectura** para roles como supervisores o auditores, que solo necesitarían acceder a la información de proyectos, clientes, empleados y servicios.
     - **Privilegios de escritura** para los administradores o coordinadores de proyectos que necesitan insertar o modificar registros en las tablas, como la asignación de empleados a proyectos.

4. **Control de la Carga de Trabajo**:
   - En la tabla **AsignacionProyecto**, se registra la cantidad de horas trabajadas por cada empleado en un proyecto, lo que permite monitorear la carga laboral de los empleados y la duración de los servicios realizados.
   - **Política**: El seguimiento de las horas trabajadas facilita la gestión de los recursos y asegura que se pueda realizar una correcta facturación y control de costos en función del tiempo dedicado por cada empleado a un servicio específico en cada proyecto.

5. **Aseguramiento de la Calidad**:
   - Las tablas de empleados y servicios incluyen detalles como cargos, salarios, y descripciones de los servicios, lo que ayuda a asegurar que los empleados estén calificados para los servicios asignados.
   - **Política**: Se pueden implementar políticas para verificar que los empleados con la formación y experiencia adecuadas sean asignados a los servicios que requieren su especialización, como en el caso de los arquitectos y los ingenieros estructurales.

### Políticas de Expansión de Datos

El script también presenta un modelo flexible que permite expandir y agregar más tuplas (filas) a cada tabla, lo que facilita la gestión del crecimiento de la base de datos. Algunas acciones claves son:
- **Incremento de proyectos**: Se pueden agregar nuevos proyectos que se asignan a los clientes ya existentes.
- **Nuevos empleados**: Se pueden agregar más empleados conforme se necesiten más recursos humanos para los proyectos.
- **Servicios adicionales**: Se pueden añadir nuevos tipos de servicios si la empresa empieza a ofrecer más tipos de trabajos dentro de la construcción.
