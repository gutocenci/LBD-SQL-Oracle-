delete from funcionarios where funcionarios.cdcargo = 'C002'

update funcionarios set cdcargo = 'C2' where funcionarios.cdcargo = 'C002'

DELETE FROM Funcionarios
WHERE funcionarios.CdCargo = 'C002'

DELETE FROM Cargos
WHERE CdCargo = 'C002'

update cargos set vrsalario = vrsalario + vrsalario * 0.1

update deptos set ramal = 330 where cddepto = 'D003'

update funcionarios
set cdsuperv = 1034
where cdsuperv = 1001

insert
into funcionarios
values (1050,'SEVERINO GOMES','10/10/96','M','C003','D001',1034)

select nrconta, dtabertura from contas

select * from contas where cdagencia = '0050'

select nmagencia, nrconta, dtabertura
from contas,agencia
where contas.cdagencia = agencias.cdagencia and cdagencia = '0050'

select dtmov,vrmov,nrconta from movimentos where nrconta = '1027'

select dtmov,vrmov,movimentos.nrconta from clientes,clicontas,movimentos where clientes.cdcliente = clicontas.cdcliente and clicontas.nrconta = movimentos.nrconta and nmcliente = 'joao da silva'

select * from contas 

select *
from contas
order by cdagencia

select nmagencia, nrconta, dtabertura
from contas, agencias
where contas.cdagencia = agencias.cdagencia
order by dtabertura

select *
from agencias, contas
where agencias.cdagencia = contas.cdagencia and agencias.cdagencia = '0040'

select *
from contas
where cdagencia = '0040'

select nrconta,dtabertura
from contas
where cdagencia ='0050'

select nrconta,vrsaldo,nmagencia
from agencias,contas
where agencias.cdagencia = contas.cdagencia

select nrconta,vrsaldo,nmagencia
from agencias a
inner join contas b
ON a.cdagencia = b.cdagencia

select clientes.*
from contas,clientes,clicontas
where clientes.cdcliente = clicontas.cdcliente and clicontas.nrconta = contas.nrconta and vrsaldo > 500

select nrconta, vrsaldo * 0.1 as decimovalor
from contas

select dtmov,vrmov,tpmov,nrconta
from movimentos
where nrconta = '1027'
order by dtmov

select nrconta
from contas
where cdagencia = '0060' and vrsaldo * 0.1 < 50

select nrconta, 'sugerir que va tomar no cu' as recomendacao
from contas
where vrsaldo > 500
UNION
select nrconta, 'Telefonar pq vc esta fodido'
from contas
where vrsaldo <=500

select nmcliente
from clientes
where cdagencia = '0050'

select dtmov,vrmov,tpmov,movimento.nrconta
from movimentos,clientes,contas,clicontas
where clientes.cdcliente = clicontas.cdcliente and clicontas.nrconta = contas.nrconta
      and contas.nrconta = movimentos.nrconta and nmcliente = 'Joao da Silva'
      
insert 
into clientes
values (00011,'gustavo montanini cenci','R ascaisbd',)

INSERT INTO Clientes (CdCliente, NmCliente, EndCliente, TelCliente, SexCliente, DtNasCliente, CPFCliente, RGCliente)
VALUES(‘00100’, ‘CESAR’, ‘R 15 DE AGOSTO, 25’, ’15 939393939’, ‘M’, SYSDATE, ‘939.383.839-09’, ’50.595.959 SSP’)

select count(cdsuperv)as qtd from funcionarios

select count(cdsuperv) as qtde from funcionarios where cdsuperv = '1001'

select sum(vrsalario) as total, min(vrsalario) as minimo ,max(vrsalario) as maximo, avg(vrsalario) as media
from funcionarios,cargos
where funcionarios.cdcargo = cargos.cdcargo

SELECT CdDepto, SUM( VrSalario ) AS TotalSalarios
FROM Funcionarios f, Cargos c
WHERE f.CdCargo = c.CdCargo
GROUP BY CdDepto

select sexo, avg(vrsalario) as total
from funcionarios,cargos
where funcionarios.cdcargo = cargos.cdcargo
group by sexo

SELECT NmAgencia, sum(contas.cdagencia = agencias.cdagencia) as total
FROM Contas, Agencias
WHERE Contas.CdAgencia = Agencias.CdAgencia
GROUP BY NmAgencia
HAVING COUNT(*) >= 2

SELECT CdAgencia, COUNT(*) AS Qtde
FROM Contas
GROUP BY CdAgencia

select *
from movimentos m,contas c,agencias a
where c.cdagencia = a.cdagencia and c.nrconta = m.nrconta and c.cdagencia = '0040'

SELECT * FROM Movimentos
WHERE NrConta IN (SELECT NrConta FROM Contas
WHERE CdAgencia = '0040')


SELECT COUNT(CdSuperv) AS Qtde
FROM Funcionarios
