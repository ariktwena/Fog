DROP USER IF EXISTS fogtest@localhost;
CREATE USER fogtest@localhost;
GRANT ALL PRIVILEGES ON fogtest.* TO fogtest@localhost;