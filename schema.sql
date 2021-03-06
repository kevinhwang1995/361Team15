CREATE TABLE users (
  ID int NOT NULL PRIMARY KEY AUTO_INCREMENT,
  email varchar(255),
  username varchar(255),
  password varchar(MAX),
  rating INTEGER,
  role INTEGER,
  FOREIGN KEY(role) REFERENCES roles(id)
  ON DELETE CASCADE
  );
  
CREATE TABLE jobpost (
  ID INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
  title varchar(255),
  description varchar(MAX),
  postedDate date,
  pickupDate date,
  dropoffDate date,
  pickupLocation varchar(255),
  dropoffLocation varchar(255),
  deliveryInstructions varchar(MAX),
  claimed bool,
  paid bool,
  poster int,
  taker int
  );
  
CREATE TABLE roles (
  ID int NOT NULL AUTO_INCREMENT,
  type varchar(255),
  PRIMARY KEY(ID)
  );
 
CREATE TABLE specialCategories (
  ID int NOT NULL AUTO_INCREMENT,
  type varchar(255),
  PRIMARY KEY(ID)
  );
 
 CREATE TABLE jobs_categories (
   job_id,
   category_id,
   FOREIGN KEY(job_id) REFERENCES jobpost(id)
   ON DELETE CASCADE,
   FOREIGN KEY(category_id) REFERENCES specialCategory(id)
   ON DELETE CASCADE,
   PRIMARY KEY(job_id, category_id)
   );
   
 CREATE TABLE roles_users (
   user_id,
   role_id,
   FOREIGN KEY(user_id) REFERENCES users(id)
   ON DELETE CASCADE,
   FOREIGN KEY(role_id) REFERENCES role(id)
   ON DELETE CASCADE,
   PRIMARY KEY(user_id, role_id)
   );
 INSERT INTO specialCategories (type)
 VALUES ('Refrigeration');
 
 INSERT INTO roles (type)
 VALUES ('Driver')
 
  INSERT INTO roles (type)
 VALUES ('Distributor')
 