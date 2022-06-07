-- SELECCION
SELECT
    emp.runempleado,
    emp.nombreemp,
    emp.sexo,
    emp.fecha_nac,
    emp.sueldobase,
    suc.id_suc,
    suc.dir_suc,
    cat.nom_categ,
    cat.comis_categ
FROM empleado emp
-- AGREGADO
right JOIN Sucursal suc ON suc.id_suc = emp.id_suc
right JOIN Categoria cat ON cat.id_categ = emp.id_categ

-- CONDICIÓN
WHERE 
    SUELDOBASE > :v_sueldo
    AND SEXO = 'F'
-- ORDEN (ASC/DESC)
ORDER BY SueldoBase DESC;
