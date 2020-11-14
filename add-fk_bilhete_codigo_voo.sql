
ALTER TABLE public.bilhete 

-- ALTER TABLE public.bilhete
-- DROP CONSTRAINT fk_bilhete__codigo_voo

-- ALTER TABLE public.voo
-- DROP CONSTRAINT voo_pkey

-- ALTER TABLE public.voo
-- ADD CONSTRAINT voo_pkey
-- PRIMARY KEY (codigo_voo)

ALTER TABLE public.bilhete
ADD CONSTRAINT fk_bilhete__codigo_voo
FOREIGN KEY (codigo_voo) 
REFERENCES public.voo (codigo_voo);
