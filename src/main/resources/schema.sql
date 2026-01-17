drop table if exists workouts;

CREATE TABLE if not exists workouts (
  id BIGINT AUTO_INCREMENT PRIMARY KEY,
  created_at DATETIME NOT NULL,
  name VARCHAR(64) NOT NULL,
  description VARCHAR(256) NOT NULL,

  structure JSON NOT NULL,
  target_zones JSON NOT NULL,

  CHECK (JSON_VALID(structure)),
  CHECK (JSON_VALID(target_zones))
) ENGINE=InnoDB;

drop table if exists users;

CREATE TABLE IF NOT EXISTS users (
     id BIGINT AUTO_INCREMENT PRIMARY KEY,
    created_at TIMESTAMP not null,
     username VARCHAR(40) not null unique ,
     email     VARCHAR(150) NOT NULL UNIQUE,
     password  VARCHAR(255) NOT NULL,
     usertype ENUM('ADMIN', 'MEMBER', 'USER') NOT NULL DEFAULT 'USER'
)ENGINE=InnoDB;
