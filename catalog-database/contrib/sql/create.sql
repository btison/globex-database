CREATE TABLE catalog (
  itemId VARCHAR(256) NOT NULL,
  name VARCHAR(256),
  description TEXT,
  price DOUBLE PRECISION
);

ALTER TABLE public.catalog OWNER TO $POSTGRESQL_USER;

ALTER TABLE ONLY public.catalog
    ADD CONSTRAINT catalog_pkey PRIMARY KEY (itemid);

CREATE TABLE category (
  categoryId bigint NOT NULL,
  category VARCHAR(255)
);

ALTER TABLE public.category OWNER TO $POSTGRESQL_USER;

ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (categoryId);


CREATE table category_catalog (
    itemId VARCHAR(256) NOT NULL,
    categoryId bigint NOT NULL
);

ALTER TABLE public.category_catalog OWNER TO $POSTGRESQL_USER;

ALTER TABLE ONLY public.category_catalog
    ADD CONSTRAINT category_catalog_pkey PRIMARY KEY (itemId, categoryId);
