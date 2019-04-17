create extension citext;

CREATE TABLE thingschema (
  page_id INT PRIMARY KEY,
  location_name TEXT,
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
  image TEXT,
  keywords TEXT[], 
  active BOOL default 'true'
);


CREATE TABLE groups (
  groups_id INT PRIMARY KEY,
  state_name TEXT,
  menu_name TEXT,
  display_name TEXT,
  image TEXT,
  category_list TEXT[]  
);  

CREATE TABLE photoschema (
  photo_id INT PRIMARY KEY,
  name TEXT,
  keywords TEXT[],
  description TEXT,
  path TEXT,
  state_name TEXT,
  state_params TEXT[],
  active BOOL default 'true'
);

CREATE TABLE userschema (
  user_id INT PRIMARY KEY,
  name TEXT,
  email  TEXT,
  role TEXT default 'user',
  hashed_password TEXT,
  provider TEXT,
  salt TEXT,
  facebook TEXT[],
  twitter TEXT[],
  google TEXT[],
  github TEXT[],
  favorites INT REFERENCES thingschema (page_id)
);

CREATE TABLE userfavorites (
  user_id int references userschema (user_id),
  page_id int references thingschema(page_id),
  constraint id PRIMARY KEY (user_id, page_id)
);

