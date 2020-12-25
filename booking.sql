-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2020 at 06:19 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `booking`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(7) NOT NULL,
  `title` text NOT NULL,
  `details` text NOT NULL,
  `price` text NOT NULL,
  `category` text NOT NULL,
  `user` text NOT NULL,
  `img` text NOT NULL,
  `qty` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `title`, `details`, `price`, `category`, `user`, `img`, `qty`) VALUES
(21, 'आमदार थाळी', '3 Chapatis,2 Vegetable,1 Dal,1 Rice,1 Curd ,1 Papad', '450', '', 'umesh.kesarkar', '', 1),
(22, 'सरपंच थाळी', '2 Chapatis,2 Vegetable,1 Dal,1 Rice,1 Curd ,1 Papad', '350', '', 'sushil', '', 1),
(43, 'खासदार थाळी', '4 Chapatis,2 Vegetable,1 Dal,1 Rice,1 Curd ,1 Papad', '550', '', 'abc', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `id` int(7) NOT NULL,
  `title` text NOT NULL,
  `details` text NOT NULL,
  `price` text NOT NULL,
  `category` text NOT NULL,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`id`, `title`, `details`, `price`, `category`, `img`) VALUES
(1, 'सरपंच थाळी', '2 Chapatis,2 Vegetable,1 Dal,1 Rice,1 Curd ,1 Papad', '350', 'veg', ''),
(2, 'आमदार थाळी', '3 Chapatis,2 Vegetable,1 Dal,1 Rice,1 Curd ,1 Papad', '450', 'veg', ''),
(3, 'खासदार थाळी', '4 Chapatis,2 Vegetable,1 Dal,1 Rice,1 Curd ,1 Papad', '550', 'veg', ''),
(4, 'कोळंबी मसाला थाळी', 'Prawns fry pieces,1 Grevy,1 Masala Rice,1 Salad,1 boiled Egg', '400', 'nonveg', ''),
(5, 'मटन मसाला थाळी', 'Mutton Fry Pieces,1 Gravy,1 Masala Rice,1 Salad,1 boiled Egg', '350', 'nonveg', ''),
(6, 'चिकन मसाला थाळी', 'Chicken Fry Pieces,1 Chicken Gravy,1 Biryani Rice,1 Salad,2 Boiled Egg', '300', 'nonveg', '');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `indx` int(7) NOT NULL,
  `id` text NOT NULL,
  `user` text NOT NULL,
  `name` text NOT NULL,
  `phone` text NOT NULL,
  `address` text NOT NULL,
  `date` text NOT NULL,
  `time` text NOT NULL,
  `dish` text NOT NULL,
  `price` text NOT NULL,
  `qty` int(5) NOT NULL,
  `order_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`indx`, `id`, `user`, `name`, `phone`, `address`, `date`, `time`, `dish`, `price`, `qty`, `order_time`) VALUES
(20, '125706276', 'abc', 'xyz', '08424836438', 'Room no 4,ram lakhan yadav chawl,sainath mithra mandal,new agripada,santacruz east., mumbai, 400055', '2020-03-27', 'lunch', 'सरपंच थाळी', '350', 1, '2020-09-11 10:33:18'),
(21, '1844426718', 'deva', 'Deva', '9657048200', 'chinchwad, pune, pune, 411033', '2020-04-02', 'dinner', 'आमदार थाळी', '450', 2, '2020-09-11 10:33:18'),
(22, '1844426718', 'deva', 'Deva', '9657048200', 'chinchwad, pune, pune, 411033', '2020-04-02', 'dinner', 'चिकन मसाला थाळी', '300', 1, '2020-09-11 10:33:18'),
(23, '829153677', 'Devanand', 'Deva Gaikwad', '9657048200', 'chinchwad pune pcmc, pune, 411033', '2020-04-01', 'dinner', 'चिकन मसाला थाळी', '300', 2, '2020-09-11 10:33:18'),
(24, '226428931', 'abc', 'abc', '08424836438', 'Room no 4,ram lakhan yadav chawl,sainath mithra mandal,new agripada,santacruz east., mumbai, 400055', '2020-03-31', 'dinner', 'कोळंबी मसाला थाळी', '400', 2, '2020-09-11 10:33:18'),
(25, '226428931', 'abc', 'abc', '08424836438', 'Room no 4,ram lakhan yadav chawl,sainath mithra mandal,new agripada,santacruz east., mumbai, 400055', '2020-03-31', 'dinner', 'मटन मसाला थाळी', '350', 1, '2020-09-11 10:33:18'),
(26, '226428931', 'abc', 'abc', '08424836438', 'Room no 4,ram lakhan yadav chawl,sainath mithra mandal,new agripada,santacruz east., mumbai, 400055', '2020-03-31', 'dinner', 'चिकन मसाला थाळी', '300', 2, '2020-09-11 10:33:18'),
(27, '433188321', 'abc', 'Umesh Kesarkar', '08424836438', 'Room no 4,ram lakhan yadav chawl,sainath mithra mandal,new agripada,santacruz east., mumbai, 400055', '0020-06-05', 'lunch', 'सरपंच थाळी', '350', 1, '2020-09-11 10:33:18'),
(28, '433188321', 'abc', 'Umesh Kesarkar', '08424836438', 'Room no 4,ram lakhan yadav chawl,sainath mithra mandal,new agripada,santacruz east., mumbai, 400055', '0020-06-05', 'lunch', 'कोळंबी मसाला थाळी', '400', 1, '2020-09-11 10:33:18'),
(29, '433188321', 'abc', 'Umesh Kesarkar', '08424836438', 'Room no 4,ram lakhan yadav chawl,sainath mithra mandal,new agripada,santacruz east., mumbai, 400055', '0020-06-05', 'lunch', 'मटन मसाला थाळी', '350', 2, '2020-09-11 10:33:18'),
(30, '2070830632', 'abc', 'Umesh Kesarkar', '08424836438', 'Room no 4,ram lakhan yadav chawl,sainath mithra mandal,new agripada,santacruz east., mumbai, 400055', '0021-02-05', 'dinner', 'कोळंबी मसाला थाळी', '400', 4, '2020-09-11 10:37:52'),
(31, '2070830632', 'abc', 'Umesh Kesarkar', '08424836438', 'Room no 4,ram lakhan yadav chawl,sainath mithra mandal,new agripada,santacruz east., mumbai, 400055', '0021-02-05', 'dinner', 'चिकन मसाला थाळी', '300', 1, '2020-09-11 10:37:52'),
(32, '474965642', 'ankita', 'admj', '4879562658', 'gfxtxd, sthnj, 400060', '2020-09-19', 'dinner', 'आमदार थाळी', '450', 2, '2020-09-18 05:42:57'),
(33, '474965642', 'ankita', 'admj', '4879562658', 'gfxtxd, sthnj, 400060', '2020-09-19', 'dinner', 'कोळंबी मसाला थाळी', '400', 3, '2020-09-18 05:42:58'),
(34, '262290117', 'subodh', 'subodh', '8465453212', 'asldkwdiddunwen, mumbai, 400055', '2020-09-23', 'dinner', 'कोळंबी मसाला थाळी', '400', 3, '2020-09-18 14:45:53'),
(35, '262290117', 'subodh', 'subodh', '8465453212', 'asldkwdiddunwen, mumbai, 400055', '2020-09-23', 'dinner', 'मटन मसाला थाळी', '350', 1, '2020-09-18 14:45:53'),
(36, '1152758858', 'aparna', 'appu', '1235647890', 'Room no 4,ram lakhan yadav chawl,sainath mithra mandal,new agripada,santacruz east., mumbai, 400055', '2020-09-18', 'both', 'चिकन मसाला थाळी', '300', 2, '2020-09-18 14:53:25'),
(37, '1152758858', 'aparna', 'appu', '1235647890', 'Room no 4,ram lakhan yadav chawl,sainath mithra mandal,new agripada,santacruz east., mumbai, 400055', '2020-09-18', 'both', 'चिकन मसाला थाळी', '300', 2, '2020-09-18 14:53:25'),
(38, '1131989891', 'newuser', 'Umesh Kesarkar', '8424836438', 'Room no 4,ram lakhan yadav chawl,sainath mithra mandal,new agripada,santacruz east., mumbai, 400055', '2020-09-25', 'lunch', 'मटन मसाला थाळी', '350', 1, '2020-09-18 15:09:24'),
(39, '819794461', 'jack', 'jack', '8745986545', 'bandra, mumbai, 400050', '2020-09-20', 'dinner', 'कोळंबी मसाला थाळी', '400', 2, '2020-09-18 17:27:25'),
(40, '819794461', 'jack', 'jack', '8745986545', 'bandra, mumbai, 400050', '2020-09-20', 'dinner', 'मटन मसाला थाळी', '350', 1, '2020-09-18 17:27:25'),
(41, '819794461', 'jack', 'jack', '8745986545', 'bandra, mumbai, 400050', '2020-09-20', 'dinner', 'आमदार थाळी', '450', 1, '2020-09-18 17:27:25'),
(42, '1075213950', 'jack', 'jack', '4512784521', 'sadaf, mumbai, 400055', '2020-09-20', 'lunch', 'खासदार थाळी', '550', 1, '2020-09-19 03:25:44'),
(43, '1075213950', 'jack', 'jack', '4512784521', 'sadaf, mumbai, 400055', '2020-09-20', 'lunch', 'कोळंबी मसाला थाळी', '400', 1, '2020-09-19 03:25:44'),
(44, '1075213950', 'jack', 'jack', '4512784521', 'sadaf, mumbai, 400055', '2020-09-20', 'lunch', 'मटन मसाला थाळी', '350', 1, '2020-09-19 03:25:44'),
(45, '1561393350', 'jack', 'jack', '08424836438', 'Room no 4,ram lakhan yadav chawl,sainath mithra mandal,new agripada,santacruz east., mumbai, 400055', '2020-09-26', 'lunch', 'आमदार थाळी', '450', 3, '2020-09-19 04:05:08'),
(46, '1561393350', 'jack', 'jack', '08424836438', 'Room no 4,ram lakhan yadav chawl,sainath mithra mandal,new agripada,santacruz east., mumbai, 400055', '2020-09-26', 'lunch', 'कोळंबी मसाला थाळी', '400', 1, '2020-09-19 04:05:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(7) NOT NULL,
  `username` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'umesh.kesarkar', 'umesh.kes123@gmail.com', '202cb962ac59075b964b07152d234b70'),
(2, 'abc', 'abc@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(3, 'deva', 'deva@mail.xom', '5b369dd8eefbc60ac2880e9538448121'),
(4, 'Devanand', 'deva@gmail.com', '5b369dd8eefbc60ac2880e9538448121'),
(5, 'xyz', 'xyz@mail.com', 'd16fb36f0911f878998c136191af705e'),
(6, 'sushil', 'sushil@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(7, 'ankita', 'anki@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(8, 'nimo', 'nimo@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(9, 'subodh', 'subodh@gmail.com', '2ad4389aaf0ae0ed18a7eb5b759e1167'),
(10, 'aparna', 'aparna@gmai.com', '622622b00805c54040dd9a15674a5117'),
(11, 'newuser', 'user@mail.com', 'ee11cbb19052e40b07aac0ca060c23ee'),
(12, 'jack', 'jack@gmail.com', 'e10adc3949ba59abbe56e057f20f883e');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD UNIQUE KEY `indx` (`indx`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `indx` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
