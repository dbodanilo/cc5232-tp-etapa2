ALTER TABLE public.bilhete
ADD CONSTRAINT fk_bilhete__id_compra
FOREIGN KEY (passaporte_passageiro, datahora_compra)
REFERENCES public.compra (passaporte_passageiro, datahora_compra)
