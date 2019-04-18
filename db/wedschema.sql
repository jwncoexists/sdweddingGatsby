create extension citext;

CREATE TABLE item (
  id SERIAL PRIMARY KEY,
  name TEXT,
  address1 TEXT,
  address2 TEXT,
  city TEXT,
  state TEXT,
  zip TEXT,
  website TEXT,
  phone TEXT,
  fax TEXT,
  email TEXT,
  info TEXT, 
  info_html TEXT,
  active BOOL default 'true'
);

CREATE TABLE photo (
  id SERIAL PRIMARY KEY,
  name TEXT,
  description TEXT,
  path TEXT UNIQUE,
  active BOOL default 'true',
  main BOOL default 'false'
);

CREATE TABLE category (
  id SERIAL PRIMARY KEY,
  state_name TEXT,
  menu_name TEXT,
  display_name TEXT,
  group_photo INT REFERENCES photo(id)
);  

CREATE TABLE keyword (
  id SERIAL PRIMARY KEY,
  keyword TEXT UNIQUE
);

CREATE TABLE photokey (
  photo_id INT REFERENCES photo(id),
  keyword_id INT REFERENCES keyword(id),
  constraint id PRIMARY KEY (photo_id, keyword_id)
);

CREATE TABLE itemkey (
  item_id INT REFERENCES item(id),
  keyword_id INT REFERENCES keyword(id),
  constraint itemkey_id PRIMARY KEY (item_id, keyword_id)
);

CREATE TABLE itemphoto(
  item_id INT REFERENCES item(id),
  photo_id INT REFERENCES photo(id),
  constraint itemphoto_id PRIMARY KEY (item_id, photo_id)
);

CREATE TABLE usertable (
  id SERIAL PRIMARY KEY,
  name TEXT,
  email TEXT UNIQUE,
  role TEXT default 'user',
  hashed_password TEXT
);

CREATE TABLE userfavorite (
  id SERIAL PRIMARY KEY,
  user_id INT REFERENCES usertable (id),
  item_id INT REFERENCES item (id),
  constraint userfavorite_id PRIMARY KEY (user_id, item_id)
);

