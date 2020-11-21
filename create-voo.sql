CREATE TABLE public.voo (
    codigo_voo varchar(250) NOT NULL,
    codigo_origem varchar(250) NOT NULL,
    codigo_destino varchar(250) NOT NULL,
    modelo_aviao varchar(250) NOT NULL,
    cpf_piloto varchar(250) NOT NULL,
    datahora_partida timestamp without time zone NOT NULL,
    datahora_chegada timestamp without time zone NOT NULL,
    PRIMARY KEY (codigo_voo)
);

CREATE INDEX ON public.voo
    (codigo_origem);
CREATE INDEX ON public.voo
    (codigo_destino);
CREATE INDEX ON public.voo
    (modelo_aviao);
CREATE INDEX ON public.voo
    (cpf_piloto);

ALTER TABLE public.voo ADD CONSTRAINT FK_voo__codigo_trajeto FOREIGN KEY (codigo_origem, codigo_destino) REFERENCES public.trajeto(codigo_origem, codigo_destino);
ALTER TABLE public.voo ADD CONSTRAINT FK_voo__modelo_aviao FOREIGN KEY (modelo_aviao) REFERENCES public.aviao(modelo_aviao);
ALTER TABLE public.voo ADD CONSTRAINT FK_voo__cpf_piloto FOREIGN KEY (cpf_piloto) REFERENCES public.piloto(cpf_funcionario);
