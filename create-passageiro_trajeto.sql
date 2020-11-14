CREATE TABLE public.passageiro_trajeto (
    passaporte_passageiro varchar(250) NOT NULL,
    codigo_origem varchar(250) NOT NULL,
    codigo_destino varchar(250) NOT NULL,
    datahora_compra timestamp without time zone NOT NULL
);

CREATE INDEX ON public.passageiro_trajeto
    (passaporte_passageiro);
CREATE INDEX ON public.passageiro_trajeto
    (codigo_origem);
CREATE INDEX ON public.passageiro_trajeto
    (codigo_destino);

ALTER TABLE public.passageiro_trajeto 
ADD CONSTRAINT FK_passageiro_trajeto__passaporte_passageiro 
FOREIGN KEY (passaporte_passageiro) 
REFERENCES public.passageiro(passaporte);

ALTER TABLE public.passageiro_trajeto 
ADD CONSTRAINT FK_passageiro_trajeto__codigo_origem 
FOREIGN KEY (codigo_origem, codigo_destino) 
REFERENCES public.trajeto(codigo_origem, codigo_destino);
