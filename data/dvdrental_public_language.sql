create table language
(
    language_id integer   default nextval('language_language_id_seq'::regclass) not null
        constraint language_pkey
            primary key,
    name        char(20)                                                        not null,
    last_update timestamp default now()                                         not null
);

alter table language
    owner to postgres;

INSERT INTO public.language (language_id, name, last_update) VALUES (1, 'English             ', '2006-02-15 10:02:19.000000');
INSERT INTO public.language (language_id, name, last_update) VALUES (2, 'Italian             ', '2006-02-15 10:02:19.000000');
INSERT INTO public.language (language_id, name, last_update) VALUES (3, 'Japanese            ', '2006-02-15 10:02:19.000000');
INSERT INTO public.language (language_id, name, last_update) VALUES (4, 'Mandarin            ', '2006-02-15 10:02:19.000000');
INSERT INTO public.language (language_id, name, last_update) VALUES (5, 'French              ', '2006-02-15 10:02:19.000000');
INSERT INTO public.language (language_id, name, last_update) VALUES (6, 'German              ', '2006-02-15 10:02:19.000000');