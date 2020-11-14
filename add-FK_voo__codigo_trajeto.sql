-- ALTER TABLE public.voo add codigo_origem varchar(250);
-- ALTER TABLE public.voo add codigo_destino varchar(250)

-- ALTER TABLE public.TRAJETO
-- drop constraint trajeto_pkey cascade;
-- fk_trecho__id_trajeto
-- fk_bilhete__id_trajeto


-- ALTER TABLE public.TRAJETO
-- add constraint trajeto_pkey PRIMARY KEY (codigo_origem, codigo_destino);

ALTER TABLE public.voo 
ADD CONSTRAINT FK_voo__codigo_trajeto
FOREIGN KEY (codigo_origem, codigo_destino) 
REFERENCES public.trajeto(codigo_origem, codigo_destino);

-- ALTER TABLE public.voo 
-- DROP CONSTRAINT FK_voo__codigo_destino;
-- FOREIGN KEY (codigo_destino) 
-- REFERENCES public.aeroporto(codigo_iata);