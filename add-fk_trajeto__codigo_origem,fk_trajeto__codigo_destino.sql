
-- ALTER TABLE public.trajeto
-- DROP CONSTRAINT fk_trajeto__codigo_destino
-- DROP CONSTRAINT fk_trajeto__codigo_origem

ALTER TABLE public.aeroporto
-- DROP CONSTRAINT aeroporto_pkey

ADD CONSTRAINT aeroporto_pkey
PRIMARY KEY (codigo_aeroporto)

ALTER TABLE public.trajeto
-- ADD CONSTRAINT fk_trajeto__codigo_origem
-- FOREIGN KEY (codigo_origem)
-- REFERENCES public.aeroporto (codigo_aeroporto)
ADD CONSTRAINT fk_trajeto__codigo_destino
FOREIGN KEY (codigo_destino)
REFERENCES public.aeroporto (codigo_aeroporto)
