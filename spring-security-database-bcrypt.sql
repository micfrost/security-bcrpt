USE `hr_directory`;

DROP TABLE IF EXISTS `authorities`;
DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `username` varchar(50) NOT NULL,
  `password` char(68) NOT NULL,
  `enabled` tinyint NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `users` 
VALUES 
('bob','{bcrypt}$2a$12$kKHuxV3aEZ8d9oXJSjPLQeBodqmfBUCieCTb/ELOF31jJt.HolObq',1),
('alice','{bcrypt}$2a$12$kKHuxV3aEZ8d9oXJSjPLQeBodqmfBUCieCTb/ELOF31jJt.HolObq',1),
('david','{bcrypt}$2a$12$kKHuxV3aEZ8d9oXJSjPLQeBodqmfBUCieCTb/ELOF31jJt.HolObq',1);

# pass123

CREATE TABLE `authorities` (
  `username` varchar(50) NOT NULL,
  `authority` varchar(50) NOT NULL,
  UNIQUE KEY `authorities4_idx_1` (`username`,`authority`),
  CONSTRAINT `authorities4_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `authorities` 
VALUES 
('bob','ROLE_HR'),
('alice','ROLE_HR'),
('alice','ROLE_SUPERVISOR'),
('david','ROLE_HR'),
('david','ROLE_SUPERVISOR'),
('david','ROLE_ADMIN');
