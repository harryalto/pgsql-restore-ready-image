create table category
(
    category_id integer   default nextval('category_category_id_seq'::regclass) not null
        constraint category_pkey
            primary key,
    name        varchar(25)                                                     not null,
    last_update timestamp default now()                                         not null
);

alter table category
    owner to postgres;

INSERT INTO public.category (category_id, name, last_update) VALUES (1, 'Action', '2006-02-15 09:46:27.000000');
INSERT INTO public.category (category_id, name, last_update) VALUES (2, 'Animation', '2006-02-15 09:46:27.000000');
INSERT INTO public.category (category_id, name, last_update) VALUES (3, 'Children', '2006-02-15 09:46:27.000000');
INSERT INTO public.category (category_id, name, last_update) VALUES (4, 'Classics', '2006-02-15 09:46:27.000000');
INSERT INTO public.category (category_id, name, last_update) VALUES (5, 'Comedy', '2006-02-15 09:46:27.000000');
INSERT INTO public.category (category_id, name, last_update) VALUES (6, 'Documentary', '2006-02-15 09:46:27.000000');
INSERT INTO public.category (category_id, name, last_update) VALUES (7, 'Drama', '2006-02-15 09:46:27.000000');
INSERT INTO public.category (category_id, name, last_update) VALUES (8, 'Family', '2006-02-15 09:46:27.000000');
INSERT INTO public.category (category_id, name, last_update) VALUES (9, 'Foreign', '2006-02-15 09:46:27.000000');
INSERT INTO public.category (category_id, name, last_update) VALUES (10, 'Games', '2006-02-15 09:46:27.000000');
INSERT INTO public.category (category_id, name, last_update) VALUES (11, 'Horror', '2006-02-15 09:46:27.000000');
INSERT INTO public.category (category_id, name, last_update) VALUES (12, 'Music', '2006-02-15 09:46:27.000000');
INSERT INTO public.category (category_id, name, last_update) VALUES (13, 'New', '2006-02-15 09:46:27.000000');
INSERT INTO public.category (category_id, name, last_update) VALUES (14, 'Sci-Fi', '2006-02-15 09:46:27.000000');
INSERT INTO public.category (category_id, name, last_update) VALUES (15, 'Sports', '2006-02-15 09:46:27.000000');
INSERT INTO public.category (category_id, name, last_update) VALUES (16, 'Travel', '2006-02-15 09:46:27.000000');