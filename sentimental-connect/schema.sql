-- Create and select the database
CREATE DATABASE IF NOT EXISTS linkedin;
USE linkedin;

-- 1. Users Table
CREATE TABLE users (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(64) NOT NULL,
    last_name VARCHAR(64) NOT NULL,
    username VARCHAR(64) NOT NULL UNIQUE,
    password VARCHAR(128) NOT NULL
);

-- 2. Schools Table
CREATE TABLE schools (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(128) NOT NULL UNIQUE,
    type ENUM('Primary', 'Secondary', 'Higher Education') NOT NULL,
    location VARCHAR(128) NOT NULL,
    year_founded INT UNSIGNED NOT NULL
);

-- 3. Companies Table
CREATE TABLE companies (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(128) NOT NULL UNIQUE,
    industry ENUM('Technology', 'Education', 'Business') NOT NULL,
    location VARCHAR(128) NOT NULL
);

-- 4. User Connections (User-to-User)
CREATE TABLE user_connections (
    user_id_1 INT UNSIGNED NOT NULL,
    user_id_2 INT UNSIGNED NOT NULL,
    PRIMARY KEY (user_id_1, user_id_2),
    FOREIGN KEY (user_id_1) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (user_id_2) REFERENCES users(id) ON DELETE CASCADE
);

-- 5. School Connections (User-to-School Affiliations)
CREATE TABLE school_connections (
    user_id INT UNSIGNED NOT NULL,
    school_id INT UNSIGNED NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE,
    degree VARCHAR(64),
    PRIMARY KEY (user_id, school_id, start_date),
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (school_id) REFERENCES schools(id) ON DELETE CASCADE
);

-- 6. Company Connections (User-to-Company Employment)
CREATE TABLE company_connections (
    user_id INT UNSIGNED NOT NULL,
    company_id INT UNSIGNED NOT NULL,
    title VARCHAR(128) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE,
    PRIMARY KEY (user_id, company_id, start_date),
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (company_id) REFERENCES companies(id) ON DELETE CASCADE
);
