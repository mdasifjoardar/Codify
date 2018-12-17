-- -- TIMESTAMP-- phpMyAdmin SQL Dump
-- -- version 4.8.3
-- -- https://www.phpmyadmin.net/
-- --
-- -- Host: 127.0.0.1
-- -- Generation Time: Dec 12, 2018 at 12:50 PM
-- -- Server version: 10.1.37-MariaDB
-- -- PHP Version: 7.2.12
--
-- -- SET SQL_MODE = 'NO_AUTO_VALUE_ON_ZERO';
-- -- SET AUTOCOMMIT = 0;
-- START TRANSACTION;
-- -- SET time_zone = '+00:00';
--
--
-- /*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
-- /*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
-- /*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
-- /*!40101 SET NAMES utf8mb4 */;
--
-- --
-- -- Database: oj
-- --
--
-- -- --------------------------------------------------------
--
-- --
-- -- Table structure for table questions
-- --
--
-- CREATE TABLE questions (
--   que_id serial PRIMARY KEY,
--   name VARCHAR (50) UNIQUE NOT NULL,
--   description TEXT NOT NULL,
--   inputformat TEXT  NOT NULL,
--   outputformat TEXT  NOT NULL,
--   constraints TEXT  NOT NULL,
--   examplein TEXT  NOT NULL,
--   exampleout TEXT  NOT NULL
-- );
--
-- --
-- -- Dumping data for table questions
-- --
--
INSERT INTO questions (name, description, inputformat, outputformat, constraints, examplein, exampleout) VALUES
('Sum of Digits', 'You are given an integer N. Write a program to calculate the sum of all the digits of N.',
 'The first line contains an integer T, total number of testcases. Then follow T lines, each line contains an integer N.',
 'Calculate the sum of digits of N.',
 '1 ≤ T ≤ 1000
 1 ≤ N ≤ 1000000',
 '3
 12345
 31203
 2123',
 '15
 9
 8'),
('Small Factorial',
 'Write a program to find the factorial value of any number entered by the user.',
 'The first line contains an integer T, total number of testcases. Then follow T lines, each line contains an integer N.',
 'Display the factorial of the given number N.',
 '1 ≤ T ≤ 1000
 0 ≤ N ≤ 20',
 '3
 3
 4
 5',
 '6
 24
 120'),
('Squares',
 'Given a number, output its square i.e. N*N.',
 'First line provides the number of testcases T. The next T lines contain a single integer N.',
 'Output the square of N.',
 '1 <= T <= 100
 1 <= N <= 100',
 '4
 1
 2
 3
 4',
 '1
 4
 9
 16'),
('Sum of two numbers',
 'Given a & b. Print their sum.',
 'Each line contains two integers a & b.',
 'Print a+b.',
 '1 =< a <= b <= 100',
 '2 3',
 '5'),
('Square Root',
 'Given a number N find the square root of N.',
 'A single line containing N.',
 'The square root of N.',
 '1 <= N <= 1000',
 '100',
 '10');

-- --------------------------------------------------------

-- CREATE TABLE userdetails (
--   user_id serial PRIMARY KEY,
--   name TEXT NOT NULL,
--   age NUMERIC(11) NOT NULL,
--   gender TEXT NOT NULL,
--   country TEXT NOT NULL
-- );
--
-- --
-- -- Dumping data for table userdetails
-- --
--
-- INSERT INTO userdetails (name, age, gender, country) VALUES
-- ('Naruto', 24, 'male', 'india'),
-- ('Pranshu Jethmalani', 21, 'male', 'india'),
-- ('Naruto', 21, 'male', 'india'),
-- ('Jethalal', 22, 'male', 'india'),
-- ('Mahendra', 22, 'male', 'india');

--
-- Table structure for table ranks


-- CREATE TABLE ranks (
--   user_id serial PRIMARY KEY,
--   question_count NUMERIC(5) NOT NULL,
--   FOREIGN KEY (user_id) REFERENCES userdetails (user_id)
-- );

--
-- Dumping data for table ranks
--

-- INSERT INTO ranks (user_id, question_count) VALUES
-- (2, 1);

-- --------------------------------------------------------

--
-- Table structure for table solved
--

-- CREATE TABLE solved (
--   user_id serial,
--   que_id serial,
--   PRIMARY KEY (user_id,que_id),
--   FOREIGN KEY (que_id) REFERENCES questions (que_id),
--   FOREIGN KEY (user_id) REFERENCES userdetails (user_id)
-- );

--
-- Dumping data for table solved
--

-- INSERT INTO solved (user_id, que_id) VALUES
-- (2, 1);

-- --------------------------------------------------------

--
-- Table structure for table submissions
--

-- CREATE TABLE submissions (
--   time TIMESTAMP NOT NULL,
--   user_id serial,
--   que_id serial,
--   runtime FLOAT8 NOT NULL,
--   status TEXT NOT NULL,
--   PRIMARY KEY (time,user_id),
--   FOREIGN KEY (que_id) REFERENCES questions (que_id),
--   FOREIGN KEY (user_id) REFERENCES userdetails (user_id)
-- );

--
-- Dumping data for table submissions
--

-- INSERT INTO submissions (time, user_id, que_id, runtime, status) VALUES
-- ('2018-11-21 13:14:18', 2, 1, 0, 'Accepted'),
-- ('2018-11-21 17:39:56', 2, 1, 0, 'Accepted'),
-- ('2018-11-22 04:54:55', 2, 1, 0, 'Accepted'),
-- ('2018-11-22 05:08:40', 2, 1, 0, 'Wrong Answer'),
-- ('2018-11-22 05:13:26', 2, 1, 0, 'Accepted'),
-- ('2018-11-22 05:14:06', 2, 1, 0, 'Wrong Answer'),
-- ('2018-11-22 05:15:16', 2, 1, 0, 'Compilation Error'),
-- ('2018-11-22 15:15:27', 2, 1, 0, 'Compilation Error'),
-- ('2018-11-22 15:16:59', 2, 1, 0, 'Compilation Error'),
-- ('2018-11-22 15:32:17', 2, 1, 0, 'Compilation Error'),
-- ('2018-11-22 15:33:20', 2, 1, 0, 'Compilation Error'),
-- ('2018-11-22 15:34:00', 2, 1, 0, 'Compilation Error'),
-- ('2018-11-22 15:35:32', 2, 1, 0, 'Compilation Error'),
-- ('2018-11-22 15:36:14', 2, 1, 0, 'Compilation Error'),
-- ('2018-11-23 07:47:36', 2, 1, 0, 'Compilation Error'),
-- ('2018-11-23 07:56:26', 2, 1, 0, 'Compilation Error'),
-- ('2018-11-23 08:06:29', 2, 1, 0, 'Compilation Error'),
-- ('2018-11-23 08:07:55', 2, 1, 0, 'Compilation Error'),
-- ('2018-11-23 08:11:20', 2, 1, 0, 'Compilation Error'),
-- ('2018-11-23 08:13:43', 2, 1, 0, 'Compilation Error'),
-- ('2018-11-23 08:14:12', 2, 1, 0, 'Compilation Error'),
-- ('2018-11-23 08:16:18', 2, 1, 0, 'Compilation Error'),
-- ('2018-11-23 08:17:09', 2, 1, 0, 'Compilation Error'),
-- ('2018-11-23 08:18:13', 2, 1, 0, 'Compilation Error'),
-- ('2018-11-23 08:19:59', 2, 1, 0, 'Compilation Error'),
-- ('2018-11-23 08:25:59', 2, 1, 0, 'Compilation Error'),
-- ('2018-11-23 08:28:39', 2, 1, 0, 'Compilation Error'),
-- ('2018-11-23 08:29:19', 2, 1, 0, 'Compilation Error'),
-- ('2018-11-23 08:40:11', 2, 1, 0, 'Compilation Error'),
-- ('2018-11-23 08:44:45', 2, 1, 0, 'Compilation Error'),
-- ('2018-11-23 08:47:02', 2, 1, 0, 'Compilation Error'),
-- ('2018-11-23 08:51:17', 2, 1, 0, 'Compilation Error'),
-- ('2018-11-23 09:01:58', 2, 1, 0, 'Compilation Error'),
-- ('2018-11-23 09:09:54', 2, 1, 0, 'Compilation Error'),
-- ('2018-11-23 09:10:41', 2, 1, 0, 'Accepted'),
-- ('2018-11-23 11:54:10', 2, 1, 0, 'Accepted'),
-- ('2018-11-23 11:55:12', 2, 1, 0, 'Accepted'),
-- ('2018-11-23 11:56:58', 2, 1, 0, 'Accepted'),
-- ('2018-11-23 12:19:06', 2, 1, 0, 'Accepted'),
-- ('2018-11-23 12:19:13', 2, 1, 0, 'Accepted'),
-- ('2018-11-23 12:19:39', 2, 1, 0, 'Accepted'),
-- ('2018-11-23 12:20:38', 2, 1, 0, 'Accepted'),
-- ('2018-11-23 12:38:13', 2, 1, 0, 'Accepted'),
-- ('2018-11-23 13:05:28', 2, 1, 0, 'Accepted'),
-- ('2018-11-23 13:09:14', 2, 1, 0, 'Accepted'),
-- ('2018-11-23 13:36:27', 2, 1, 0, 'Accepted'),
-- ('2018-11-23 13:37:23', 2, 1, 0, 'Wrong Answer'),
-- ('2018-11-23 13:37:33', 2, 1, 0, 'Accepted'),
-- ('2018-11-24 06:29:45', 2, 1, 0, 'Accepted'),
-- ('2018-11-24 06:30:38', 2, 1, 0, 'Accepted'),
-- ('2018-11-28 15:04:45', 2, 1, 0, 'Accepted'),
-- ('2018-11-28 15:06:17', 2, 1, 0, 'Accepted'),
-- ('2018-12-10 10:45:56', 2, 1, 0, 'Accepted'),
-- ('2018-12-10 11:06:53', 2, 1, 0, 'Accepted'),
-- ('2018-12-10 11:38:46', 2, 1, 0, 'Accepted'),
-- ('2018-12-10 11:52:02', 2, 1, 0, 'Accepted'),
-- ('2018-12-10 11:52:42', 2, 1, 0, 'Accepted'),
-- ('2018-12-10 12:00:51', 2, 1, 0, 'Accepted'),
-- ('2018-12-11 06:19:54', 2, 1, 0.004, 'Accepted'),
-- ('2018-12-11 06:23:56', 2, 1, 0, 'Accepted'),
-- ('2018-12-11 06:25:30', 2, 1, 0, 'Accepted'),
-- ('2018-12-11 06:34:10', 2, 1, 0, 'Accepted'),
-- ('2018-12-11 06:34:40', 2, 1, 0, 'Accepted'),
-- ('2018-12-11 13:55:49', 2, 1, 0.004, 'Accepted'),
-- ('2018-12-11 13:57:02', 2, 1, 0, 'Accepted');

-- --------------------------------------------------------

--
-- Table structure for table testcases
--

-- CREATE TABLE testcases (
--   que_id serial,
--   input TEXT NOT NULL,
--   output TEXT NOT NULL,
--   PRIMARY KEY (que_id),
--   FOREIGN KEY (que_id) REFERENCES questions(que_id)
-- );

--
-- Dumping data for table testcases
--

-- INSERT INTO testcases (que_id, input, output) VALUES
-- (1, '3 \n12345\n31203\n2123', '15\n9\n8'),
-- (2, '3 \n3 \n4\n5', '6\n24\n120'),
-- (3, '10\n1\n2\n3\n4\n5\n6\n7\n8\n9\n10', '1\n4\n9\n16\n25\n36\n49\n64\n81\n100\n'),
-- (4, '15 19', '34'),
-- (5, '225', '15');

-- --------------------------------------------------------

--
-- Table structure for table userdetails
--

-- --------------------------------------------------------

--
-- Table structure for table userlogin
--

-- CREATE TABLE userlogin (
--   user_id serial PRIMARY KEY,
--   username TEXT NOT NULL,
--   pass TEXT NOT NULL,
--   FOREIGN KEY (user_id) REFERENCES userdetails (user_id)
-- );

--
-- Dumping data for table userlogin
--

-- INSERT INTO userlogin (username, pass) VALUES
-- ('pmj642@gmail.com', '$2y$10$LljjXmdL0tUQ7D63ASznDeRbmYPIznpYTgU7qGFsyzrI70/2EBCXK'),
-- ('pmj62@gmail.com', '$2y$10$iXw3L96Jpwqj/lEAAgM74eZdZ1ILynl6Tf5LYDLhEryWf3CohYda.'),
-- ('pmj2@gmail.com', '$2y$10$i/MdBSAWGSDOCh5RA2e21OL1TZbjgt03l1AkWh6wxMCQTg9SH1LFS'),
-- ('pmj123@gmail.com', 'jetha'),
-- ('pmj13@gmail.com', '$2y$10$lkzz9RrEJtoYDkIzibx6WuYPJ3858ut.YnGHJzjXFfMJoq9zZTG2W');

--
-- Indexes for dumped tables
--

--
-- Indexes for table questions
--
-- ALTER TABLE questions
--   ADD PRIMARY KEY (id);

--
-- Indexes for table ranks
--
-- ALTER TABLE ranks
--   ADD PRIMARY KEY (user_id);

--
-- Indexes for table solved
--
-- ALTER TABLE solved
--   ADD PRIMARY KEY (user_id,que_id),
--   ADD KEY que_id (que_id);

--
-- Indexes for table submissions
--
-- ALTER TABLE submissions
--   ADD PRIMARY KEY (time,user_id),
--   ADD KEY que_id (que_id),
--   ADD KEY user_id (user_id);

--
-- Indexes for table testcases
--
-- ALTER TABLE testcases
--   ADD UNIQUE KEY que_id (que_id);

--
-- Indexes for table userdetails
--
-- ALTER TABLE userdetails
--   ADD PRIMARY KEY (id),
--   ADD UNIQUE KEY id (id);

--
-- Indexes for table userlogin
--
-- ALTER TABLE userlogin
--   ADD PRIMARY KEY (id),
--   ADD UNIQUE KEY id (id);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table questions
--
-- ALTER TABLE questions
--   MODIFY id bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table userdetails
--
-- ALTER TABLE userdetails
  -- MODIFY id bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table userlogin
--
-- ALTER TABLE userlogin
--   MODIFY id bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table ranks
--
-- ALTER TABLE ranks
  -- ADD CONSTRAINT ranks_ibfk_1 FOREIGN KEY (user_id) REFERENCES userdetails (id);

--
-- Constraints for table solved
--
-- ALTER TABLE solved
  -- ADD CONSTRAINT solved_ibfk_1 FOREIGN KEY (que_id) REFERENCES questions (id),
  -- ADD CONSTRAINT solved_ibfk_2 FOREIGN KEY (user_id) REFERENCES userdetails (id);

--
-- Constraints for table submissions
--
-- ALTER TABLE submissions
--   ADD CONSTRAINT submissions_ibfk_1 FOREIGN KEY (que_id) REFERENCES questions (id),
--   ADD CONSTRAINT submissions_ibfk_2 FOREIGN KEY (user_id) REFERENCES userdetails (id);

--
-- Constraints for table testcases
--
-- ALTER TABLE testcases
--   ADD CONSTRAINT testcases_ibfk_1 FOREIGN KEY (que_id) REFERENCES questions (id);
-- COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
