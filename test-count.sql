
with test (uid, aggr1, aggr2) as (
	select 1, 0, 0
	union
	select 1, 0, 1
	union
	select 1, 0, 1
	union
	select 1, 1, 0
	union
	select 1, 1, 0
	union
	select 1, 1, 0
	union 
	select 1, 1, 1
)

select uid, aggr1, count(*) from test group by uid, aggr1
