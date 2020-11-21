CREATE TABLE public.piloto (
    cpf_funcionario varchar(250) NOT NULL,
    breve varchar(250) NOT NULL
);

ALTER TABLE public.piloto
    ADD UNIQUE (cpf_funcionario);

ALTER TABLE public.piloto ADD CONSTRAINT FK_piloto__cpf_funcionario FOREIGN KEY (cpf_funcionario) REFERENCES public.funcionario(cpf_funcionario);
