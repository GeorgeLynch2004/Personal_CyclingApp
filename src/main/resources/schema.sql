DROP TABLE IF EXISTS workouts;

CREATE TABLE workouts (
  id BIGINT AUTO_INCREMENT PRIMARY KEY,
  created_at DATETIME NOT NULL,
  name VARCHAR(64) NOT NULL,
  description VARCHAR(256) NOT NULL,

  structure JSON NOT NULL,
  target_zones JSON NOT NULL,

  CHECK (JSON_VALID(structure)),
  CHECK (JSON_VALID(target_zones))
) ENGINE=InnoDB;
