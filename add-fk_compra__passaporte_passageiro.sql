-- ALTER TABLE public.compra
-- DROP CONSTRAINT fk_compra__passaporte_passageiro

-- ALTER TABLE public.passageiro
-- DROP CONSTRAINT passageiro_pkey
-- ADD CONSTRAINT passageiro_pkey PRIMARY KEY (passaporte_passageiro)

ALTER TABLE public.compra
ADD CONSTRAINT fk_compra__passaporte_passageiro
FOREIGN KEY (passaporte_passageiro) 
REFERENCES public.passageiro (passaporte_passageiro)
