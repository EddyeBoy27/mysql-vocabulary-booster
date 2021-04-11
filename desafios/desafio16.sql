-- Crie uma função chamada BuscarQuantidadeDeEmpregosPorFuncionario que,
-- ao receber o id de um funcionário, vá até a tabela job_history, no banco de dados hr e retorne a
-- quantidade de empregos já gravados no sistema relacionados a esse funcionário. 
-- Confirme que sua function retorna o valor 2 ao ser chamada passando um funcionário com id 101.

USE hr;

DELIMITER $$

CREATE FUNCTION BuscarQuantidadeDeEmpregosPorFuncionario(employee_id int)
RETURNS INT READS SQL DATA 
BEGIN 
DECLARE 
  full_value INT;
SELECT
  COUNT(*)
FROM
  hr.job_history
WHERE
  hr.job_history.employee_id = employee_id INTO full_value;
RETURN full_value;
END $$
DELIMITER ;
SELECT
  BuscarQuantidadeDeEmpregosPorFuncionario(101);
