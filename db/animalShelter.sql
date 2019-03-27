DROP TABLE adoptions;
DROP TABLE animals;
DROP TABLE owners;

CREATE TABLE animals(
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255),
  age VARCHAR(255),
  breed VARCHAR(255),
  adoptable BOOLEAN,
  admission DATE,
  notes VARCHAR(255),
  image VARCHAR(255)
);

CREATE TABLE owners(
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255),
  tel VARCHAR(255),
  resType VARCHAR(255),
  garden VARCHAR(255),
  otherPets VARCHAR(255)
);

CREATE TABLE adoptions(
  id SERIAL4 PRIMARY KEY,
  owner_id INT4 REFERENCES owners(id) ON DELETE CASCADE,
  animal_id INT4 REFERENCES animals(id)
);
