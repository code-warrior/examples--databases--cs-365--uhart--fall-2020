CREATE TABLE web_site (
  domain  VARCHAR(256) NOT NULL,
  name    VARCHAR(264) NOT NULL,
  sslayer BOOLEAN      NOT NULL,

  PRIMARY KEY (domain)
);

CREATE TABLE user (
  domain     VARCHAR(256)   NOT NULL,
  user_id    SMALLINT(5)    NOT NULL,
  first_name VARCHAR(128)   NOT NULL,
  last_name  VARCHAR(128)   NOT NULL,
  username   VARCHAR(128)   NULL,
  email      VARCHAR(256)   NOT NULL,
  password   VARBINARY(512) NOT NULL,

  PRIMARY KEY (domain, user_id)
);

CREATE TABLE account (
  domain       VARCHAR(256) NOT NULL,
  user_id      SMALLINT(5)  NOT NULL,
  account_id   SMALLINT(5)  NOT NULL,
  date_created TIMESTAMP    NOT NULL,

  PRIMARY KEY (domain, user_id, account_id)
);

CREATE TABLE comment (
  domain     VARCHAR(256) NOT NULL,
  user_id    SMALLINT(5)  NOT NULL,
  account_id SMALLINT(5)  NOT NULL,
  content    TEXT         NULL,

  PRIMARY KEY (domain, user_id, account_id)
);
