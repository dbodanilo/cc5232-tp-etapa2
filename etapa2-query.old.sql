-- Quais foram os top 5 trajetos mais vendidos. 
-- Indicar os aeroportos que pertencem a esse trajeto 
-- e qual a capacidade média de bagagem dos aviões que foram utilizados."

with top5_trajeto (id_trajeto, num_vendas) as (
    select 
        v.id_trajeto, 
        count(v.id_viagem) as num_vendas

    from viagem as v

    group by v.id_trajeto

    order by num_vendas desc
    limit 5
)

with top5_trajeto_voo (id_trajeto, id_voo) as (
    select 
        traj.id_trajeto, 
        traj.num_vendas, 
        v.id_voo
    from top5_trajeto as traj
    inner join trecho as trec 
          on trec.id_trajeto = traj.id_trajeto
    inner join voo as v 
          on trec.id_voo = v.id_voo
)

with top5_trajeto_media_bagagem (id_trajeto, media_bagagem) as (
    select 
        t_v.id_trajeto,
        avg(avi.capacidade_bagagem) as media_bagagem
    from top5_trajeto_voo as t_v
    inner join voo 
          on t_v.id_voo = voo.id_voo
    inner join aviao as avi 
          on voo.id_aviao = avi.id_aviao
)

with top5_trajeto_aeroporto (id_trajeto, id_aeroporto) as (
    select distinct 
        v.id_trajeto, 
        a.id_aeroporto
    from top5_trajeto_voo as t_v
    inner join voo_aeroporto as v_a 
          on v_a.id_voo = t_v.id_voo
    inner join aeroporto as a 
          on v_a.id_aeroporto = a.id_aeroporto
)

select 
    traj.id_trajeto, 
    traj.num_vendas, 
    aer.nome, as nome_aeroporto
    t_b.media_bagagem

from top5_trajeto as traj
inner join top5_trajeto_aeroporto as t_a
      on t_a.id_trajeto = traj.id_trajeto
inner join aeroporto as aer 
      on t_a.id_aeroporto = aer.id_aeroporto
inner join top5_trajeto_media_bagagem as t_b
      on t_b.id_trajeto = traj.id_trajeto
