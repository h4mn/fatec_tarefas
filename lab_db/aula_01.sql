# http://algoritmoselogica.com.br/site2/moodle/course/view.php?id=59#section-2
USE bdclinicamedica;

#1. Recuperar o nome de todas as especialidades que são atendidas pelo centro médico, em ordem de nome.
#R: SELECT * FROM especialidade e ORDER BY e.esp_nome

#2. Exibir o nome de todos os médicos e sua especialidade, em ordem de especialidade e nome.
#R: SELECT m.med_nome, e.esp_nome FROM medico m, especialidade e WHERE m.esp_codigo = e.esp_codigo ORDER BY e.esp_nome, m.med_nome

#3. Recuperar o nome e código de todos os tipos de atendimento, em ordem descendente de nome.
#R: SELECT ta.tip_nome, ta.tip_codigo FROM tipoatendimento ta ORDER BY ta.tip_nome DESC

#4. Exibir o nome de todos os pacientes.
#R: SELECT p.pac_nome FROM paciente p

#5. Exibir o nome e telefones de todos os pacientes do “SUS” em ordem de nome.
#R: SELECT p.pac_nome, p.pac_telefone, ta.tip_nome FROM paciente p LEFT JOIN tipoatendimento ta ON ta.tip_codigo = p.tip_codigo WHERE ta.tip_nome = 'SUS' ORDER BY p.pac_nome

#6. Exibir o nome e telefones de todos os pacientes do “SUS” que moram em Santo André, em ordem de nome.
#R: SELECT * FROM paciente p LEFT JOIN tipoatendimento ta ON ta.tip_codigo = p.tip_codigo WHERE p.pac_cidade = 'Santo André' 	AND ta.tip_nome = 'SUS' ORDER BY p.pac_nome

#7. Quantos pacientes o centro médico possui?
#R: SELECT COUNT(*) FROM paciente p

#8. Quantos pacientes do tipo “PARTICULAR” o centro médico possui?
#R: SELECT COUNT(*) FROM paciente p LEFT JOIN tipoatendimento ta ON ta.tip_codigo = p.tip_codigo WHERE ta.tip_nome = 'PARTICULAR'

#9. Reajustar o salário de todos os médicos pediatras em 9,8% (utilize o código da especialidade - 6).
#R: UPDATE medico m SET m.med_salario = m.med_salario + (m.med_salario * 9.8 / 100) LEFT JOIN especialidade e ON e.esp_codigo = m.esp_codigo WHERE e.esp_codigo = 6

#10. Qual será o novo salário, se for aplicado um reajuste de 4,08% sobre todos os salários. Faça uma simulação.
#R: SELECT m.med_salario, (m.med_salario + (m.med_salario * 4.08/100)) FROM medico m

#11. Escreva as instruções para criar o banco, as tabelas e as restrições (not null, unique, ...); as restrições de chave estrangeira devem ser criadas com o alter table.
#R: Feito no arquivo metadata_aula_01

#12. Exibir o nome do paciente, a data e hora de todas as consultas realizadas nos meses de janeiro a março de 2017, em ordem de data, hora e nome.
#R: SELECT p.pac_nome, c.con_data, c.con_hora FROM consulta c LEFT JOIN paciente p ON p.pac_numero = c.pac_numero WHERE MONTH(c.con_data) >=1 AND  MONTH(c.con_data) <=3 ORDER BY c.con_data, c.con_hora, p.pac_nome

#13. Exibir o nome do paciente, a data, hora e especialidade de todas as consultas realizadas em 2017, em ordem nome, especialidade e data
#R: SELECT p.pac_nome, c.con_data, c.con_hora, e.esp_nome FROM consulta c LEFT JOIN paciente p ON p.pac_numero = c.pac_numero LEFT JOIN medico m ON m.med_crm = c.med_crm LEFT JOIN especialidade e ON e.esp_codigo = m.esp_codigo WHERE YEAR(c.con_data) = 2017 ORDER BY p.pac_nome, e.esp_nome, c.con_data

#14. Quantas consultas na especialidade  "Pediatria" foram agendadas para pacientes do tipo 'Particular' "SUS"?
#R: SELECT COUNT(*) FROM consulta c INNER JOIN medico m ON m.med_crm = c.med_crm INNER JOIN especialidade e ON e.esp_codigo = m.esp_codigo INNER JOIN paciente p ON p.pac_numero = c.pac_numero INNER JOIN tipoatendimento ta ON ta.tip_codigo = p.tip_codigo WHERE e.esp_nome = 'Pediatria' AND ta.tip_nome = 'Particular'

#15. Exibir o nome do pacientes e especialidade, associada a pacientes de fora do país.
#16. Para cada consulta realizada pelo médico "Silvio", exibir o número da consulta, nome do paciente, data, hora de inicio, hora de fim, histórico e telefone do paciente; em ordem de data, nome e telefone do paciente.
#17. Quantos pacientes na especialidade "Pediatria", do Tipo "Plano de Saúde" foram atendidos?
#18. Exibir o número da consulta, nome do paciente, data, hora de inicio, hora de fim e histórico de todas as consultas que contém no histórico o termo "febre", entre os pacientes da região norte, em ordem de estado e nome do paciente.
#19. Alterar o conteúdo do campo pac_uf, de "SO"  para "SP".
#20. No ano de 2016, foram atendidos pacientes de quais cidades?