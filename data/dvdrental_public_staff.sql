create table staff
(
    staff_id    integer   default nextval('staff_staff_id_seq'::regclass) not null
        constraint staff_pkey
            primary key,
    first_name  varchar(45)                                               not null,
    last_name   varchar(45)                                               not null,
    address_id  smallint                                                  not null
        constraint staff_address_id_fkey
            references address
            on update cascade on delete restrict,
    email       varchar(50),
    store_id    smallint                                                  not null,
    active      boolean   default true                                    not null,
    username    varchar(16)                                               not null,
    password    varchar(40),
    last_update timestamp default now()                                   not null,
    picture     bytea
);

alter table staff
    owner to postgres;

INSERT INTO public.staff (staff_id, first_name, last_name, address_id, email, store_id, active, username, password, last_update, picture) VALUES (1, 'Mike', 'Hillyer', 3, 'Mike.Hillyer@sakilastaff.com', 1, true, 'Mike', '8cb2237d0679ca88db6464eac60da96345513964', '2006-05-16 16:13:11.793280', E'\\x89504E470D0A5A0A');
INSERT INTO public.staff (staff_id, first_name, last_name, address_id, email, store_id, active, username, password, last_update, picture) VALUES (2, 'Jon', 'Stephens', 4, 'Jon.Stephens@sakilastaff.com', 2, true, 'Jon', '8cb2237d0679ca88db6464eac60da96345513964', '2006-05-16 16:13:11.793280', null);