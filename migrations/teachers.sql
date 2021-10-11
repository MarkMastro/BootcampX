create table teachers(
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) not NULL,
  start_date date,
  end_date date,
  is_active boolean default true
);