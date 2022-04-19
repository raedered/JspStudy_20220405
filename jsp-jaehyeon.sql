-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        10.7.3-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- jsp-jaehyeon 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `jsp-jaehyeon` /*!40100 DEFAULT CHARACTER SET utf8mb3 */;
USE `jsp-jaehyeon`;

-- 테이블 jsp-jaehyeon.file_mst 구조 내보내기
CREATE TABLE IF NOT EXISTS `file_mst` (
  `file_code` int(100) NOT NULL AUTO_INCREMENT,
  `file_name` varchar(50) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  PRIMARY KEY (`file_code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 jsp-jaehyeon.file_mst:~0 rows (대략적) 내보내기
DELETE FROM `file_mst`;
/*!40000 ALTER TABLE `file_mst` DISABLE KEYS */;
INSERT INTO `file_mst` (`file_code`, `file_name`, `create_date`, `update_date`) VALUES
	(1, '32bb40d3c06b4f9283f2ef59a49375f1_webclip.png', '2022-04-19 09:53:51', '2022-04-19 09:53:51'),
	(2, '428205d7977045a89aefdd7cf9801f7e_house.png', '2022-04-19 09:53:51', '2022-04-19 09:53:51'),
	(3, 'f2a0298a15a1440aa3eb009b92c4201c_travel.png', '2022-04-19 09:53:51', '2022-04-19 09:53:51');
/*!40000 ALTER TABLE `file_mst` ENABLE KEYS */;

-- 테이블 jsp-jaehyeon.user_mst 구조 내보내기
CREATE TABLE IF NOT EXISTS `user_mst` (
  `user_code` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  PRIMARY KEY (`user_code`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 jsp-jaehyeon.user_mst:~1 rows (대략적) 내보내기
DELETE FROM `user_mst`;
/*!40000 ALTER TABLE `user_mst` DISABLE KEYS */;
INSERT INTO `user_mst` (`user_code`, `username`, `password`, `name`, `email`, `create_date`, `update_date`) VALUES
	(1, 'jaehyeon', '1234', '김재현', 'kjh991216@google.com', '2022-04-12 08:33:54', '2022-04-12 08:33:54'),
	(2, 'jaehyeon2', '1234', '김재이', 'kjh991216@naver.com', '2022-04-12 08:33:54', '2022-04-12 08:33:54');
/*!40000 ALTER TABLE `user_mst` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
