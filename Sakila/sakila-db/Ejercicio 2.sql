#actor se relaciona con film_actor mediante actor_id
SELECT a.actor_id,
 a.first_name,
 a.last_name,
 a.last_update,
 f.actor_id,
 f.film_id,
 f.last_update
FROM actor a,
 film_actor f
WHERE a.actor_id = f.actor_id;

#address se relaciona con customer mediante address_id
SELECT ad.address_id,
ad.address,
cu.address_id,
cu.first_name,
cu.last_name
FROM address ad,
customer cu
WHERE ad.address_id = cu.address_id;

#address se relaciona con store mediante address_id
SELECT ad.address_id,
ad.address,
s.store_id
FROM address ad,
store s
WHERE ad.address_id = s.address_id;

#address se relaciona con staff mediante address_id
SELECT ad.address_id,
ad.address,
st.address_id,
st.first_name,
st.last_name
FROM address ad,
staff st
WHERE ad.address_id = st.address_id;

#category se relaciona con film_category mediante category_id
SELECT c.category_id,
fc.category_id,
fc.film_id

FROM film_category fc,
	category c
where c.category_id = fc.category_id;

#city se relaciona con address mediante city_id
SELECT ci.city_id,
ci.city,
ad.city_id

FROM city ci,
	address ad
where ci.city_id = ad.city_id;

#country se relaciona con city mediante country_id
SELECT ci.country_id,
co.country,
co.country_id

FROM city ci,
	country co
where ci.country_id = co.country_id;

#customer se relaciona con payment mediante customer_id
SELECT cu.customer_id,
cu.first_name,
cu.last_name,
pa.customer_id,
pa.amount,
pa.payment_date
FROM customer cu,
payment pa
WHERE cu.customer_id = pa.customer_id;

#customer se relaciona con rental mediante customer_id
SELECT cu.customer_id,
cu.first_name,
cu.last_name,
re.customer_id,
re.rental_date
FROM customer cu,
rental re
WHERE cu.customer_id = re.customer_id;

#film se relacona con film_category mediante film_id
SELECT fi.film_id,
fi.title,
fi.release_year,
fc.film_id,
fc.last_update
FROM film fi,
film_category fc
WHERE fi.film_id = fc.film_id;

#film se relaciona con film_actor mediante film_id
SELECT fi.film_id,
fi.title,
fi.release_year,
fa.film_id
FROM film fi,
film_actor fa
WHERE fi.film_id = fa.film_id;

#film se relaciona con inventory mediante film_id
SELECT fi.film_id,
fi.title,
fi.release_year,
i.film_id,
i.store_id
FROM film fi,
inventory i
WHERE fi.film_id = i.film_id;

#inventory se relaciona con film_text mediante film_id
SELECT inv.film_id,
ft.film_id,
ft.title

FROM inventory inv,
	film_text ft
where ft.film_id = inv.film_id;

#inventory se relaciona con rental mediante inventory_id
SELECT inv.inventory_id,
inv.film_id,
re.inventory_id

FROM inventory inv,
	rental re
where inv.inventory_id = re.inventory_id;

#language se relaciona con film mediante language_id
SELECT l.language_id,
l.name,
fi.language_id,
fi.title,
fi.release_year
FROM language l,
film fi
WHERE l.language_id = fi.language_id;

#rental se relaciona con payment mediante rental_id
SELECT pa.rental_id,
pa.amount,
re.rental_id

FROM payment pa,
	rental re
where pa.rental_id = re.rental_id;

#staff se relaciona con rental mediante staff_id
SELECT sta.staff_id,
sta.first_name,
sta.last_name,
re.staff_id

FROM staff sta,
	rental re
where sta.staff_id = re.staff_id;

#staff se relaciona con payment mediante staff_id
SELECT sta.staff_id,
sta.first_name,
sta.last_name,
pa.staff_id

FROM staff sta,
	payment pa
where sta.staff_id = pa.staff_id;

#store se relaciona con staff mediante store_id
SELECT s.store_id,
st.store_id,
st.staff_id,
st.first_name,
st.last_name
FROM store s,
staff st
WHERE s.store_id = st.store_id;

#store se relaciona con inventory mediante store_id
SELECT s.store_id,
i.store_id
FROM store s,
inventory i
WHERE s.store_id = i.store_id;

#store se relaciona con customer mediante store_id
SELECT s.store_id,
cu.store_id,
cu.customer_id,
cu.first_name,
cu.last_name
FROM store s,
customer cu
WHERE s.store_id = cu.store_id