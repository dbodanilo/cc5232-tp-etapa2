-- Quais foram os top 5 trajetos mais vendidos. 
-- Indicar os aeroportos que pertencem a esse trajeto 
-- e qual a capacidade média de bagagem dos aviões que foram utilizados."

select 
    p_j.codigo_origem, 
    p_j.codigo_destino, 
    count(p_j.passaporte_passageiro) as num_vendas

from passageiro_trajeto as p_j

group by p_j.codigo_origem, p_j.codigo_destino
order by num_vendas desc
limit 5

-- trajeto como lista de aeroportos
-- bilhete como enlace de aeroportos e um voo
-- preço não vai no voo - interno, nem no trajeto

-- ex.: 
-- trajeto: (origem, destino) (abstrato, aceita escalas)
--   ('COR', 'GRU')
-- trecho: (origem, destino) (abstrato, apenas rotas diretas)
--   ('IGU', 'GRU') (MELHOR NÃO DISTINGUIR)
-- voo: (trecho, datahora, aviao) (concreto)
--   (('IGU', 'GRU'), '2020-11-13T00:24:00-03:00', 'Airbus 321')
-- bilhete: (voo, assento, preço): (voo, assento) -> preço
-- venda: (trajeto, bilhetes)
-- voos: (COR, IGU, datahora, aviao), (IGU, GRU, datahora, aviao)

-- entidade assento? (voo, codigo, preco)
-- bilhete entao repetiria preco para fins de histórico e se relacionaria a um assento




with top5_trajetos (id_trajeto, num_vendas) as (
	select
		trajeto.id_trajeto,
		count(venda.id_venda) as num_vendas,

	from trajeto
	left join venda 
		 on venda.id_trajeto = trajeto.id_trajeto
	group by trajeto.id_trajeto
	order by num_vendas desc 
	limit 5
)
select
  trajeto.id_trajeto,
  aeroporto.codigo_iata, 
from top5_trajetos as trajeto
inner join aeroporto


with top5_trajeto (id_trajeto, num_vendas) as (
    select 
        b.id_trajeto, 
        count(b.id_passageiro) as num_vendas
		-- ficavam melhor agregados na entidade 'viagem'

    from bilhete as b

    group by b.id_trajeto, b.id_passageiro

    order by num_vendas desc
    limit 5
), 
trajeto_voo (id_trajeto, id_voo) as (
    select 
        traj.id_trajeto,
        v.id_voo
    from trajeto as traj
    inner join trecho as trec 
          on trec.id_trajeto = traj.id_trajeto
    inner join voo as v 
          on trec.id_voo = v.id_voo
), 
trajeto_aviao (id_trajeto, id_aviao) as (
    select
        t_v.id_trajeto,
        v.id_aviao
    from trajeto_voo as t_v
    inner join voo as v 
          on t_v.id_voo = v.id_voo
), 
trajeto_aeroporto (id_trajeto, codigo_aeroporto) as (
    select distinct
        t_v.id_trajeto,
        a.codigo_iata
    from trajeto_voo as t_v
    inner join voo_aeroporto as v_a 
          on v_a.id_voo = t_v.id_voo
    inner join aeroporto as a 
          on v_a.codigo_aeroporto = a.codigo_iata
)

select
    t.id_trajeto,
    t.num_vendas, 
    avg(avi.capacidade_bagagem_m3) as media_bagagem,
    aer.nome as nome_aeroporto	

from top5_trajeto as t
inner join trajeto_aeroporto as t_aer 
      on t_aer.id_trajeto = t.id_trajeto
inner join aeroporto as aer
      on t_aer.codigo_aeroporto = aer.codigo_iata
inner join trajeto_aviao as t_avi
      on t_avi.id_trajeto = t.id_trajeto
inner join aviao as avi
      on t_avi.id_aviao = avi.id_aviao

group by t.id_trajeto, t.num_vendas, aer.codigo_iata, aer.nome
