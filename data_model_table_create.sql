CREATE TABLE public.voo (
    id_voo integer NOT NULL,
    id_aviao integer NOT NULL,
    codigo varchar(250) NOT NULL,
    PRIMARY KEY (id_voo)
);

CREATE INDEX ON public.voo
    (id_aviao);


CREATE TABLE public.aviao (
    id_aviao integer NOT NULL,
    fabricante varchar(250) NOT NULL,
    modelo varchar(250) NOT NULL,
    capacidade_bagagem_m3 numeric NOT NULL,
    capacidade_passageiros integer NOT NULL,
    PRIMARY KEY (id_aviao)
);


CREATE TABLE public.passageiro (
    id_passageiro integer NOT NULL,
    passaporte varchar(250) NOT NULL,
    documento_nacional varchar(250) NOT NULL,
    pais varchar(250) NOT NULL,
    nome varchar(250) NOT NULL,
    sobrenome varchar(250) NOT NULL,
    PRIMARY KEY (id_passageiro)
);


CREATE TABLE public.bilhete (
    id_viagem integer NOT NULL,
    id_trajeto integer NOT NULL,
    id_voo integer NOT NULL,
    preco numeric NOT NULL,
    assento varchar(250) NOT NULL
);

CREATE INDEX ON public.bilhete
    (id_viagem);
CREATE INDEX ON public.bilhete
    (id_trajeto);
CREATE INDEX ON public.bilhete
    (id_voo);


CREATE TABLE public.trajeto (
    id_trajeto integer NOT NULL,
    preco numeric NOT NULL,
    PRIMARY KEY (id_trajeto)
);


CREATE TABLE public.trecho (
    id_trecho integer NOT NULL,
    id_trajeto integer NOT NULL,
    id_voo integer NOT NULL,
    preco numeric NOT NULL,
    PRIMARY KEY (id_trecho)
);

CREATE INDEX ON public.trecho
    (id_trajeto);
CREATE INDEX ON public.trecho
    (id_voo);


CREATE TABLE public.viagem (
    id_viagem integer NOT NULL,
    id_passageiro integer NOT NULL,
    id_trajeto integer NOT NULL,
    preco numeric NOT NULL,
    PRIMARY KEY (id_viagem)
);

CREATE INDEX ON public.viagem
    (id_passageiro);
CREATE INDEX ON public.viagem
    (id_trajeto);


CREATE TABLE public.aeroporto (
    id_aeroporto integer NOT NULL,
    codigo_iata varchar(250) NOT NULL,
    codigo_cidade varchar(250) NOT NULL,
    nome varchar(250) NOT NULL,
    PRIMARY KEY (id_aeroporto)
);


CREATE TABLE public.voo_aeroporto (
    id_voo integer NOT NULL,
    id_aeroporto integer NOT NULL,
    portao varchar(250) NOT NULL,
    hora timestamp without time zone NOT NULL
);

CREATE INDEX ON public.voo_aeroporto
    (id_voo);
CREATE INDEX ON public.voo_aeroporto
    (id_aeroporto);


CREATE TABLE public.cidade (
    codigo_cidade varchar(250) NOT NULL,
    nome varchar(250) NOT NULL,
    pais varchar(250) NOT NULL,
    PRIMARY KEY (codigo_cidade)
);


ALTER TABLE public.voo ADD CONSTRAINT FK_voo__id_aviao FOREIGN KEY (id_aviao) REFERENCES public.aviao(id_aviao);
ALTER TABLE public.bilhete ADD CONSTRAINT FK_bilhete__id_viagem FOREIGN KEY (id_viagem) REFERENCES public.viagem(id_viagem);
ALTER TABLE public.bilhete ADD CONSTRAINT FK_bilhete__id_trajeto FOREIGN KEY (id_trajeto) REFERENCES public.trajeto(id_trajeto);
ALTER TABLE public.bilhete ADD CONSTRAINT FK_bilhete__id_voo FOREIGN KEY (id_voo) REFERENCES public.voo(id_voo);
ALTER TABLE public.trecho ADD CONSTRAINT FK_trecho__id_trajeto FOREIGN KEY (id_trajeto) REFERENCES public.trajeto(id_trajeto);
ALTER TABLE public.trecho ADD CONSTRAINT FK_trecho__id_voo FOREIGN KEY (id_voo) REFERENCES public.voo(id_voo);
ALTER TABLE public.viagem ADD CONSTRAINT FK_viagem__id_passageiro FOREIGN KEY (id_passageiro) REFERENCES public.passageiro(id_passageiro);
ALTER TABLE public.viagem ADD CONSTRAINT FK_viagem__id_trajeto FOREIGN KEY (id_trajeto) REFERENCES public.trajeto(id_trajeto);
ALTER TABLE public.voo_aeroporto ADD CONSTRAINT FK_voo_aeroporto__id_voo FOREIGN KEY (id_voo) REFERENCES public.voo(id_voo);
ALTER TABLE public.voo_aeroporto ADD CONSTRAINT FK_voo_aeroporto__id_aeroporto FOREIGN KEY (id_aeroporto) REFERENCES public.aeroporto(id_aeroporto);