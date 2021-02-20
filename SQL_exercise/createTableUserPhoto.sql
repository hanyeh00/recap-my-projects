CREATE TABLE users(name1 VARCHAR(50), id_user SERIAL PRIMARY KEY);
INSERT INTO
  users (name1)
VALUES
  ('ANISA61'),('PARIDOKHT'),('ALI'),('FARMAN32') CREATE TABLE photos(
    name_user VARCHAR(50),
    id_photo SERIAL PRIMARY KEY,
    user_id SERIAL REFERENCES users(id_user)
  );
INSERT INTO
  photos (name_user)
VALUES
  ('https://manam.com'),('https://miam.com'),('https://party.com'),('https://heifi.com')
