CREATE TABLE public.compra (
    passaporte_passageiro varchar(250) NOT NULL,
    datahora_compra timestamp without time zone NOT NULL,
    codigo_origem varchar(250) NOT NULL,
    codigo_destino varchar(250) NOT NULL,
	CONSTRAINT compra_pkey PRIMARY KEY (passaporte_passageiro, datahora_compra)
);

CREATE INDEX ON public.compra
    (passaporte_passageiro);
CREATE INDEX ON public.compra
    (codigo_origem);
CREATE INDEX ON public.compra
    (codigo_destino);

ALTER TABLE public.compra 
ADD CONSTRAINT FK_compra__passaporte_passageiro 
FOREIGN KEY (passaporte_passageiro) 
REFERENCES public.passageiro(passaporte);

ALTER TABLE public.compra 
ADD CONSTRAINT FK_compra__codigo_trajeto 
FOREIGN KEY (codigo_origem, codigo_destino) 
REFERENCES public.trajeto(codigo_origem, codigo_destino);
