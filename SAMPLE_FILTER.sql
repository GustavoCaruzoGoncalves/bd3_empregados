	select
		depto.nome as departamento,
		count(emp.cod_emp) as n_empregados,
		concat("R$ ",sum(emp.salario)) as orcamento_rh,
        concat("R$ ",format((sum(emp.salario)/count(emp.cod_emp)),2)) as media_salario
	from
		departamento depto,
		empregado emp
	where
		depto.cod_depto=emp.cod_depto
	group by
		depto.nome;
        
SELECT
    emp.nome as empregado,
    count(cod_dep) as dependentes
FROM
	empregado emp,
    dependente dep
WHERE
	emp.cod_emp=dep.cod_emp
GROUP BY
    emp.nome;