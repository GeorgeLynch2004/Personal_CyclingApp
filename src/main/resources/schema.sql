CREATE TABLE if not exists workouts (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    created_at DATETIME NOT NULL,
    created_by VARCHAR(40) NOT NULL default 'Anonymous',
    name VARCHAR(64) NOT NULL,
    description VARCHAR(256) NOT NULL,
    privacy_status ENUM('PUBLIC', 'PRIVATE', 'PENDING_APPROVAL') NOT NULL DEFAULT 'PRIVATE',

    structure JSON NOT NULL,
    target_zones JSON NOT NULL,

  CHECK (JSON_VALID(structure)),
  CHECK (JSON_VALID(target_zones))
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS users (
     id BIGINT AUTO_INCREMENT PRIMARY KEY,
    created_at TIMESTAMP not null,
     username VARCHAR(40) not null unique ,
     email     VARCHAR(150) NOT NULL UNIQUE,
     password  VARCHAR(255) NOT NULL,
     usertype ENUM('ADMIN', 'MEMBER', 'USER') NOT NULL DEFAULT 'USER'
)ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS favourites (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    created_at TIMESTAMP not null,
    user_id BIGINT not null,
    workout_id BIGINT not null
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS likes (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    created_at TIMESTAMP not null,
    user_id BIGINT not null,
    workout_id BIGINT not null
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS dislikes (
     id BIGINT AUTO_INCREMENT PRIMARY KEY,
     created_at TIMESTAMP not null,
     user_id BIGINT not null,
     workout_id BIGINT not null
) ENGINE=InnoDB;