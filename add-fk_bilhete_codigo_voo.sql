
-- ALTER TABLE public.bilhete 
-- ADD codigo_voo VARCHAR(250) 
-- DROP codigo_origem,
-- DROP codigo_destino;

-- UPDATE public.bilhete AS b
-- SET (codigo_voo) =
--   (SELECT v.codigo
--    FROM public.voo AS v
--    WHERE b.id_voo = v.id_voo)

-- ALTER TABLE public.bilhete
-- DROP CONSTRAINT fk_bilhete_codigo_voo
-- FOREIGN KEY (id_voo) REFERENCES public.voo (id_voo)

-- ALTER TABLE public.voo
-- DROP CONSTRAINT voo_pkey 
-- PRIMARY KEY (id_voo)

-- ALTER TABLE public.voo
-- ADD CONSTRAINT voo_pkey 
-- PRIMARY KEY (codigo)

ALTER TABLE public.bilhete
ADD CONSTRAINT fk_bilhete__codigo_voo
FOREIGN KEY (codigo_voo) 
REFERENCES public.voo (codigo);
