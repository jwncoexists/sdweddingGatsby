insert into thingschema (page_id, location_name, address1, info, keywords) values
  (1, 'LocationA', '101 temp ave', 'placeholder for location A', '{"keyWord1", "keyWord2"}'),
  (2, 'LocationB', '202 temp ave', 'placeholder for location B', '{"keyWord1", "keyWord2"}'),
  (3, 'LocationC', '303 temp ave', 'placeholder for location C', '{"keyWord1", "keyWord2"}');


insert into userschema (user_id, name) values
  (1, 'Michael'),
  (2, 'Emily'),
  (3, 'Greg');

insert into userfavorites (user_id, page_id) values
  (1, 1),
  (1, 2),
  (2, 1),
  (2, 2),
  (3, 1),
  (3, 3);