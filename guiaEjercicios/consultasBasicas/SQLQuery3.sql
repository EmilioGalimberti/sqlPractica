/*c. Muestre el apellido, salario y compensaci�n anual de los empleados. Calcule la compensaci�n anual 
como el salario multiplicado por 12 m�s un bono �nico de 100 pesos. Luego, usando par�ntesis 
altere el orden de precedencia y advierta diferencias en el c�lculo. Finalmente titule la columna con 
�Compensaci�n Anual�. */
select apellido,salario,salario*12+100 as 'comp_anual' from empleados