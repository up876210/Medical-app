DROP DATABASE IF EXISTS appointment_booking_system;

CREATE DATABASE appointment_booking_system;

USE `appointment_booking_system`;

CREATE TABLE IF NOT EXISTS `facility` (
  `id` VARCHAR(36),
  `name` VARCHAR(70) NOT NULL,
  `building_name` VARCHAR(35),
  `building_no` VARCHAR(5),
  `street` VARCHAR(70) NOT NULL,
  `city` VARCHAR(60) NOT NULL,
  `county` VARCHAR(30) NOT NULL,
  `postcode` VARCHAR(8) NOT NULL,
  `tel_no` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `language` (
  `id` VARCHAR(36),
  `name` VARCHAR(70),
  PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `facility_language` (
  `id` VARCHAR(36),
  `facility_id` VARCHAR(36) NOT NULL,
  `language_id` VARCHAR(36) NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`facility_id`) REFERENCES `facility` (`id`),
  FOREIGN KEY (`language_id`) REFERENCES `language` (`id`)
);

CREATE TABLE IF NOT EXISTS `role` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `description` VARCHAR(70),
  PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `account` (
  `id` VARCHAR(36),
  `email` VARCHAR(255) NOT NULL UNIQUE,
  `password` VARCHAR(255) NOT NULL,
  `role_id` INT DEFAULT 3 NOT NULL,
  `verified` BOOLEAN DEFAULT FALSE,
  `facility_id` VARCHAR(36),
  PRIMARY KEY (`id`),
  FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  FOREIGN KEY (`facility_id`) REFERENCES `facility` (`id`)
);

CREATE TABLE IF NOT EXISTS `staff` (
  `id` VARCHAR(36),
  `title` VARCHAR(35) NOT NULL,
  `forename` VARCHAR(35) NOT NULL,
  `surname` VARCHAR(35) NOT NULL,
  `sex` CHAR(1) NOT NULL,
  `job_title` VARCHAR(70),
  PRIMARY KEY (`id`),
  FOREIGN KEY (`id`) REFERENCES `account` (`id`)
);

CREATE TABLE IF NOT EXISTS `next_of_kin` (
  `id` VARCHAR(36),
  `relationship` VARCHAR(15) NOT NULL,
  `title` VARCHAR(35) NOT NULL,
  `forename` VARCHAR(35) NOT NULL,
  `surname` VARCHAR(35) NOT NULL,
  `house_name` VARCHAR(35),
  `house_no` VARCHAR(5),
  `street` VARCHAR(70) NOT NULL,
  `city` VARCHAR(60) NOT NULL,
  `county` VARCHAR(30) NOT NULL,
  `postcode` VARCHAR(8) NOT NULL,
  `tel_no` VARCHAR(15),
  `mob_no` VARCHAR(15),
  PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `patient` (
  `id` VARCHAR(36),
  `title` VARCHAR(35) NOT NULL,
  `forename` VARCHAR(35) NOT NULL,
  `surname` VARCHAR(35) NOT NULL,
  `sex` CHAR(1) NOT NULL,
  `date_of_birth` DATE NOT NULL,
  `house_name` VARCHAR(35),
  `house_no` VARCHAR(5),
  `street` VARCHAR(70) NOT NULL,
  `city` VARCHAR(60) NOT NULL,
  `county` VARCHAR(30) NOT NULL,
  `postcode` VARCHAR(8) NOT NULL,
  `tel_no` VARCHAR(15),
  `mob_no` VARCHAR(15),
  `next_of_kin` VARCHAR(36) NOT NULL,
  `NHS_no` CHAR(10) UNIQUE,
  `HC_no` CHAR(10) UNIQUE,
  `contact_by_email` BOOLEAN,
  `contact_by_text` BOOLEAN,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`id`) REFERENCES `account` (`id`),
  FOREIGN KEY (`next_of_kin`) REFERENCES `next_of_kin` (`id`)
);

CREATE TABLE IF NOT EXISTS `slot` (
  `id` VARCHAR(36),
  `start_time` DATETIME,
  `end_time` DATETIME,
  `reserved` BOOLEAN DEFAULT FALSE,
  PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `appointment_type` (
  `id` VARCHAR(36),
  `title` VARCHAR(70),
  PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `request` (
  `id` VARCHAR(36),
  `reason` TEXT,
  `translation` VARCHAR(36),
  `preferred_staff` VARCHAR(36),
  `p_cancellation_reason` VARCHAR(255),
  `r_cancellation_reason` VARCHAR(255),
  `cancelled` BOOLEAN DEFAULT FALSE,
  `reviewer_id` VARCHAR(36),
  `appointment_type` VARCHAR(36),
  `patient_id` VARCHAR(36) NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`translation`) REFERENCES `language` (`id`),
  FOREIGN KEY (`preferred_staff`) REFERENCES `staff` (`id`),
  FOREIGN KEY (`reviewer_id`) REFERENCES `staff` (`id`),
  FOREIGN KEY (`appointment_type`) REFERENCES `appointment_type` (`id`),
  FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`)
);

CREATE TABLE IF NOT EXISTS `request_slot` (
  `id` VARCHAR(36),
  `request_id` VARCHAR(36) NOT NULL,
  `slot_id` VARCHAR(36) NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`request_id`) REFERENCES `request` (`id`),
  FOREIGN KEY (`slot_id`) REFERENCES `slot` (`id`)
);

CREATE TABLE IF NOT EXISTS `room` (
  `id` VARCHAR(36),
  `title` VARCHAR(35),
  `notes` TEXT,
  `facility_id` VARCHAR(36) NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`facility_id`) REFERENCES `facility` (`id`)
);

CREATE TABLE IF NOT EXISTS `availability` (
  `id` VARCHAR(36),
  `staff_id` VARCHAR(36) NOT NULL,
  `slot_id` VARCHAR(36) NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`),
  FOREIGN KEY (`slot_id`) REFERENCES `slot` (`id`)
);

CREATE TABLE IF NOT EXISTS `appointment` (
  `id` VARCHAR(36),
  `b_cancellation_reason` VARCHAR(255),
  `p_cancellation_reason` VARCHAR(255),
  `cancelled` BOOLEAN DEFAULT FALSE,
  `booker_id` VARCHAR(36) NOT NULL,
  `availability_id` VARCHAR(36) NOT NULL,
  `request_id` VARCHAR(36) NOT NULL,
  `room_id` VARCHAR(36),
  PRIMARY KEY (`id`),
  FOREIGN KEY (`booker_id`) REFERENCES `staff` (`id`),
  FOREIGN KEY (`availability_id`) REFERENCES `availability` (`id`),
  FOREIGN KEY (`request_id`) REFERENCES `request` (`id`),
  FOREIGN KEY (`room_id`) REFERENCES `room` (`id`)
);


