CREATE SCHEMA IF NOT EXISTS `taxi_db` DEFAULT CHARACTER SET utf8;
USE `taxi_db`;

DROP TABLE IF EXISTS `manufacturers`;
CREATE TABLE `manufacturers` (
                                 `id` BIGINT(11) NOT NULL AUTO_INCREMENT,
                                 `name` VARCHAR(225) NOT NULL,
                                 `country` VARCHAR(225) NOT NULL,
                                 `is_deleted` TINYINT NOT NULL DEFAULT 0,
                                 PRIMARY KEY (`id`));

DROP TABLE IF EXISTS `drivers`;
CREATE TABLE `drivers` (
                           `id` bigint NOT NULL AUTO_INCREMENT,
                           `name` varchar(225) NOT NULL,
                           `license_number` varchar(225) NOT NULL,
                           `login` varchar(45) NOT NULL,
                           `password` varchar(45) NOT NULL,
                           `is_deleted` tinyint NOT NULL DEFAULT '0',
                           PRIMARY KEY (`id`),
                           UNIQUE KEY `id_UNIQUE` (`id`),
                           UNIQUE KEY `license_number_UNIQUE` (`license_number`)
);

DROP TABLE IF EXISTS `cars`;
CREATE TABLE `cars` (
                        `id` INT NOT NULL AUTO_INCREMENT,
                        `manufacturer_id` BIGINT NOT NULL,
                        `model` VARCHAR(255) NOT NULL,
                        `is_deleted` TINYINT NOT NULL DEFAULT 0,
                        PRIMARY KEY (`id`),
                        CONSTRAINT `cars_manufacturer_fk` FOREIGN KEY (`manufacturer_id`) REFERENCES `taxi_db`.`manufacturers` (`id`));

DROP TABLE IF EXISTS `cars_drivers`;
CREATE TABLE `cars_drivers` (
                                `car_id`    BIGINT NOT NULL,
                                `driver_id` BIGINT NOT NULL,
                                CONSTRAINT `cars_drivers_cars_fk` FOREIGN KEY (`car_id`) REFERENCES `cars` (`id`),
                                CONSTRAINT `cars_drivers_drivers_fk` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`id`));
