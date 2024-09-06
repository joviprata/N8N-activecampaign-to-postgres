CREATE TABLE IF NOT EXISTS public.leads_active_campaign
(
    id_correspondente bigint NOT NULL,
    email character varying(350) COLLATE pg_catalog."default" NOT NULL,
    utm_source character varying(250) COLLATE pg_catalog."default",
    utm_medium character varying(250) COLLATE pg_catalog."default",
    utm_campaign character varying(250) COLLATE pg_catalog."default",
    utm_term character varying(250) COLLATE pg_catalog."default",
    utm_content character varying(250) COLLATE pg_catalog."default",
    data timestamp without time zone,
    dispositivo character varying(250) COLLATE pg_catalog."default",
    navegador character varying(250) COLLATE pg_catalog."default",
    cep character varying(250) COLLATE pg_catalog."default",
    cidade character varying(250) COLLATE pg_catalog."default",
    estado character varying(250) COLLATE pg_catalog."default",
    pais character varying(250) COLLATE pg_catalog."default",
    sistema_operacional character varying(250) COLLATE pg_catalog."default",
    id bigint NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1 ),
    fonte character varying(250) COLLATE pg_catalog."default",
    CONSTRAINT id_pk_leads_active_campaign PRIMARY KEY (id),
    CONSTRAINT id_correspondente_fk_leads_active_campaign FOREIGN KEY (id_correspondente)
        REFERENCES public.campanhas_active_campaign (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE RESTRICT
)
