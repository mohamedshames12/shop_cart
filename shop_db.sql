-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2023 at 06:31 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `product_id` varchar(20) NOT NULL,
  `qty` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `qty`) VALUES
('HDinkdHDdlkoFononVlV', 'FGn5HDIIv6DkvHdDHGkH', 'Vkol5kDo5GIDvL5kiF5d', '5'),
('H6HHlsn6FHD5Il6nHkI5', 'FGn5HDIIv6DkvHdDHGkH', 'lIokVn5GsUvIIFGD8U8I', '2'),
('n5I55FIo56V5kL5H5Hls', 'FGn5HDIIv6DkvHdDHGkH', '5V66no6lV75IIH6kUIl5', '2'),
('iv78sVDDsVDv8VLkii86', 'FGn5HDIIv6DkvHdDHGkH', 'IIi6LIdV5U56DH8L5GUU', '23'),
('Ln5H8I5FGnI8HI8556ki', 'FGn5HDIIv6DkvHdDHGkH', 'sF56I6kIIvdHDDs65LVI', '12'),
('diL6D6Fs555Vv6I6UIFd', 'FGn5HDIIv6DkvHdDHGkH', 'IiLs85k6olHi8VU5l6vs', '2'),
('oV5v67odGiFo5IFGGnGl', 'FGn5HDIIv6DkvHdDHGkH', 'k6kHI5DI7IFoLoH7IlHn', '99');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` varchar(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `price` varchar(50) NOT NULL,
  `stock` int(100) NOT NULL,
  `image` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `stock`, `image`) VALUES
('Vkol5kDo5GIDvL5kiF5d', 'bed', '2300', 0, ''),
('lIokVn5GsUvIIFGD8U8I', 'bed', '3022', 0, '1 - bed.jpg'),
('5V66no6lV75IIH6kUIl5', 'mohamed shames', '1234', 0, '4 - bed.jpg'),
('IiLs85k6olHi8VU5l6vs', 'mohamed shames', '1234', 0, '4 - bed.jpg'),
('sF56I6kIIvdHDDs65LVI', 'mohamed ', '1234', 210, '6 - bed.jpg'),
('IIi6LIdV5U56DH8L5GUU', 'mohamed ', '3234233', 0, '3.jpg'),
('o7IFLHFkL6DkDiniHDvH', 'mohamed ', '3234233', 23, 'nDGHdD66Dsl8oII7IFGH.jpg'),
('G8Di6i8IDoissn8kLsHL', 'mohamed shames', '1231', 2, 'iH6k5Lnn8HHIFs76knDL.jpg'),
('k6kHI5DI7IFoLoH7IlHn', 'mohamed shames2w3er', '12345', 1113, 'ks7dDv66II8iDidH5iiV.jpg'),
('8IHLv8iDkIIlsU5GIF75', 'mohamed shames2w3er', '12345', 1212, 'DULdv8D7liIFHLolvDDs.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
