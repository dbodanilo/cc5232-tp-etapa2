
-- ALTER TABLE public.voo
-- DROP CONSTRAINT fk_voo__id_aviao

-- ALTER TABLE public.aviao
-- DROP CONSTRAINT aviao_pkey 
-- PRIMARY KEY (id_aviao)

-- ALTER TABLE public.aviao
-- ADD CONSTRAINT aviao_pkey 
-- PRIMARY KEY (modelo)

-- ALTER TABLE public.voo
-- ADD modelo_aviao VARCHAR(250)

-- UPDATE public.voo as v
-- SET modelo_aviao = 
--   (select modelo 
--    from aviao as a 
--    where v.id_aviao = a.id_aviao)
   
ALTER TABLE public.voo
ADD CONSTRAINT fk_voo__modelo_aviao
FOREIGN KEY (modelo_aviao) 
REFERENCES public.aviao(modelo);
