with trajeto (id_trajeto, num_vendas) as (
    select 
        v.id_trajeto, 
        count(v.id_viagem) as num_vendas

    from viagem as v

    group by v.id_trajeto

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
trajeto_aeroporto (id_trajeto, id_aeroporto) as (
    select distinct
		t_v.id_trajeto,
        a.id_aeroporto
    from trajeto_voo as t_v
    inner join voo_aeroporto as v_a 
          on v_a.id_voo = t_v.id_voo
    inner join aeroporto as a 
          on v_a.id_aeroporto = a.id_aeroporto
)

select
	t.id_trajeto,
    t.num_vendas, 
    avg(avi.capacidade_bagagem) as media_bagagem,
    aer.nome as nome_aeroporto	

from trajeto as t
inner join trajeto_aeroporto as t_aer 
      on t_aer.id_trajeto = t.id_trajeto
inner join aeroporto as aer
      on t_aer.id_aeroporto = aer.id_aeroporto
inner join trajeto_aviao as t_avi
      on t_avi.id_trajeto = t.id_trajeto
inner join aviao as avi
      on t_avi.id_aviao = avi.id_aviao

group by t.id_trajeto, t.num_vendas, aer.id_aeroporto, aer.nome
