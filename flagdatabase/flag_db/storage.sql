
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE IF NOT EXISTS unixit (
    level int(11) NOT NULL,
    flag varchar(100) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO unixit (level, flag) VALUES
(0, ''),
(1, ''),
(2, ''),
(3, ''),
(4, ''),
(5, ''),
(6, ''),
(7, ''),
(8, ''),
(9, ''),
(10, ''),
(11, ''),
(12, ''),
(13, ''),
(14, ''),
(15, ''),
(16, ''),
(17, ''),
(18, ''),
(19, ''),
(20, '');



ALTER TABLE unixit
  ADD PRIMARY KEY (level);
COMMIT;
