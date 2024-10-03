-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2021 at 11:44 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.26

-- Setting the SQL mode to no auto value on zero to prevent automatic filling of zero values in primary key columns
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

-- Starting a new transaction, which is a sequence of operations performed as a single logical unit of work.
START TRANSACTION;

-- Setting the time zone for this session to UTC
SET time_zone = "+00:00";

-- Storing the current values of the client's character set and collation settings
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chatapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

-- Creating a table named `messages` with columns for message ID, incoming message ID, outgoing message ID, and the message text itself.
CREATE TABLE `messages` (
  `msg_id` int(11) NOT NULL,             -- message ID (primary key)
  `incoming_msg_id` int(255) NOT NULL,   -- ID of the incoming message
  `outgoing_msg_id` int(255) NOT NULL,   -- ID of the outgoing message
  `msg` varchar(1000) NOT NULL           -- content of the message
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4; -- using InnoDB engine with utf8mb4 character set

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

-- Creating a table named `users` with columns for user ID, unique ID, first name, last name, email, password, image, and status.
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,            -- user ID (primary key)
  `unique_id` int(255) NOT NULL,         -- a unique identifier for each user
  `fname` varchar(255) NOT NULL,         -- first name of the user
  `lname` varchar(255) NOT NULL,         -- last name of the user
  `email` varchar(255) NOT NULL,         -- email address of the user
  `password` varchar(255) NOT NULL,      -- password for user account
  `img` varchar(255) NOT NULL,           -- image file path for user profile picture
  `status` varchar(255) NOT NULL         -- status of the user (e.g., online, offline)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4; -- using InnoDB engine with utf8mb4 character set

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
-- Adding a primary key constraint to the `msg_id` column of the `messages` table
ALTER TABLE `messages`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `users`
--
-- Adding a primary key constraint to the `user_id` column of the `users` table
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messages`
--
-- Setting the `msg_id` column of the `messages` table to auto-increment
ALTER TABLE `messages`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
-- Setting the `user_id` column of the `users` table to auto-increment
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;

-- Committing the transaction to save all the changes made during this transaction
COMMIT;

-- Restoring the old character set and collation settings
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
