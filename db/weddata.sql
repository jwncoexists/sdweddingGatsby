insert into item (name, address1, info) values
  ('LocationA', '101 temp ave', 'placeholder for location A'),
  ('LocationB', '202 temp ave', 'placeholder for location B'),
  ('LocationC', '303 temp ave', 'placeholder for location C');


insert into usertable (name) values
  ('Michael'),
  ('Emily'),
  ('Greg');

insert into userfavorite (user_id, item_id) values
  (1, 1),
  (1, 2),
  (2, 1),
  (2, 2),
  (3, 1),
  (3, 3);