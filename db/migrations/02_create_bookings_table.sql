CREATE TABLE bookings (id SERIAL PRIMARY KEY, start_date DATE, end_date DATE, spaces_id INTEGER, FOREIGN KEY (spaces_id) REFERENCES spaces(id), requested boolean, confirmed, boolean);
