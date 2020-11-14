-- ALTER TABLE public.voo
-- DROP CONSTRAINT fk_voo__modelo_aviao

ALTER TABLE public.aviao
-- DROP CONSTRAINT aviao_pkey 
ADD CONSTRAINT aviao_pkey PRIMARY KEY (modelo_aviao)

ALTER TABLE public.voo
ADD CONSTRAINT fk_voo__modelo_aviao
FOREIGN KEY (modelo_aviao) 
REFERENCES public.aviao(modelo_aviao);
