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
