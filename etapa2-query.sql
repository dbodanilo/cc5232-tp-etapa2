-- Quais foram os top 5 trajetos mais vendidos. 
-- Indicar os aeroportos que pertencem a esse trajeto 
-- e qual a capacidade média de bagagem dos aviões que foram utilizados."

with top5_trajeto as (
select 
    c.codigo_origem, 
    c.codigo_destino, 
    count(*) as num_vendas

from compra as c

group by c.codigo_origem, c.codigo_destino
order by num_vendas desc
limit 5
)

-- select * from top5_trajeto

, top5_trajeto_voo as (
select
	distinct
    c.codigo_origem,
    c.codigo_destino,
	b.codigo_voo,
	v.modelo_aviao
	
	from compra as c
	inner join bilhete as b
		  on (b.passaporte_passageiro, b.datahora_compra) = (c.passaporte_passageiro, c.datahora_compra)
	inner join voo as v
	      on b.codigo_voo = v.codigo_voo
	
	where (c.codigo_origem, c.codigo_destino) in 
	(select codigo_origem, codigo_destino from top5_trajeto)
)

-- select * from top5_trajeto_voo;

, top5_trajeto_bagagem as (
select
    top5.codigo_origem,
	top5.codigo_destino,
	avg(avi.capacidade_bagagem_m3) as media_bagagem
	
	from top5_trajeto_voo as top5
	inner join voo
		  on top5.codigo_voo = voo.codigo_voo
	inner join aviao as avi
		  on voo.modelo_aviao = avi.modelo_aviao
	
	group by (top5.codigo_origem, top5.codigo_destino)
)

-- select * from top5_trajeto_bagagem;

, top5_trajeto_aeroporto as (
select distinct * 
from (
(select
	top5.codigo_origem,
	top5.codigo_destino,
	v.codigo_origem as codigo_aeroporto
	
	from top5_trajeto_voo as top5
	inner join voo as v
	      on top5.codigo_voo = v.codigo_voo)
union
(select 
	top5.codigo_origem, 
	top5.codigo_destino,
	v.codigo_destino as codigo_aeroporto
 
	from top5_trajeto_voo as top5
	inner join voo as v
	      on top5.codigo_voo = v.codigo_voo)
) as trajeto_aeroporto
)

-- select * from top5_trajeto_aeroporto

select
	aer_orig.nome as origem,
	aer_dest.nome as destino, 
	top5.num_vendas,
	t_b.media_bagagem,
	aer.nome as aeroporto	
	
	from top5_trajeto as top5
	inner join top5_trajeto_bagagem as t_b
		  on (t_b.codigo_origem, t_b.codigo_destino) = (top5.codigo_origem, top5.codigo_destino)
	inner join top5_trajeto_aeroporto as t_a
		  on (t_a.codigo_origem, t_a.codigo_destino) = (top5.codigo_origem, top5.codigo_destino)
	inner join aeroporto as aer_orig
	      on t_a.codigo_origem = aer_orig.codigo_iata
	inner join aeroporto as aer_dest
		  on t_a.codigo_destino = aer_dest.codigo_iata
	inner join aeroporto as aer
		  on t_a.codigo_aeroporto = aer.codigo_iata
		  
order by top5.num_vendas desc, t_b.media_bagagem desc;
