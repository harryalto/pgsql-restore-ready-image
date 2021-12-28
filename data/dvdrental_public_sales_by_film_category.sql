create view sales_by_film_category(category, total_sales) as
SELECT c.name        AS category,
       sum(p.amount) AS total_sales
FROM payment p
         JOIN rental r ON p.rental_id = r.rental_id
         JOIN inventory i ON r.inventory_id = i.inventory_id
         JOIN film f ON i.film_id = f.film_id
         JOIN film_category fc ON f.film_id = fc.film_id
         JOIN category c ON fc.category_id = c.category_id
GROUP BY c.name
ORDER BY (sum(p.amount)) DESC;

alter table sales_by_film_category
    owner to postgres;

INSERT INTO public.sales_by_film_category (category, total_sales) VALUES ('Sports', 4892.19);
INSERT INTO public.sales_by_film_category (category, total_sales) VALUES ('Sci-Fi', 4336.01);
INSERT INTO public.sales_by_film_category (category, total_sales) VALUES ('Animation', 4245.31);
INSERT INTO public.sales_by_film_category (category, total_sales) VALUES ('Drama', 4118.46);
INSERT INTO public.sales_by_film_category (category, total_sales) VALUES ('Comedy', 4002.48);
INSERT INTO public.sales_by_film_category (category, total_sales) VALUES ('New', 3966.38);
INSERT INTO public.sales_by_film_category (category, total_sales) VALUES ('Action', 3951.84);
INSERT INTO public.sales_by_film_category (category, total_sales) VALUES ('Foreign', 3934.47);
INSERT INTO public.sales_by_film_category (category, total_sales) VALUES ('Games', 3922.18);
INSERT INTO public.sales_by_film_category (category, total_sales) VALUES ('Family', 3830.15);
INSERT INTO public.sales_by_film_category (category, total_sales) VALUES ('Documentary', 3749.65);
INSERT INTO public.sales_by_film_category (category, total_sales) VALUES ('Horror', 3401.27);
INSERT INTO public.sales_by_film_category (category, total_sales) VALUES ('Classics', 3353.38);
INSERT INTO public.sales_by_film_category (category, total_sales) VALUES ('Children', 3309.39);
INSERT INTO public.sales_by_film_category (category, total_sales) VALUES ('Travel', 3227.36);
INSERT INTO public.sales_by_film_category (category, total_sales) VALUES ('Music', 3071.52);