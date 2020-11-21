CREATE TABLE public.atendente (
    cpf_funcionario varchar(250) NOT NULL,
    codigo_aeroporto varchar(250) NOT NULL
);

ALTER TABLE public.atendente
    ADD UNIQUE (cpf_funcionario);

CREATE INDEX ON public.atendente
    (codigo_aeroporto);

ALTER TABLE public.atendente ADD CONSTRAINT FK_atendente__cpf_funcionario FOREIGN KEY (cpf_funcionario) REFERENCES public.funcionario(cpf_funcionario);
ALTER TABLE public.atendente ADD CONSTRAINT FK_atendente__codigo_aeroporto FOREIGN KEY (codigo_aeroporto) REFERENCES public.aeroporto(codigo_aeroporto);
