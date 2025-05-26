/*c. Muestre el apellido, salario y compensación anual de los empleados. Calcule la compensación anual 
como el salario multiplicado por 12 más un bono único de 100 pesos. Luego, usando paréntesis 
altere el orden de precedencia y advierta diferencias en el cálculo. Finalmente titule la columna con 
“Compensación Anual”. */
select apellido,salario,salario*12+100 as 'comp_anual' from empleados