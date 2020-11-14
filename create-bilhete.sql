CREATE TABLE public.bilhete (
    passaporte_passageiro varchar(250) NOT NULL,
    datahora_compra timestamp without time zone NOT NULL,
    codigo_voo varchar(250) NOT NULL,
    assento varchar(250) NOT NULL,
    preco numeric NOT NULL,
    PRIMARY KEY (passaporte_passageiro, datahora_compra, codigo_voo)
);

CREATE INDEX ON public.bilhete
    (passaporte_passageiro);
CREATE INDEX ON public.bilhete
    (datahora_compra);
CREATE INDEX ON public.bilhete
    (codigo_voo);

ALTER TABLE public.bilhete 
ADD CONSTRAINT FK_bilhete__id_compra 
FOREIGN KEY (passaporte_passageiro, datahora_compra) 
REFERENCES public.compra(passaporte_passageiro, datahora_compra);

ALTER TABLE public.bilhete 
ADD CONSTRAINT FK_bilhete__codigo_voo 
FOREIGN KEY (codigo_voo) 
REFERENCES public.voo(codigo_voo);
