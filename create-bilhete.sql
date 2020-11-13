CREATE TABLE public.bilhete (
    id_passageiro integer NOT NULL,
    id_trajeto integer NOT NULL,
    id_voo integer NOT NULL,
    preco numeric NOT NULL,
    assento varchar(250) NOT NULL,
    data_compra timestamp without time zone NOT NULL
);

CREATE INDEX ON public.bilhete
    (id_passageiro);
CREATE INDEX ON public.bilhete
    (id_trajeto);
CREATE INDEX ON public.bilhete
    (id_voo);

ALTER TABLE public.bilhete ADD CONSTRAINT FK_bilhete__id_passageiro FOREIGN KEY (id_passageiro) REFERENCES public.passageiro(id_passageiro);
ALTER TABLE public.bilhete ADD CONSTRAINT FK_bilhete__id_trajeto FOREIGN KEY (id_trajeto) REFERENCES public.trajeto(id_trajeto);
ALTER TABLE public.bilhete ADD CONSTRAINT FK_bilhete__id_voo FOREIGN KEY (id_voo) REFERENCES public.voo(id_voo);
