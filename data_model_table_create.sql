CREATE TABLE public.voo (
    codigo_voo varchar(250) NOT NULL,
    codigo_origem varchar(250) NOT NULL,
    codigo_destino varchar(250) NOT NULL,
    modelo_aviao varchar(250) NOT NULL,
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


CREATE TABLE public.aviao (
    modelo_aviao varchar(250) NOT NULL,
    capacidade_bagagem_m3 numeric NOT NULL,
    capacidade_passageiros integer NOT NULL,
    PRIMARY KEY (modelo_aviao)
);


CREATE TABLE public.passageiro (
    passaporte_passageiro varchar(250) NOT NULL,
    nome varchar(250) NOT NULL,
    sobrenome varchar(250) NOT NULL,
    PRIMARY KEY (passaporte_passageiro)
);


CREATE TABLE public.bilhete (
    passaporte_passageiro varchar(250) NOT NULL,
    datahora_compra timestamp without time zone NOT NULL,
    codigo_voo varchar(250) NOT NULL,
    assento varchar(250) NOT NULL,
    preco numeric NOT NULL
);

CREATE INDEX ON public.bilhete
    (passaporte_passageiro);
CREATE INDEX ON public.bilhete
    (datahora_compra);
CREATE INDEX ON public.bilhete
    (codigo_voo);


CREATE TABLE public.trajeto (
    codigo_origem varchar(250) NOT NULL,
    codigo_destino varchar(250) NOT NULL
);

CREATE INDEX ON public.trajeto
    (codigo_origem);
CREATE INDEX ON public.trajeto
    (codigo_destino);


CREATE TABLE public.aeroporto (
    codigo_aeroporto varchar(250) NOT NULL,
    codigo_cidade varchar(250) NOT NULL,
    nome varchar(250) NOT NULL,
    PRIMARY KEY (codigo_aeroporto)
);

CREATE INDEX ON public.aeroporto
    (codigo_cidade);


CREATE TABLE public.cidade (
    codigo_cidade varchar(250) NOT NULL,
    nome varchar(250) NOT NULL,
    pais varchar(250) NOT NULL,
    PRIMARY KEY (codigo_cidade)
);


CREATE TABLE public.compra (
    passaporte_passageiro varchar(250) NOT NULL,
    codigo_origem varchar(250) NOT NULL,
    codigo_destino varchar(250) NOT NULL,
    datahora_compra timestamp without time zone NOT NULL
);

CREATE INDEX ON public.compra
    (passaporte_passageiro);
CREATE INDEX ON public.compra
    (codigo_origem);
CREATE INDEX ON public.compra
    (codigo_destino);


ALTER TABLE public.voo ADD CONSTRAINT FK_voo__codigo_origem FOREIGN KEY (codigo_origem) REFERENCES public.trajeto(codigo_origem);
ALTER TABLE public.voo ADD CONSTRAINT FK_voo__codigo_destino FOREIGN KEY (codigo_destino) REFERENCES public.trajeto(codigo_destino);
ALTER TABLE public.voo ADD CONSTRAINT FK_voo__modelo_aviao FOREIGN KEY (modelo_aviao) REFERENCES public.aviao(modelo_aviao);
ALTER TABLE public.bilhete ADD CONSTRAINT FK_bilhete__passaporte_passageiro FOREIGN KEY (passaporte_passageiro) REFERENCES public.compra(passaporte_passageiro);
ALTER TABLE public.bilhete ADD CONSTRAINT FK_bilhete__datahora_compra FOREIGN KEY (datahora_compra) REFERENCES public.compra(datahora_compra);
ALTER TABLE public.bilhete ADD CONSTRAINT FK_bilhete__codigo_voo FOREIGN KEY (codigo_voo) REFERENCES public.voo(codigo_voo);
ALTER TABLE public.trajeto ADD CONSTRAINT FK_trajeto__codigo_origem FOREIGN KEY (codigo_origem) REFERENCES public.aeroporto(codigo_aeroporto);
ALTER TABLE public.trajeto ADD CONSTRAINT FK_trajeto__codigo_destino FOREIGN KEY (codigo_destino) REFERENCES public.aeroporto(codigo_aeroporto);
ALTER TABLE public.aeroporto ADD CONSTRAINT FK_aeroporto__codigo_cidade FOREIGN KEY (codigo_cidade) REFERENCES public.cidade(codigo_cidade);
ALTER TABLE public.compra ADD CONSTRAINT FK_compra__passaporte_passageiro FOREIGN KEY (passaporte_passageiro) REFERENCES public.passageiro(passaporte_passageiro);
ALTER TABLE public.compra ADD CONSTRAINT FK_compra__codigo_origem FOREIGN KEY (codigo_origem) REFERENCES public.trajeto(codigo_origem);
ALTER TABLE public.compra ADD CONSTRAINT FK_compra__codigo_destino FOREIGN KEY (codigo_destino) REFERENCES public.trajeto(codigo_destino);