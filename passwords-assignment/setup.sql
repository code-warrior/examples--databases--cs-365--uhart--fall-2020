DROP DATABASE IF EXISTS passwords;

CREATE DATABASE passwords DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;

USE passwords;

source _variables.sql
source _encryption-settings.sql
source _create-tables.sql
source _populate-tables.sql
