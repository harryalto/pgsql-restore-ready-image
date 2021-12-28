create table store
(
    store_id         integer   default nextval('store_store_id_seq'::regclass) not null
        constraint store_pkey
            primary key,
    manager_staff_id smallint                                                  not null
        constraint store_manager_staff_id_fkey
            references staff
            on update cascade on delete restrict,
    address_id       smallint                                                  not null
        constraint store_address_id_fkey
            references address
            on update cascade on delete restrict,
    last_update      timestamp default now()                                   not null
);

alter table store
    owner to postgres;

create unique index idx_unq_manager_staff_id
    on store (manager_staff_id);

INSERT INTO public.store (store_id, manager_staff_id, address_id, last_update) VALUES (1, 1, 1, '2006-02-15 09:57:12.000000');
INSERT INTO public.store (store_id, manager_staff_id, address_id, last_update) VALUES (2, 2, 2, '2006-02-15 09:57:12.000000');