-- alter table public.bilhete
-- DROP CONSTRAINT fk_bilhete__id_passageiro;
-- FOREIGN KEY (id_passageiro)
-- REFERENCES public.passageiro (id_passageiro)

-- alter table public.passageiro
-- drop constraint passageiro_pkey

-- ALTER TABLE public.passageiro
-- ADD CONSTRAINT passageiro_pkey PRIMARY KEY (passaporte)

-- ALTER TABLE public.bilhete
-- ADD passaporte_passageiro VARCHAR(250)

-- UPDATE public.bilhete as b
-- SET passaporte_passageiro = 
--   (select p.passaporte 
--    from public.passageiro as p 
--    where b.id_passageiro = p.id_passageiro)

ALTER TABLE public.bilhete
ADD CONSTRAINT fk_bilhete__passaporte_passageiro
FOREIGN KEY (passaporte_passageiro)
REFERENCES public.passageiro (passaporte)
