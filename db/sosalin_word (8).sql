-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 09, 2023 at 03:52 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sosalin_word`
--

-- --------------------------------------------------------

--
-- Table structure for table `1672196528_meta_product_table`
--

CREATE TABLE `1672196528_meta_product_table` (
  `id` int(2) NOT NULL,
  `name` varchar(355) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` varchar(355) DEFAULT NULL,
  `img` varchar(355) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `rack` int(11) DEFAULT NULL,
  `glb_model` varchar(355) DEFAULT NULL,
  `tag` varchar(355) DEFAULT NULL,
  `scale` varchar(355) DEFAULT NULL,
  `rotation` varchar(355) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `custom_position_vertical` varchar(355) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `1672196528_meta_product_table`
--

INSERT INTO `1672196528_meta_product_table` (`id`, `name`, `price`, `description`, `img`, `qty`, `rack`, `glb_model`, `tag`, `scale`, `rotation`, `location_id`, `custom_position_vertical`, `status`) VALUES
(1, 'Tropicana Pomegranate Delight', 200, 'The web app you have attempted to reach is currently stopped and does not accept any requests. Please try to reload the page or visit it again soon.', NULL, 2, NULL, '1672197531.glb', '1672197531.glb', '5 5 5', '0 0 0', 9, NULL, 0),
(2, 'Tropicana ', 200, 'Nisi aut reiciendis ', NULL, 6, NULL, '1672198062.glb', '1672198062.glb', '5 5 5', '0 0 0', 7, NULL, 0),
(3, 'Chicken Burger', 200, 'The web app you have attempted to reach is currently stopped and does not accept any requests. Please try to reload the page or visit it again soon.', NULL, 7, NULL, '1672713082.glb', '1672713082.glb', '3.1 3.1 3.1', '0 0 0', 1, '3.7', 0),
(4, 'Burger', 200, 'Nisi aut reiciendis ', NULL, 5, NULL, '1672714636.glb', '1672714636.glb', '3 3 3', '0 0 0', 3, '0.7', 0),
(5, 'Chicken', 200, 'Nisi aut reiciendis ', NULL, 4, NULL, '1672714871.glb', '1672714871.glb', '20 20 20', '0 0 0', 4, '', 0),
(6, 'Fried Chicken', 200, 'Nisi aut reiciendis ', NULL, 5, NULL, '1672715186.glb', '1672715186.glb', '0.5 0.5 0.5', '0 0 0', 2, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `1672225043_meta_product_table`
--

CREATE TABLE `1672225043_meta_product_table` (
  `id` int(2) NOT NULL,
  `name` varchar(355) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` varchar(355) DEFAULT NULL,
  `img` varchar(355) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `rack` int(11) DEFAULT NULL,
  `glb_model` varchar(355) DEFAULT NULL,
  `tag` varchar(355) DEFAULT NULL,
  `scale` varchar(355) DEFAULT NULL,
  `rotation` varchar(355) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `custom_position_vertical` varchar(355) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `1672225043_meta_product_table`
--

INSERT INTO `1672225043_meta_product_table` (`id`, `name`, `price`, `description`, `img`, `qty`, `rack`, `glb_model`, `tag`, `scale`, `rotation`, `location_id`, `status`, `custom_position_vertical`) VALUES
(1, 'Tropicana Pomegranate Delight', 200, 'The web app you have attempted to reach is currently stopped and does not accept any requests. Please try to reload the page or visit it again soon.', NULL, 0, NULL, '1672225729.glb', '1672225729.glb', '5 5 5', '0 0 0', 1, 0, NULL),
(2, 'Tropicana ', 555, 'The web app you have attempted to reach is currently stopped and does not accept any requests. Please try to reload the page or visit it again soon.', NULL, 0, NULL, '1672225749.glb', '1672225749.glb', '5 5 5', '0 0 0', 3, 0, NULL),
(3, 'Medicine', 200, 'The web app you have attempted to reach is currently stopped and does not accept any requests. Please try to reload the page or visit it again soon.', NULL, 7, NULL, '1672741131.glb', '1672741131.glb', '30 30 30', '0 0 0', 1, 0, NULL),
(4, 'medicine 2', 555, 'The web app you have attempted to reach is currently stopped and does not accept any requests. Please try to reload the page or visit it again soon.', NULL, 5, NULL, '1672741161.glb', '1672741161.glb', '10 10 10', '0 0 0', 2, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `1672715841_meta_product_table`
--

CREATE TABLE `1672715841_meta_product_table` (
  `id` int(2) NOT NULL,
  `name` varchar(355) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` varchar(355) DEFAULT NULL,
  `img` varchar(355) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `rack` int(11) DEFAULT NULL,
  `glb_model` varchar(355) DEFAULT NULL,
  `tag` varchar(355) DEFAULT NULL,
  `scale` varchar(355) DEFAULT NULL,
  `rotation` varchar(355) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `custom_position_vertical` varchar(355) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `1672715841_meta_product_table`
--

INSERT INTO `1672715841_meta_product_table` (`id`, `name`, `price`, `description`, `img`, `qty`, `rack`, `glb_model`, `tag`, `scale`, `rotation`, `location_id`, `custom_position_vertical`, `status`) VALUES
(1, 'Laptop ', 50000, 'The web app you have attempted to reach is currently stopped and does not accept any requests. Please try to reload the page or visit it again soon.', NULL, 2, NULL, '1672716907.glb', '1672716907.glb', '3 5 3', '0 0 0', 3, '', 0),
(2, 'iphone 12', 48000, 'The web app you have attempted to reach is currently stopped and does not accept any requests. Please try to reload the page or visit it again soon.', NULL, 1, NULL, '1672717167.glb', '1672717167.glb', '5 5 5', '0 0 0', 1, '', 0),
(3, 'iphone 14', 69000, 'The web app you have attempted to reach is currently stopped and does not accept any requests. Please try to reload the page or visit it again soon.', NULL, 3, NULL, '1672717376.glb', '1672717376.glb', '7 7 7', '0 0 0', 2, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `1673239124_meta_product_table`
--

CREATE TABLE `1673239124_meta_product_table` (
  `id` int(2) NOT NULL,
  `name` varchar(355) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` varchar(355) DEFAULT NULL,
  `img` varchar(355) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `rack` int(11) DEFAULT NULL,
  `glb_model` varchar(355) DEFAULT NULL,
  `tag` varchar(355) DEFAULT NULL,
  `scale` varchar(355) DEFAULT NULL,
  `rotation` varchar(355) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `custom_position_vertical` varchar(355) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `1673242175_meta_product_table`
--

CREATE TABLE `1673242175_meta_product_table` (
  `id` int(2) NOT NULL,
  `name` varchar(355) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` varchar(355) DEFAULT NULL,
  `img` varchar(355) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `rack` int(11) DEFAULT NULL,
  `glb_model` varchar(355) DEFAULT NULL,
  `tag` varchar(355) DEFAULT NULL,
  `scale` varchar(355) DEFAULT NULL,
  `rotation` varchar(355) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `custom_position_vertical` varchar(355) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `1673347505_meta_product_table`
--

CREATE TABLE `1673347505_meta_product_table` (
  `id` int(2) NOT NULL,
  `name` varchar(355) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` varchar(355) DEFAULT NULL,
  `img` varchar(355) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `rack` int(11) DEFAULT NULL,
  `glb_model` varchar(355) DEFAULT NULL,
  `tag` varchar(355) DEFAULT NULL,
  `scale` varchar(355) DEFAULT NULL,
  `rotation` varchar(355) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `custom_position_vertical` varchar(355) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `1673347505_meta_product_table`
--

INSERT INTO `1673347505_meta_product_table` (`id`, `name`, `price`, `description`, `img`, `qty`, `rack`, `glb_model`, `tag`, `scale`, `rotation`, `location_id`, `custom_position_vertical`, `status`) VALUES
(1, 'Tropicana Pomegranate Delight', 200, 'The web app you have attempted to reach is currently stopped and does not accept any requests. Please try to reload the page or visit it again soon.', NULL, 3, NULL, '1673347620.glb', '1673347620.glb', '5 5 5', '0 0 0', 1, NULL, 0),
(2, 'Tropicana Pomegranate Delight', 200, 'Nisi aut reiciendis ', NULL, 2, NULL, '1673347659.glb', '1673347659.glb', '5 5 5', '0 0 0', 3, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `1674588784_meta_product_table`
--

CREATE TABLE `1674588784_meta_product_table` (
  `id` int(2) NOT NULL,
  `name` varchar(355) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` varchar(355) DEFAULT NULL,
  `img` varchar(355) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `rack` int(11) DEFAULT NULL,
  `glb_model` varchar(355) DEFAULT NULL,
  `tag` varchar(355) DEFAULT NULL,
  `scale` varchar(355) DEFAULT NULL,
  `rotation` varchar(355) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `custom_position_vertical` varchar(355) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `1674588784_meta_product_table`
--

INSERT INTO `1674588784_meta_product_table` (`id`, `name`, `price`, `description`, `img`, `qty`, `rack`, `glb_model`, `tag`, `scale`, `rotation`, `location_id`, `custom_position_vertical`, `status`) VALUES
(1, 'iphone 14', 120000, 'The web app you have attempted to reach is currently stopped and does not accept any requests. Please try to reload the page or visit it again soon.', NULL, 3, NULL, '1674589078.glb', '1674589078.glb', '5 5 5', '0 0 0', 1, NULL, 0),
(2, 'Mac Book', 100000, 'The web app you have attempted to reach is currently stopped and does not accept any requests. Please try to reload the page or visit it again soon.', NULL, 2, NULL, '1674589129.glb', '1674589129.glb', '5 5 5', '0 0 0', 2, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `1674590093_meta_product_table`
--

CREATE TABLE `1674590093_meta_product_table` (
  `id` int(2) NOT NULL,
  `name` varchar(355) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` varchar(355) DEFAULT NULL,
  `img` varchar(355) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `rack` int(11) DEFAULT NULL,
  `glb_model` varchar(355) DEFAULT NULL,
  `tag` varchar(355) DEFAULT NULL,
  `scale` varchar(355) DEFAULT NULL,
  `rotation` varchar(355) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `custom_position_vertical` varchar(355) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `1674590093_meta_product_table`
--

INSERT INTO `1674590093_meta_product_table` (`id`, `name`, `price`, `description`, `img`, `qty`, `rack`, `glb_model`, `tag`, `scale`, `rotation`, `location_id`, `custom_position_vertical`, `status`) VALUES
(1, 'iphone 14', 122333, 'The web app you have attempted to reach is currently stopped and does not accept any requests. Please try to reload the page or visit it again soon.', NULL, 2, NULL, '1674590279.glb', '1674590279.glb', '6 6 6', '0 0 0', 1, NULL, 0),
(2, 'Tropicana ', 200, 'The web app you have attempted to reach is currently stopped and does not accept any requests. Please try to reload the page or visit it again soon.', NULL, 1, NULL, '1674590321.glb', '1674590321.glb', '5 5 5', '0 0 0', 2, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `1674591687_meta_product_table`
--

CREATE TABLE `1674591687_meta_product_table` (
  `id` int(2) NOT NULL,
  `name` varchar(355) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` varchar(355) DEFAULT NULL,
  `img` varchar(355) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `rack` int(11) DEFAULT NULL,
  `glb_model` varchar(355) DEFAULT NULL,
  `tag` varchar(355) DEFAULT NULL,
  `scale` varchar(355) DEFAULT NULL,
  `rotation` varchar(355) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `custom_position_vertical` varchar(355) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `1674591687_meta_product_table`
--

INSERT INTO `1674591687_meta_product_table` (`id`, `name`, `price`, `description`, `img`, `qty`, `rack`, `glb_model`, `tag`, `scale`, `rotation`, `location_id`, `custom_position_vertical`, `status`) VALUES
(1, 'iphone 14', 12222, 'The web app you have attempted to reach is currently stopped and does not accept any requests. Please try to reload the page or visit it again soon.', NULL, 2, NULL, '1674591888.glb', '1674591888.glb', '6 6 6', '0 0 0', 1, NULL, 0),
(2, 'Tropicana ', 200, 'The web app you have attempted to reach is currently stopped and does not accept any requests. Please try to reload the page or visit it again soon.', NULL, 4, NULL, '1674591927.glb', '1674591927.glb', '5 5 5', '0 0 0', 2, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `1674705864_meta_product_table`
--

CREATE TABLE `1674705864_meta_product_table` (
  `id` int(2) NOT NULL,
  `name` varchar(355) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` varchar(355) DEFAULT NULL,
  `img` varchar(355) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `rack` int(11) DEFAULT NULL,
  `glb_model` varchar(355) DEFAULT NULL,
  `tag` varchar(355) DEFAULT NULL,
  `scale` varchar(355) DEFAULT NULL,
  `rotation` varchar(355) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `custom_position_vertical` varchar(355) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `1674705955_meta_product_table`
--

CREATE TABLE `1674705955_meta_product_table` (
  `id` int(2) NOT NULL,
  `name` varchar(355) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` varchar(355) DEFAULT NULL,
  `img` varchar(355) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `rack` int(11) DEFAULT NULL,
  `glb_model` varchar(355) DEFAULT NULL,
  `tag` varchar(355) DEFAULT NULL,
  `scale` varchar(355) DEFAULT NULL,
  `rotation` varchar(355) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `custom_position_vertical` varchar(355) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `1674705969_meta_product_table`
--

CREATE TABLE `1674705969_meta_product_table` (
  `id` int(2) NOT NULL,
  `name` varchar(355) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` varchar(355) DEFAULT NULL,
  `img` varchar(355) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `rack` int(11) DEFAULT NULL,
  `glb_model` varchar(355) DEFAULT NULL,
  `tag` varchar(355) DEFAULT NULL,
  `scale` varchar(355) DEFAULT NULL,
  `rotation` varchar(355) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `custom_position_vertical` varchar(355) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `1674705980_meta_product_table`
--

CREATE TABLE `1674705980_meta_product_table` (
  `id` int(2) NOT NULL,
  `name` varchar(355) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` varchar(355) DEFAULT NULL,
  `img` varchar(355) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `rack` int(11) DEFAULT NULL,
  `glb_model` varchar(355) DEFAULT NULL,
  `tag` varchar(355) DEFAULT NULL,
  `scale` varchar(355) DEFAULT NULL,
  `rotation` varchar(355) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `custom_position_vertical` varchar(355) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `1674706175_meta_product_table`
--

CREATE TABLE `1674706175_meta_product_table` (
  `id` int(2) NOT NULL,
  `name` varchar(355) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` varchar(355) DEFAULT NULL,
  `img` varchar(355) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `rack` int(11) DEFAULT NULL,
  `glb_model` varchar(355) DEFAULT NULL,
  `tag` varchar(355) DEFAULT NULL,
  `scale` varchar(355) DEFAULT NULL,
  `rotation` varchar(355) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `custom_position_vertical` varchar(355) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `1674706276_meta_product_table`
--

CREATE TABLE `1674706276_meta_product_table` (
  `id` int(2) NOT NULL,
  `name` varchar(355) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` varchar(355) DEFAULT NULL,
  `img` varchar(355) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `rack` int(11) DEFAULT NULL,
  `glb_model` varchar(355) DEFAULT NULL,
  `tag` varchar(355) DEFAULT NULL,
  `scale` varchar(355) DEFAULT NULL,
  `rotation` varchar(355) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `custom_position_vertical` varchar(355) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `1674706298_meta_product_table`
--

CREATE TABLE `1674706298_meta_product_table` (
  `id` int(2) NOT NULL,
  `name` varchar(355) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` varchar(355) DEFAULT NULL,
  `img` varchar(355) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `rack` int(11) DEFAULT NULL,
  `glb_model` varchar(355) DEFAULT NULL,
  `tag` varchar(355) DEFAULT NULL,
  `scale` varchar(355) DEFAULT NULL,
  `rotation` varchar(355) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `custom_position_vertical` varchar(355) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `1674706346_meta_product_table`
--

CREATE TABLE `1674706346_meta_product_table` (
  `id` int(2) NOT NULL,
  `name` varchar(355) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` varchar(355) DEFAULT NULL,
  `img` varchar(355) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `rack` int(11) DEFAULT NULL,
  `glb_model` varchar(355) DEFAULT NULL,
  `tag` varchar(355) DEFAULT NULL,
  `scale` varchar(355) DEFAULT NULL,
  `rotation` varchar(355) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `custom_position_vertical` varchar(355) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `1674706401_meta_product_table`
--

CREATE TABLE `1674706401_meta_product_table` (
  `id` int(2) NOT NULL,
  `name` varchar(355) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` varchar(355) DEFAULT NULL,
  `img` varchar(355) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `rack` int(11) DEFAULT NULL,
  `glb_model` varchar(355) DEFAULT NULL,
  `tag` varchar(355) DEFAULT NULL,
  `scale` varchar(355) DEFAULT NULL,
  `rotation` varchar(355) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `custom_position_vertical` varchar(355) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `1674706427_meta_product_table`
--

CREATE TABLE `1674706427_meta_product_table` (
  `id` int(2) NOT NULL,
  `name` varchar(355) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` varchar(355) DEFAULT NULL,
  `img` varchar(355) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `rack` int(11) DEFAULT NULL,
  `glb_model` varchar(355) DEFAULT NULL,
  `tag` varchar(355) DEFAULT NULL,
  `scale` varchar(355) DEFAULT NULL,
  `rotation` varchar(355) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `custom_position_vertical` varchar(355) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `1674706436_meta_product_table`
--

CREATE TABLE `1674706436_meta_product_table` (
  `id` int(2) NOT NULL,
  `name` varchar(355) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` varchar(355) DEFAULT NULL,
  `img` varchar(355) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `rack` int(11) DEFAULT NULL,
  `glb_model` varchar(355) DEFAULT NULL,
  `tag` varchar(355) DEFAULT NULL,
  `scale` varchar(355) DEFAULT NULL,
  `rotation` varchar(355) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `custom_position_vertical` varchar(355) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `1674706473_meta_product_table`
--

CREATE TABLE `1674706473_meta_product_table` (
  `id` int(2) NOT NULL,
  `name` varchar(355) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` varchar(355) DEFAULT NULL,
  `img` varchar(355) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `rack` int(11) DEFAULT NULL,
  `glb_model` varchar(355) DEFAULT NULL,
  `tag` varchar(355) DEFAULT NULL,
  `scale` varchar(355) DEFAULT NULL,
  `rotation` varchar(355) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `custom_position_vertical` varchar(355) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `1674706512_meta_product_table`
--

CREATE TABLE `1674706512_meta_product_table` (
  `id` int(2) NOT NULL,
  `name` varchar(355) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` varchar(355) DEFAULT NULL,
  `img` varchar(355) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `rack` int(11) DEFAULT NULL,
  `glb_model` varchar(355) DEFAULT NULL,
  `tag` varchar(355) DEFAULT NULL,
  `scale` varchar(355) DEFAULT NULL,
  `rotation` varchar(355) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `custom_position_vertical` varchar(355) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `1674706565_meta_product_table`
--

CREATE TABLE `1674706565_meta_product_table` (
  `id` int(2) NOT NULL,
  `name` varchar(355) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` varchar(355) DEFAULT NULL,
  `img` varchar(355) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `rack` int(11) DEFAULT NULL,
  `glb_model` varchar(355) DEFAULT NULL,
  `tag` varchar(355) DEFAULT NULL,
  `scale` varchar(355) DEFAULT NULL,
  `rotation` varchar(355) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `custom_position_vertical` varchar(355) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `1674706633_meta_product_table`
--

CREATE TABLE `1674706633_meta_product_table` (
  `id` int(2) NOT NULL,
  `name` varchar(355) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` varchar(355) DEFAULT NULL,
  `img` varchar(355) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `rack` int(11) DEFAULT NULL,
  `glb_model` varchar(355) DEFAULT NULL,
  `tag` varchar(355) DEFAULT NULL,
  `scale` varchar(355) DEFAULT NULL,
  `rotation` varchar(355) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `custom_position_vertical` varchar(355) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `1674706640_meta_product_table`
--

CREATE TABLE `1674706640_meta_product_table` (
  `id` int(2) NOT NULL,
  `name` varchar(355) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` varchar(355) DEFAULT NULL,
  `img` varchar(355) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `rack` int(11) DEFAULT NULL,
  `glb_model` varchar(355) DEFAULT NULL,
  `tag` varchar(355) DEFAULT NULL,
  `scale` varchar(355) DEFAULT NULL,
  `rotation` varchar(355) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `custom_position_vertical` varchar(355) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `business`
--

CREATE TABLE `business` (
  `id` int(11) NOT NULL,
  `industry` varchar(355) DEFAULT NULL,
  `name` varchar(355) DEFAULT NULL,
  `address` varchar(355) DEFAULT NULL,
  `username` varchar(355) DEFAULT NULL,
  `password` varchar(355) DEFAULT NULL,
  `status` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `business`
--

INSERT INTO `business` (`id`, `industry`, `name`, `address`, `username`, `password`, `status`) VALUES
(1, 'Clothing', 'Melinda Cruz', 'Incididunt unde face', 'aaa', 'aaa', 1),
(2, 'FMCG', 'Tropicana ', 'Dolores nemo et non ', 'ccc', 'ccc', 1),
(3, 'Pharma', 'Upton Wade', 'Omnis enim qui aliqu', 'admin', '123', 1),
(4, 'FMCG', 'Test Business', 'Dolores nemo et non ', 'test', 'test', 1),
(5, 'Retail', 'Bisiness 1', 'Dolores nemo et non ', 'bisness', 'bisness', 1),
(6, 'Retail', 'Apple Imagine shop', 'Ea inventore consequ', 'testa', 'aaa', 1),
(7, 'Clothing', 'Chase Herring', 'Qui animi in volupt', 'lypykimaxa', 'Pa$$w0rd!', 1),
(8, 'Pharma', 'Jorden Hoffman', 'Sed deserunt minim d', 'jahunuket', 'Pa$$w0rd!', 1),
(9, 'Clothing', 'Alfreda Maldonado', 'Et asperiores cum vo', 'bimygeg', 'Pa$$w0rd!', 1);

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE `config` (
  `id` int(11) NOT NULL,
  `blockchain` varchar(355) DEFAULT NULL,
  `network_id` int(11) NOT NULL,
  `network_name` varchar(355) DEFAULT NULL,
  `currency_symbol` varchar(355) DEFAULT NULL,
  `network_url` varchar(355) DEFAULT NULL,
  `ChainExplorerAPIKEY` varchar(350) DEFAULT NULL,
  `WalletPrivateKey` varchar(355) DEFAULT NULL,
  `InfuraProjectId` varchar(355) DEFAULT NULL,
  `InfuraNodeURL` varchar(355) DEFAULT NULL,
  `Web3Storage` varchar(355) DEFAULT NULL,
  `awsAccessKeyId` varchar(355) DEFAULT NULL,
  `awsSecretAccessKey` varchar(355) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `blockchain_base_api` varchar(355) DEFAULT NULL,
  `opensea_base_url` varchar(355) DEFAULT NULL,
  `ms_dynamics_base_url` varchar(355) DEFAULT NULL,
  `ms_dynamics_client_id` varchar(355) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`id`, `blockchain`, `network_id`, `network_name`, `currency_symbol`, `network_url`, `ChainExplorerAPIKEY`, `WalletPrivateKey`, `InfuraProjectId`, `InfuraNodeURL`, `Web3Storage`, `awsAccessKeyId`, `awsSecretAccessKey`, `status`, `blockchain_base_api`, `opensea_base_url`, `ms_dynamics_base_url`, `ms_dynamics_client_id`) VALUES
(1, 'Ethereum', 5, 'goerli', 'ETH', 'https://goerli.etherscan.io', 'WCVDU52748WW4F7EKDEDB89HKH41BIA4N2', '8c5948e0dbc4163b176ea8cfb7ca6a3d2e9c52d2d1df7c363fababb8f2eb6f42', '24022fda545f41beb59334bdbaf3ef32', 'https://goerli.infura.io/v3/24022fda545f41beb59334bdbaf3ef32', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkaWQ6ZXRocjoweDEzMkRhNjE2N2U0OTY2Y2M2ODBlMjNlNzdjMmM5NjI2YWZFQjkyNzMiLCJpc3MiOiJ3ZWIzLXN0b3JhZ2UiLCJpYXQiOjE2NjAxOTIxNjI3MDEsIm5hbWUiOiJ0ZXN0In0.nrWyG-RPCty28GQLPOfjCacYoOoURarCyo6nh3t0QCY', NULL, NULL, 1, 'https://api-goerli.etherscan.io/api', 'https://testnets.opensea.io', 'https://dynamicswrapper.azurewebsites.net/api', '6599b26b-951b-4a5b-887c-4af57c57f63f'),
(2, 'Polygon', 80001, 'mumbai', 'MATIC', 'https://mumbai.polygonscan.com', 'G2FQ3WI7SWZDIEQE8CCCSZHJ1M97NXNYAE', '8c5948e0dbc4163b176ea8cfb7ca6a3d2e9c52d2d1df7c363fababb8f2eb6f42', NULL, '', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkaWQ6ZXRocjoweDEzMkRhNjE2N2U0OTY2Y2M2ODBlMjNlNzdjMmM5NjI2YWZFQjkyNzMiLCJpc3MiOiJ3ZWIzLXN0b3JhZ2UiLCJpYXQiOjE2NjAxOTIxNjI3MDEsIm5hbWUiOiJ0ZXN0In0.nrWyG-RPCty28GQLPOfjCacYoOoURarCyo6nh3t0QCY', NULL, NULL, 0, 'https://api-testnet.polygonscan.com/api', 'https://testnets.opensea.io', 'https://dynamicswrapper.azurewebsites.net/api', '6599b26b-951b-4a5b-887c-4af57c57f63f'),
(3, 'pwcPrivetNetwork', 14333, 'pwcPrivetNetwork', 'ETH', 'https://goerli.etherscan.io', 'WCVDU52748WW4F7EKDEDB89HKH41BIA4N2', 'cf89a65abbe4cd80548d019aecb2927dacb52c04988905fd8e75dc8f982b391c', '', '', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkaWQ6ZXRocjoweDEzMkRhNjE2N2U0OTY2Y2M2ODBlMjNlNzdjMmM5NjI2YWZFQjkyNzMiLCJpc3MiOiJ3ZWIzLXN0b3JhZ2UiLCJpYXQiOjE2NjAxOTIxNjI3MDEsIm5hbWUiOiJ0ZXN0In0.nrWyG-RPCty28GQLPOfjCacYoOoURarCyo6nh3t0QCY', NULL, NULL, 0, 'https://api-goerli.etherscan.io/api', 'https://testnets.opensea.io', 'https://dynamicswrapper.azurewebsites.net/api', '6599b26b-951b-4a5b-887c-4af57c57f63f');

-- --------------------------------------------------------

--
-- Table structure for table `ipfs`
--

CREATE TABLE `ipfs` (
  `id` int(11) NOT NULL,
  `data` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ipfs`
--

INSERT INTO `ipfs` (`id`, `data`) VALUES
(1, 'eyIxIjp7Im5hbWUiOiJSZXF1ZXN0ZWQiLCJwb3NpdGlvbiI6IjEiLCJpdGVtcyI6W119LCIyIjp7Im5hbWUiOiJUbyBkbyIsInBvc2l0aW9uIjoiMiIsIml0ZW1zIjpbXX0sIjMiOnsibmFtZSI6IkluIFByb2dyZXNzIiwicG9zaXRpb24iOiIzIiwiaXRlbXMiOltdfSwiNCI6eyJuYW1lIjoiRG9uZSIsInBvc2l0aW9uIjoiNCIsIml0ZW1zIjpbXX0sIjUiOnsibmFtZSI6IkNsb3NlZCIsInBvc2l0aW9uIjoiNSIsIml0ZW1zIjpbXX19'),
(2, 'IjxwPkVvcywgcmVwdWRpYW5kYWUgaXN0LjwvcD4i'),
(3, 'IjxwPlZlbCB2ZWxpdCByZXJ1bSBlbGlnLjwvcD4i'),
(4, 'eyJpZCI6IjVjMzJmYjg2LTQwMmYtNGNhZC1hMjllLWU4MjllZmI2NmFlYiIsIm5hbWUiOiJDb25zZWN0ZXR1ciByZXByZWhlbiIsInR5cGUiOiJidWciLCJwcmlvcml0eSI6ImNyaXRpY2FsIiwic3Rvcnlwb2ludCI6MTAsImRlc2NyaXB0aW9uIjoiaHR0cHM6Ly9zb3NhbC5pbi9lbmRwb2ludHMvaXBmcy9mZXRjaC1pcGZzLnBocD9pZD0yIiwiQUMiOiJodHRwczovL3Nvc2FsLmluL2VuZHBvaW50cy9pcGZzL2ZldGNoLWlwZnMucGhwP2lkPTMiLCJsaW5rZWRTdG9yaWVzIjoibnVsbCIsInRhc2tzIjoiW10ifQ=='),
(5, 'eyIxIjp7Im5hbWUiOiJSZXF1ZXN0ZWQiLCJwb3NpdGlvbiI6IjEiLCJpdGVtcyI6W3siaW5kZXgiOiIwIiwiaWQiOiI1YzMyZmI4Ni00MDJmLTRjYWQtYTI5ZS1lODI5ZWZiNjZhZWIiLCJzcHJpbnRJZCI6IjAiLCJhYmlMaW5rIjoiaHR0cHM6Ly9zb3NhbC5pbi9lbmRwb2ludHMvaXBmcy9mZXRjaC1pcGZzLnBocD9pZD00Iiwib3duZXIiOiIiLCJyZXBvdGVyIjoiNjIxZTFjNzctNTllMS00YTM0LTgwZTItNDMxMTM4MjZmNjE3IiwicG9zaXRpb24iOiIxIiwidHJhY2tpbmciOiJbe1widGltZVwiOlwiMjAyMi0xMC0xNFQwNzo1MjoyMi45MTFaXCIsXCJzdGF0dXNcIjpcImJ1ZyBjcmVhdGVkIHdpdGggY3JpdGljYWwgcHJpb3JpdHkgJiAxMCBzdG9yeXBvaW50IG9uIFNwcmludC11bmRlZmluZWRcIixcInVwZGF0ZWRCeVwiOlwiNjIxZTFjNzctNTllMS00YTM0LTgwZTItNDMxMTM4MjZmNjE3XCJ9LHtcInRpbWVcIjpcIjIwMjItMTAtMTRUMDc6NTM6MjQuMzg4WlwiLFwic3RhdHVzXCI6XCI8ZGl2IGNsYXNzPVxcXCJ0cmFjay1kaXZcXFwiPlRpY2tldCBhZGRlZCB0byBTcHJpbnQtMCA8aW1nIGNsYXNzPVxcXCJ0cmFjay1pbWctcHJvZmlsZVxcXCIgc3R5bGU9XFxcImJvcmRlci1yYWRpdXM6IDUwJTsgbWFyZ2luOjVweDtcXFwiIHNyYz1cXFwiaHR0cHM6Ly9iYWZ5YmVpZDN3YmhneWNtd2tmdGpibmdrYWpnYmkzaWtpc2tvM3QzeHplbmV4am1odHQycXc1bWttNC5pcGZzLmR3ZWIubGluay8xMmFiYzUxMzgwNzA1MDMuNjIxNjRjNmI4MDgyNi5qcGdcXFwiIGhlaWdodD1cXFwiMzBweFxcXCIgd2lkdGg9XFxcIjMwcHhcXFwiIC8+IDxiPlRlbXBvcmEgbW9sZXN0aWFzIG1pPC9iPjwvZGl2PlwiLFwidXBkYXRlZEJ5XCI6XCI2MjFlMWM3Ny01OWUxLTRhMzQtODBlMi00MzExMzgyNmY2MTdcIn1dIn1dfSwiMiI6eyJuYW1lIjoiVG8gZG8iLCJwb3NpdGlvbiI6IjIiLCJpdGVtcyI6W119LCIzIjp7Im5hbWUiOiJJbiBQcm9ncmVzcyIsInBvc2l0aW9uIjoiMyIsIml0ZW1zIjpbXX0sIjQiOnsibmFtZSI6IkRvbmUiLCJwb3NpdGlvbiI6IjQiLCJpdGVtcyI6W119LCI1Ijp7Im5hbWUiOiJDbG9zZWQiLCJwb3NpdGlvbiI6IjUiLCJpdGVtcyI6W119fQ=='),
(6, 'eyIxIjp7Im5hbWUiOiJSZXF1ZXN0ZWQiLCJwb3NpdGlvbiI6IjEiLCJpdGVtcyI6W119LCIyIjp7Im5hbWUiOiJUbyBkbyIsInBvc2l0aW9uIjoiMiIsIml0ZW1zIjpbeyJpbmRleCI6IjAiLCJpZCI6IjVjMzJmYjg2LTQwMmYtNGNhZC1hMjllLWU4MjllZmI2NmFlYiIsInNwcmludElkIjoiMCIsImFiaUxpbmsiOiJodHRwczovL3Nvc2FsLmluL2VuZHBvaW50cy9pcGZzL2ZldGNoLWlwZnMucGhwP2lkPTQiLCJvd25lciI6IiIsInJlcG90ZXIiOiI2MjFlMWM3Ny01OWUxLTRhMzQtODBlMi00MzExMzgyNmY2MTciLCJwb3NpdGlvbiI6IjEiLCJ0cmFja2luZyI6Ilt7XCJ0aW1lXCI6XCIyMDIyLTEwLTE0VDA3OjUyOjIyLjkxMVpcIixcInN0YXR1c1wiOlwiYnVnIGNyZWF0ZWQgd2l0aCBjcml0aWNhbCBwcmlvcml0eSAmIDEwIHN0b3J5cG9pbnQgb24gU3ByaW50LXVuZGVmaW5lZFwiLFwidXBkYXRlZEJ5XCI6XCI2MjFlMWM3Ny01OWUxLTRhMzQtODBlMi00MzExMzgyNmY2MTdcIn0se1widGltZVwiOlwiMjAyMi0xMC0xNFQwNzo1MzoyNC4zODhaXCIsXCJzdGF0dXNcIjpcIjxkaXYgY2xhc3M9XFxcInRyYWNrLWRpdlxcXCI+VGlja2V0IGFkZGVkIHRvIFNwcmludC0wIDxpbWcgY2xhc3M9XFxcInRyYWNrLWltZy1wcm9maWxlXFxcIiBzdHlsZT1cXFwiYm9yZGVyLXJhZGl1czogNTAlOyBtYXJnaW46NXB4O1xcXCIgc3JjPVxcXCJodHRwczovL2JhZnliZWlkM3diaGd5Y213a2Z0amJuZ2thamdiaTNpa2lza28zdDN4emVuZXhqbWh0dDJxdzVta200LmlwZnMuZHdlYi5saW5rLzEyYWJjNTEzODA3MDUwMy42MjE2NGM2YjgwODI2LmpwZ1xcXCIgaGVpZ2h0PVxcXCIzMHB4XFxcIiB3aWR0aD1cXFwiMzBweFxcXCIgLz4gPGI+VGVtcG9yYSBtb2xlc3RpYXMgbWk8L2I+PC9kaXY+XCIsXCJ1cGRhdGVkQnlcIjpcIjYyMWUxYzc3LTU5ZTEtNGEzNC04MGUyLTQzMTEzODI2ZjYxN1wifV0ifV19LCIzIjp7Im5hbWUiOiJJbiBQcm9ncmVzcyIsInBvc2l0aW9uIjoiMyIsIml0ZW1zIjpbXX0sIjQiOnsibmFtZSI6IkRvbmUiLCJwb3NpdGlvbiI6IjQiLCJpdGVtcyI6W119LCI1Ijp7Im5hbWUiOiJDbG9zZWQiLCJwb3NpdGlvbiI6IjUiLCJpdGVtcyI6W119fQ=='),
(7, 'eyJpZCI6IjVjMzJmYjg2LTQwMmYtNGNhZC1hMjllLWU4MjllZmI2NmFlYiIsIm5hbWUiOiJDb25zZWN0ZXR1ciByZXByZWhlbiIsInR5cGUiOiJidWciLCJwcmlvcml0eSI6ImNyaXRpY2FsIiwic3Rvcnlwb2ludCI6MTAsImRlc2NyaXB0aW9uIjoiaHR0cHM6Ly9zb3NhbC5pbi9lbmRwb2ludHMvaXBmcy9mZXRjaC1pcGZzLnBocD9pZD0yIiwiQUMiOiJodHRwczovL3Nvc2FsLmluL2VuZHBvaW50cy9pcGZzL2ZldGNoLWlwZnMucGhwP2lkPTMiLCJsaW5rZWRTdG9yaWVzIjoibnVsbCIsInRhc2tzIjoiW3tcInRyYWl0X3R5cGVcIjpcIlF1aSBpdXN0byBxdWFlIHZlbGl0XCIsXCJvd25lclwiOlwiNjIxZTFjNzctNTllMS00YTM0LTgwZTItNDMxMTM4MjZmNjE3XCIsXCJzdGF0dXNcIjpcImlucHJvZ3Jlc3NcIn1dIn0='),
(8, 'eyIxIjp7Im5hbWUiOiJSZXF1ZXN0ZWQiLCJwb3NpdGlvbiI6IjEiLCJpdGVtcyI6W119LCIyIjp7Im5hbWUiOiJUbyBkbyIsInBvc2l0aW9uIjoiMiIsIml0ZW1zIjpbXX0sIjMiOnsibmFtZSI6IkluIFByb2dyZXNzIiwicG9zaXRpb24iOiIzIiwiaXRlbXMiOltdfSwiNCI6eyJuYW1lIjoiRG9uZSIsInBvc2l0aW9uIjoiNCIsIml0ZW1zIjpbXX0sIjUiOnsibmFtZSI6IkNsb3NlZCIsInBvc2l0aW9uIjoiNSIsIml0ZW1zIjpbXX19'),
(9, 'eyIxIjp7Im5hbWUiOiJSZXF1ZXN0ZWQiLCJwb3NpdGlvbiI6IjEiLCJpdGVtcyI6W119LCIyIjp7Im5hbWUiOiJUbyBkbyIsInBvc2l0aW9uIjoiMiIsIml0ZW1zIjpbXX0sIjMiOnsibmFtZSI6IkluIFByb2dyZXNzIiwicG9zaXRpb24iOiIzIiwiaXRlbXMiOlt7ImluZGV4IjoiMCIsImlkIjoiNWMzMmZiODYtNDAyZi00Y2FkLWEyOWUtZTgyOWVmYjY2YWViIiwic3ByaW50SWQiOiIwIiwiYWJpTGluayI6Imh0dHBzOi8vc29zYWwuaW4vZW5kcG9pbnRzL2lwZnMvZmV0Y2gtaXBmcy5waHA/aWQ9NCIsIm93bmVyIjoiIiwicmVwb3RlciI6IjYyMWUxYzc3LTU5ZTEtNGEzNC04MGUyLTQzMTEzODI2ZjYxNyIsInBvc2l0aW9uIjoiMSIsInRyYWNraW5nIjoiW3tcInRpbWVcIjpcIjIwMjItMTAtMTRUMDc6NTI6MjIuOTExWlwiLFwic3RhdHVzXCI6XCJidWcgY3JlYXRlZCB3aXRoIGNyaXRpY2FsIHByaW9yaXR5ICYgMTAgc3Rvcnlwb2ludCBvbiBTcHJpbnQtdW5kZWZpbmVkXCIsXCJ1cGRhdGVkQnlcIjpcIjYyMWUxYzc3LTU5ZTEtNGEzNC04MGUyLTQzMTEzODI2ZjYxN1wifSx7XCJ0aW1lXCI6XCIyMDIyLTEwLTE0VDA3OjUzOjI0LjM4OFpcIixcInN0YXR1c1wiOlwiPGRpdiBjbGFzcz1cXFwidHJhY2stZGl2XFxcIj5UaWNrZXQgYWRkZWQgdG8gU3ByaW50LTAgPGltZyBjbGFzcz1cXFwidHJhY2staW1nLXByb2ZpbGVcXFwiIHN0eWxlPVxcXCJib3JkZXItcmFkaXVzOiA1MCU7IG1hcmdpbjo1cHg7XFxcIiBzcmM9XFxcImh0dHBzOi8vYmFmeWJlaWQzd2JoZ3ljbXdrZnRqYm5na2FqZ2JpM2lraXNrbzN0M3h6ZW5leGptaHR0MnF3NW1rbTQuaXBmcy5kd2ViLmxpbmsvMTJhYmM1MTM4MDcwNTAzLjYyMTY0YzZiODA4MjYuanBnXFxcIiBoZWlnaHQ9XFxcIjMwcHhcXFwiIHdpZHRoPVxcXCIzMHB4XFxcIiAvPiA8Yj5UZW1wb3JhIG1vbGVzdGlhcyBtaTwvYj48L2Rpdj5cIixcInVwZGF0ZWRCeVwiOlwiNjIxZTFjNzctNTllMS00YTM0LTgwZTItNDMxMTM4MjZmNjE3XCJ9XSJ9XX0sIjQiOnsibmFtZSI6IkRvbmUiLCJwb3NpdGlvbiI6IjQiLCJpdGVtcyI6W119LCI1Ijp7Im5hbWUiOiJDbG9zZWQiLCJwb3NpdGlvbiI6IjUiLCJpdGVtcyI6W119fQ=='),
(10, 'IjxwPnRlc3Q8L3A+Ig=='),
(11, 'IjxwPnRlc3Q8L3A+Ig=='),
(12, 'eyJpZCI6ImFiMzkwZGExLWIwY2EtNGYzMy1hZTE0LTQwODhjNDY1YTI3NiIsIm5hbWUiOiJUZXN0IiwidHlwZSI6InN0b3J5IiwicHJpb3JpdHkiOiJsb3ciLCJzdG9yeXBvaW50IjoyLCJkZXNjcmlwdGlvbiI6Imh0dHBzOi8vc29zYWwuaW4vZW5kcG9pbnRzL2lwZnMvZmV0Y2gtaXBmcy5waHA/aWQ9MTAiLCJBQyI6Imh0dHBzOi8vc29zYWwuaW4vZW5kcG9pbnRzL2lwZnMvZmV0Y2gtaXBmcy5waHA/aWQ9MTEiLCJsaW5rZWRTdG9yaWVzIjoiW3tcImluZGV4XCI6XCIwXCIsXCJpZFwiOlwiNWMzMmZiODYtNDAyZi00Y2FkLWEyOWUtZTgyOWVmYjY2YWViXCJ9XSIsInRhc2tzIjoiW3tcInRyYWl0X3R5cGVcIjpcInRyZXN0XCIsXCJ2YWx1ZVwiOlwidzIzXCJ9XSJ9'),
(13, 'eyIxIjp7Im5hbWUiOiJSZXF1ZXN0ZWQiLCJwb3NpdGlvbiI6IjEiLCJpdGVtcyI6W119LCIyIjp7Im5hbWUiOiJUbyBkbyIsInBvc2l0aW9uIjoiMiIsIml0ZW1zIjpbeyJpbmRleCI6IjAiLCJpZCI6IjVjMzJmYjg2LTQwMmYtNGNhZC1hMjllLWU4MjllZmI2NmFlYiIsInNwcmludElkIjoiMCIsImFiaUxpbmsiOiJodHRwczovL3Nvc2FsLmluL2VuZHBvaW50cy9pcGZzL2ZldGNoLWlwZnMucGhwP2lkPTQiLCJvd25lciI6IiIsInJlcG90ZXIiOiI2MjFlMWM3Ny01OWUxLTRhMzQtODBlMi00MzExMzgyNmY2MTciLCJwb3NpdGlvbiI6IjEiLCJ0cmFja2luZyI6Ilt7XCJ0aW1lXCI6XCIyMDIyLTEwLTE0VDA3OjUyOjIyLjkxMVpcIixcInN0YXR1c1wiOlwiYnVnIGNyZWF0ZWQgd2l0aCBjcml0aWNhbCBwcmlvcml0eSAmIDEwIHN0b3J5cG9pbnQgb24gU3ByaW50LXVuZGVmaW5lZFwiLFwidXBkYXRlZEJ5XCI6XCI2MjFlMWM3Ny01OWUxLTRhMzQtODBlMi00MzExMzgyNmY2MTdcIn0se1widGltZVwiOlwiMjAyMi0xMC0xNFQwNzo1MzoyNC4zODhaXCIsXCJzdGF0dXNcIjpcIjxkaXYgY2xhc3M9XFxcInRyYWNrLWRpdlxcXCI+VGlja2V0IGFkZGVkIHRvIFNwcmludC0wIDxpbWcgY2xhc3M9XFxcInRyYWNrLWltZy1wcm9maWxlXFxcIiBzdHlsZT1cXFwiYm9yZGVyLXJhZGl1czogNTAlOyBtYXJnaW46NXB4O1xcXCIgc3JjPVxcXCJodHRwczovL2JhZnliZWlkM3diaGd5Y213a2Z0amJuZ2thamdiaTNpa2lza28zdDN4emVuZXhqbWh0dDJxdzVta200LmlwZnMuZHdlYi5saW5rLzEyYWJjNTEzODA3MDUwMy42MjE2NGM2YjgwODI2LmpwZ1xcXCIgaGVpZ2h0PVxcXCIzMHB4XFxcIiB3aWR0aD1cXFwiMzBweFxcXCIgLz4gPGI+VGVtcG9yYSBtb2xlc3RpYXMgbWk8L2I+PC9kaXY+XCIsXCJ1cGRhdGVkQnlcIjpcIjYyMWUxYzc3LTU5ZTEtNGEzNC04MGUyLTQzMTEzODI2ZjYxN1wifV0ifV19LCIzIjp7Im5hbWUiOiJJbiBQcm9ncmVzcyIsInBvc2l0aW9uIjoiMyIsIml0ZW1zIjpbXX0sIjQiOnsibmFtZSI6IkRvbmUiLCJwb3NpdGlvbiI6IjQiLCJpdGVtcyI6W119LCI1Ijp7Im5hbWUiOiJDbG9zZWQiLCJwb3NpdGlvbiI6IjUiLCJpdGVtcyI6W119fQ=='),
(14, 'IjxwPlwiPC9wPjxwPlZlbCB2ZWxpdCByZXJ1bSBlbGlnLjwvcD48cD5va2trazwvcD48cD5cIjwvcD4i'),
(15, 'eyJpZCI6IjVjMzJmYjg2LTQwMmYtNGNhZC1hMjllLWU4MjllZmI2NmFlYiIsIm5hbWUiOiJDb25zZWN0ZXR1ciByZXByZWhlbiIsInR5cGUiOiJidWciLCJwcmlvcml0eSI6ImNyaXRpY2FsIiwic3Rvcnlwb2ludCI6MTAsImRlc2NyaXB0aW9uIjoiaHR0cHM6Ly9zb3NhbC5pbi9lbmRwb2ludHMvaXBmcy9mZXRjaC1pcGZzLnBocD9pZD0yIiwiQUMiOiJodHRwczovL3Nvc2FsLmluL2VuZHBvaW50cy9pcGZzL2ZldGNoLWlwZnMucGhwP2lkPTE0IiwibGlua2VkU3RvcmllcyI6Im51bGwiLCJ0YXNrcyI6Ilt7XCJ0cmFpdF90eXBlXCI6XCJRdWkgaXVzdG8gcXVhZSB2ZWxpdFwiLFwib3duZXJcIjpcIjYyMWUxYzc3LTU5ZTEtNGEzNC04MGUyLTQzMTEzODI2ZjYxN1wiLFwic3RhdHVzXCI6XCJpbnByb2dyZXNzXCJ9XSJ9');

-- --------------------------------------------------------

--
-- Table structure for table `land_locations`
--

CREATE TABLE `land_locations` (
  `id` int(11) NOT NULL,
  `name` varchar(355) NOT NULL,
  `position` varchar(355) DEFAULT NULL,
  `on_exit_camers_position` varchar(355) DEFAULT NULL,
  `shop_name_position` varchar(355) DEFAULT NULL,
  `shop_name_rotation` varchar(355) DEFAULT '0 0 0 ',
  `shop_name_scale` varchar(355) DEFAULT '20 20 20',
  `shop_name_color` varchar(355) DEFAULT 'red',
  `link_door_position` varchar(355) DEFAULT NULL,
  `link_door_rotation` varchar(355) DEFAULT '0 0 0',
  `link_door_thumb` varchar(355) DEFAULT 'Untitled.png',
  `marker_position` varchar(355) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `land_locations`
--

INSERT INTO `land_locations` (`id`, `name`, `position`, `on_exit_camers_position`, `shop_name_position`, `shop_name_rotation`, `shop_name_scale`, `shop_name_color`, `link_door_position`, `link_door_rotation`, `link_door_thumb`, `marker_position`, `status`) VALUES
(1, 'Plot 1', '0 0 5', '0 3 50', '-10 45 10', '0 0 0 ', '20 20 20', 'red', '8 3 15', '0 0 0', 'Untitled.png', '0 0 5', 0),
(2, 'Plot 2', '80 0 5', '80 3 35', '58 25 15', '0 0 0 ', '15 15 15', 'red', '80 3 16', '0 0 0', 'Untitled.png', '80 0 5', 0),
(3, 'Plot 3', '150 0 50', '130 3 60', '140 25 35', '0 -90 0 ', '20 20 20', 'red', '145 3 50', '0 90 0', 'Untitled.png', '130 3 60', 0),
(4, 'Plot 4', '-50 0 50', '-50 3 90', '-62 20 58', '0 0 0 ', '10 10 10', 'green', '-50 3 63', '0 0 0', 'Untitled.png', '-50 6 50', 0),
(5, 'Plot 5', '-110 0 50', '-110 3 90', '-120 30 60', '0 0 0 ', '20 20 20', 'red', '-110 3 63', '0 0 0', 'Untitled.png', '-110 6 50', 0),
(6, 'Plot 6', '-160 0 50', '-160 3 90', '-170 20 60', '0 0 0 ', '20 20 20', 'red', '-160 3 90', '0 0 0', 'Untitled.png', '-160 6 50', 0),
(7, 'Plot 7', '-200 0 50', '-200 3 90', '-220 20 60', '0 0 0 ', '20 20 20', 'red', '-200 3 90', '0 0 0', 'Untitled.png', '-200 6 50', 0),
(8, 'Plot 8', '-110 0 100', '-150 3 130', '-120 30 110', '0 0 0 ', '20 20 20', 'red', '-150 3 130', '0 0 0', 'Untitled.png', '-110 6 100', 0),
(9, 'Plot 9', '-60 0 100', '-80 3 130', '-90 30 110', '0 0 0 ', '20 20 20', 'red', '-60 3 110', '0 0 0', 'Untitled.png', '-60 6 100', 0),
(10, 'Plot 10', '-170 0 100', '-170 3 130', '-180 30 110', '0 0 0 ', '20 20 20', 'red', '-150 3 70', '0 0 0', 'Untitled.png', '-170 6 100', 0);

-- --------------------------------------------------------

--
-- Table structure for table `meta_shop_lists`
--

CREATE TABLE `meta_shop_lists` (
  `id` int(11) NOT NULL,
  `name` varchar(355) DEFAULT NULL,
  `link` varchar(355) DEFAULT NULL,
  `shop` varchar(355) DEFAULT NULL,
  `thumb_model` varchar(355) DEFAULT 'shop_thumb_1.glb',
  `thumb_model_scale` varchar(355) DEFAULT '600 700 600',
  `thumb_model_rotation` varchar(355) DEFAULT '0 0 0',
  `shop_env_model` varchar(355) DEFAULT NULL,
  `rack` varchar(355) DEFAULT NULL,
  `stand_qty` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `land_locations_id` int(11) DEFAULT NULL,
  `wall_video` varchar(355) DEFAULT 'dummy.mp4',
  `left_wall_banner` varchar(355) DEFAULT NULL,
  `right_wall_banner` varchar(355) DEFAULT 'default.jpg',
  `direct_entry` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meta_shop_lists`
--

INSERT INTO `meta_shop_lists` (`id`, `name`, `link`, `shop`, `thumb_model`, `thumb_model_scale`, `thumb_model_rotation`, `shop_env_model`, `rack`, `stand_qty`, `user_id`, `status`, `land_locations_id`, `wall_video`, `left_wall_banner`, `right_wall_banner`, `direct_entry`) VALUES
(1, 'Macdonald', '1672196528', 'shop_base.glb', '1672712898.glb', '300 300 300', '0 0 0', 'shop_base.glb', 'Stand.glb', 2, 1, 1, 1, '1672715425.mp4', '1674840180_left.png', '1674840190_right.png', 1),
(2, 'Apolo Pharmicy ', '1672225043', 'shop_base.glb', '1672740882.glb', '500 500 500', '0 0 0', 'shop_base.glb', 'Stand3.glb', 2, 1, 1, 2, '1672741911.mp4', '1674837749_left.png', '1674837749_right.png', 1),
(3, 'Reliance Digital ', '1672715841', 'shop_base.glb', '1672715910.glb', '600 700 600', '0 -90 0', 'shop_base.glb', 'Stand3.glb', 2, 1, 1, 3, 'dummy.mp4', 'default_left_banner.jpg', 'default.jpg', 0),
(4, 'Gupta veg shop', '1673239124', 'shop_base.glb', '1673239387.glb', '500 600 500', '0 0 0', 'shop_base.glb', 'Stand3.glb', 2, 1, 1, 4, 'dummy.mp4', 'default_left_banner.jpg', 'default.jpg', 1),
(5, 'Test', '1673242175', 'shop_base.glb', 'shop_thumb_1.glb', '600 700 600', '0 0 0', 'shop_base.glb', 'Stand3.glb', 2, 2, 0, 4, 'dummy.mp4', 'default_left_banner.jpg', 'default.jpg', 1),
(6, 'Shop 1', '1673347505', 'shop_base.glb', '1673348263.glb', '400 500 400', '0 0 0', 'shop_base.glb', 'Stand3.glb', 2, 3, 1, 5, 'dummy.mp4', 'default_left_banner.jpg', 'default.jpg', 0),
(7, 'Imagine store', '1674588784', 'shop_base.glb', '1674588922.glb', '600 700 600', '0 0 0', 'shop_base.glb', 'Stand3.glb', 2, 4, 0, 9, 'dummy.mp4', 'default_left_banner.jpg', 'default.jpg', 1),
(8, 'Imagine store', '1674590093', 'shop_base.glb', '1674590173.glb', '600 700 600', '0 0 0', 'shop_base.glb', 'Stand3.glb', 2, 5, 0, 9, 'dummy.mp4', 'default_left_banner.jpg', 'default.jpg', 1),
(9, 'Apple store', '1674591687', 'shop_base.glb', '1674591758.glb', '600 700 600', '0 0 0', 'shop_base.glb', 'Stand3.glb', 2, 6, 0, 9, '1674615160.mp4', 'default_left_banner.jpg', 'default.jpg', 0),
(10, 'Moses Hansen', '1674705864', 'shop_base.glb', 'shop_thumb_1.glb', '600 700 600', '0 0 0', 'shop_base.glb', 'Stand2.glb', 653, 6, 0, 10, 'dummy.mp4', 'default_left_banner.jpg', 'default.jpg', 1),
(11, 'Joan Romero', '1674705955', 'shop_base.glb', 'shop_thumb_1.glb', '600 700 600', '0 0 0', 'shop_base.glb', 'Stand3.glb', 612, 6, 0, 4, 'dummy.mp4', 'default_left_banner.jpg', 'default.jpg', 1),
(12, 'Silas Church', '1674705969', '', 'shop_thumb_1.glb', '600 700 600', '0 0 0', '', 'Stand3.glb', 824, 6, 0, 4, 'dummy.mp4', 'default_left_banner.jpg', 'default.jpg', 1),
(13, 'Silas Church', '1674705980', '', 'shop_thumb_1.glb', '600 700 600', '0 0 0', '', 'Stand3.glb', 824, 6, 0, 4, 'dummy.mp4', 'default_left_banner.jpg', 'default.jpg', 1),
(14, 'Colin Sweeney', '1674706175', 'shop_base.glb', 'shop_thumb_1.glb', '600 700 600', '0 0 0', 'shop_base.glb', 'Stand3.glb', 432, 6, 0, 0, 'dummy.mp4', 'default_left_banner.jpg', 'default.jpg', 1),
(15, 'Aidan Salazar', '1674706276', '', 'shop_thumb_1.glb', '600 700 600', '0 0 0', '', 'Stand3.glb', 447, 6, 0, 7, 'dummy.mp4', 'default_left_banner.jpg', 'default.jpg', 1),
(16, 'Aidan Salazar', '1674706298', 'shop_base.glb', 'shop_thumb_1.glb', '600 700 600', '0 0 0', 'shop_base.glb', 'Stand3.glb', 447, 6, 0, 7, 'dummy.mp4', 'default_left_banner.jpg', 'default.jpg', 1),
(17, 'Mariko Woodard', '1674706346', 'shop_base.glb', 'shop_thumb_1.glb', '600 700 600', '0 0 0', 'shop_base.glb', 'Stand3.glb', 84, 6, 0, 4, 'dummy.mp4', 'default_left_banner.jpg', 'default.jpg', 1),
(18, 'Signe Hatfield', '1674706401', 'shop_base.glb', 'shop_thumb_1.glb', '600 700 600', '0 0 0', 'shop_base.glb', 'Stand2.glb', 712, 6, 0, 3, 'dummy.mp4', 'default_left_banner.jpg', 'default.jpg', 1),
(19, 'Brooke Bradford', '1674706427', '', 'shop_thumb_1.glb', '600 700 600', '0 0 0', '', 'Stand.glb', 268, 6, 0, 5, 'dummy.mp4', 'default_left_banner.jpg', 'default.jpg', 1),
(20, 'Brooke Bradford', '1674706436', 'shop_base.glb', 'shop_thumb_1.glb', '600 700 600', '0 0 0', 'shop_base.glb', 'Stand.glb', 268, 6, 0, 5, 'dummy.mp4', 'default_left_banner.jpg', 'default.jpg', 1),
(21, 'Shaine Reeves', '1674706473', 'shop_base.glb', 'shop_thumb_1.glb', '600 700 600', '0 0 0', 'shop_base.glb', 'Stand3.glb', 377, 6, 0, 8, 'dummy.mp4', 'default_left_banner.jpg', 'default.jpg', 1),
(22, 'Graham Dunlap', '1674706512', 'shop_base.glb', 'shop_thumb_1.glb', '600 700 600', '0 0 0', 'shop_base.glb', 'Stand.glb', 801, 6, 0, 9, 'dummy.mp4', 'default_left_banner.jpg', 'default.jpg', 1),
(23, 'Neil Cole', '1674706565', 'shop_base.glb', 'shop_thumb_1.glb', '600 700 600', '0 0 0', 'shop_base.glb', 'Stand.glb', 457, 6, 0, 6, 'dummy.mp4', 'default_left_banner.jpg', 'default.jpg', 1),
(24, 'Kay Coleman', '1674706633', '', 'shop_thumb_1.glb', '600 700 600', '0 0 0', '', 'Stand.glb', 328, 6, 0, 7, 'dummy.mp4', 'default_left_banner.jpg', 'default.jpg', 1),
(25, 'Kyla Merrill', '1674706640', 'shop_base.glb', 'shop_thumb_1.glb', '600 700 600', '0 0 0', 'shop_base.glb', 'Stand.glb', 604, 6, 0, 1, 'dummy.mp4', 'default_left_banner.jpg', 'default.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `meta_shop_orders`
--

CREATE TABLE `meta_shop_orders` (
  `id` int(11) NOT NULL,
  `order_id` varchar(355) DEFAULT NULL,
  `db_name` varchar(355) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meta_shop_orders`
--

INSERT INTO `meta_shop_orders` (`id`, `order_id`, `db_name`, `product_id`, `qty`, `address`, `status`) VALUES
(4, 'order_KrEjaqV03iE1vT', '111_meta_product_table', 1, 1, 'Godrej Genesis\nUnit No. 1604 (16th Floor) & Unit Nos. 1701, 1702 (17th Floor)\nPlot No X1, Block EP & GP, Sector-V, Salt Lake City\nKolkata â€“ 700 091, West Bengal', 0),
(5, 'order_KrEpgNe9jLQJbo', '111_meta_product_table', 1, 1, 'Godrej Genesis\nUnit No. 1604 (16th Floor) & Unit Nos. 1701, 1702 (17th Floor)\nPlot No X1, Block EP & GP, Sector-V, Salt Lake City\nKolkata â€“ 700 091, West Bengal', 0),
(6, 'order_KrEpgNe9jLQJbo', '111_meta_product_table', 2, 1, 'Godrej Genesis\nUnit No. 1604 (16th Floor) & Unit Nos. 1701, 1702 (17th Floor)\nPlot No X1, Block EP & GP, Sector-V, Salt Lake City\nKolkata â€“ 700 091, West Bengal', 0),
(7, 'order_KrIZvnLpblr6fn', 'shop2_meta_product_table', 1, 1, 'Godrej Genesis\nUnit No. 1604 (16th Floor) & Unit Nos. 1701, 1702 (17th Floor)\nPlot No X1, Block EP & GP, Sector-V, Salt Lake City\nKolkata â€“ 700 091, West Bengal', 0),
(8, 'order_KrIZvnLpblr6fn', 'shop2_meta_product_table', 2, 1, 'Godrej Genesis\nUnit No. 1604 (16th Floor) & Unit Nos. 1701, 1702 (17th Floor)\nPlot No X1, Block EP & GP, Sector-V, Salt Lake City\nKolkata â€“ 700 091, West Bengal', 0),
(9, 'order_KrIhYK3WWXkSh3', 'shop2_meta_product_table', 2, 1, 'Godrej Genesis\nUnit No. 1604 (16th Floor) & Unit Nos. 1701, 1702 (17th Floor)\nPlot No X1, Block EP & GP, Sector-V, Salt Lake City\nKolkata â€“ 700 091, West Bengal', 0),
(10, 'order_Ks9kdj6TV35RI3', '111_meta_product_table', 1, 1, 'Godrej Genesis\nUnit No. 1604 (16th Floor) & Unit Nos. 1701, 1702 (17th Floor)\nPlot No X1, Block EP & GP, Sector-V, Salt Lake City\nKolkata â€“ 700 091, West Bengal', 0),
(11, 'order_Ku8KYYLUdEGnXZ', '111_meta_product_table', 1, 1, 'Godrej Genesis\nUnit No. 1604 (16th Floor) & Unit Nos. 1701, 1702 (17th Floor)\nPlot No X1, Block EP & GP, Sector-V, Salt Lake City\nKolkata â€“ 700 091, West Bengal', 0),
(12, 'order_Ku8KYYLUdEGnXZ', '111_meta_product_table', 2, 1, 'Godrej Genesis\nUnit No. 1604 (16th Floor) & Unit Nos. 1701, 1702 (17th Floor)\nPlot No X1, Block EP & GP, Sector-V, Salt Lake City\nKolkata â€“ 700 091, West Bengal', 0),
(13, 'order_Ku8toXWvMlUz2k', 'my_shop_1_meta_product_table', 3, 1, 'Godrej Genesis\nUnit No. 1604 (16th Floor) & Unit Nos. 1701, 1702 (17th Floor)\nPlot No X1, Block EP & GP, Sector-V, Salt Lake City\nKolkata â€“ 700 091, West Bengal', 0),
(14, 'order_Ku8toXWvMlUz2k', 'my_shop_1_meta_product_table', 1, 1, 'Godrej Genesis\nUnit No. 1604 (16th Floor) & Unit Nos. 1701, 1702 (17th Floor)\nPlot No X1, Block EP & GP, Sector-V, Salt Lake City\nKolkata â€“ 700 091, West Bengal', 0),
(15, 'order_Ku8toXWvMlUz2k', 'my_shop_1_meta_product_table', 2, 1, 'Godrej Genesis\nUnit No. 1604 (16th Floor) & Unit Nos. 1701, 1702 (17th Floor)\nPlot No X1, Block EP & GP, Sector-V, Salt Lake City\nKolkata â€“ 700 091, West Bengal', 0),
(16, 'order_KxGrajhGZHAmTn', '1672196528_meta_product_table', 2, 1, 'Godrej Genesis\nUnit No. 1604 (16th Floor) & Unit Nos. 1701, 1702 (17th Floor)\nPlot No X1, Block EP & GP, Sector-V, Salt Lake City\nKolkata â€“ 700 091, West Bengal', 0),
(17, 'order_KxGrajhGZHAmTn', '1672196528_meta_product_table', 1, 1, 'Godrej Genesis\nUnit No. 1604 (16th Floor) & Unit Nos. 1701, 1702 (17th Floor)\nPlot No X1, Block EP & GP, Sector-V, Salt Lake City\nKolkata â€“ 700 091, West Bengal', 0),
(18, 'order_Kxahz9rK8IlfZN', '1672196528_meta_product_table', 1, 1, 'Godrej Genesis\nUnit No. 1604 (16th Floor) & Unit Nos. 1701, 1702 (17th Floor)\nPlot No X1, Block EP & GP, Sector-V, Salt Lake City\nKolkata â€“ 700 091, West Bengal', 0),
(19, 'order_Kxahz9rK8IlfZN', '1672196528_meta_product_table', 2, 1, 'Godrej Genesis\nUnit No. 1604 (16th Floor) & Unit Nos. 1701, 1702 (17th Floor)\nPlot No X1, Block EP & GP, Sector-V, Salt Lake City\nKolkata â€“ 700 091, West Bengal', 0),
(20, 'order_Kxahz9rK8IlfZN', '1672196528_meta_product_table', 1, 1, 'Godrej Genesis\nUnit No. 1604 (16th Floor) & Unit Nos. 1701, 1702 (17th Floor)\nPlot No X1, Block EP & GP, Sector-V, Salt Lake City\nKolkata â€“ 700 091, West Bengal', 0),
(21, 'order_Kxahz9rK8IlfZN', '1672196528_meta_product_table', 2, 1, 'Godrej Genesis\nUnit No. 1604 (16th Floor) & Unit Nos. 1701, 1702 (17th Floor)\nPlot No X1, Block EP & GP, Sector-V, Salt Lake City\nKolkata â€“ 700 091, West Bengal', 0),
(22, 'order_Kzg8P6E6ER6jWc', '1672715841_meta_product_table', 2, 1, 'Godrej Genesis\nUnit No. 1604 (16th Floor) & Unit Nos. 1701, 1702 (17th Floor)\nPlot No X1, Block EP & GP, Sector-V, Salt Lake City\nKolkata â€“ 700 091, West Bengal', 0),
(23, 'order_Kzg8P6E6ER6jWc', '1672715841_meta_product_table', 3, 1, 'Godrej Genesis\nUnit No. 1604 (16th Floor) & Unit Nos. 1701, 1702 (17th Floor)\nPlot No X1, Block EP & GP, Sector-V, Salt Lake City\nKolkata â€“ 700 091, West Bengal', 0),
(24, 'order_L1x6HWugEjJ6G1', '1672196528_meta_product_table', 1, 1, 'Godrej Genesis\nUnit No. 1604 (16th Floor) & Unit Nos. 1701, 1702 (17th Floor)\nPlot No X1, Block EP & GP, Sector-V, Salt Lake City\nKolkata â€“ 700 091, West Bengal', 0),
(25, 'order_L1x6HWugEjJ6G1', '1672196528_meta_product_table', 3, 1, 'Godrej Genesis\nUnit No. 1604 (16th Floor) & Unit Nos. 1701, 1702 (17th Floor)\nPlot No X1, Block EP & GP, Sector-V, Salt Lake City\nKolkata â€“ 700 091, West Bengal', 0),
(26, 'order_L2Rp4162lQwqqZ', '1673347505_meta_product_table', 2, 1, 'Godrej Genesis\nUnit No. 1604 (16th Floor) & Unit Nos. 1701, 1702 (17th Floor)\nPlot No X1, Block EP & GP, Sector-V, Salt Lake City\nKolkata â€“ 700 091, West Bengal', 0),
(27, 'order_L2Rp4162lQwqqZ', '1673347505_meta_product_table', 1, 1, 'Godrej Genesis\nUnit No. 1604 (16th Floor) & Unit Nos. 1701, 1702 (17th Floor)\nPlot No X1, Block EP & GP, Sector-V, Salt Lake City\nKolkata â€“ 700 091, West Bengal', 0),
(28, 'order_L88nmWaRRrLSta', '1674590093_meta_product_table', 2, 1, 'Godrej Genesis\nUnit No. 1604 (16th Floor) & Unit Nos. 1701, 1702 (17th Floor)\nPlot No X1, Block EP & GP, Sector-V, Salt Lake City\nKolkata – 700 091, West Bengal', 0),
(29, 'order_L88nmWaRRrLSta', '1674590093_meta_product_table', 2, 1, 'Godrej Genesis\nUnit No. 1604 (16th Floor) & Unit Nos. 1701, 1702 (17th Floor)\nPlot No X1, Block EP & GP, Sector-V, Salt Lake City\nKolkata – 700 091, West Bengal', 0),
(30, 'order_L88tNmD01Sf5Fo', '1674590093_meta_product_table', 1, 1, 'Godrej Genesis\nUnit No. 1604 (16th Floor) & Unit Nos. 1701, 1702 (17th Floor)\nPlot No X1, Block EP & GP, Sector-V, Salt Lake City\nKolkata – 700 091, West Bengal', 0),
(31, 'order_L88tNmD01Sf5Fo', '1674590093_meta_product_table', 2, 1, 'Godrej Genesis\nUnit No. 1604 (16th Floor) & Unit Nos. 1701, 1702 (17th Floor)\nPlot No X1, Block EP & GP, Sector-V, Salt Lake City\nKolkata – 700 091, West Bengal', 0),
(32, 'order_L88tNmD01Sf5Fo', '1674590093_meta_product_table', 2, 1, 'Godrej Genesis\nUnit No. 1604 (16th Floor) & Unit Nos. 1701, 1702 (17th Floor)\nPlot No X1, Block EP & GP, Sector-V, Salt Lake City\nKolkata – 700 091, West Bengal', 0),
(33, 'order_L896tX74IMV454', '1674591687_meta_product_table', 1, 1, 'Godrej Genesis\nUnit No. 1604 (16th Floor) & Unit Nos. 1701, 1702 (17th Floor)\nPlot No X1, Block EP & GP, Sector-V, Salt Lake City\nKolkata – 700 091, West Bengal', 0),
(34, 'order_L896tX74IMV454', '1674591687_meta_product_table', 2, 1, 'Godrej Genesis\nUnit No. 1604 (16th Floor) & Unit Nos. 1701, 1702 (17th Floor)\nPlot No X1, Block EP & GP, Sector-V, Salt Lake City\nKolkata – 700 091, West Bengal', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nft_mall_metaverce`
--

CREATE TABLE `nft_mall_metaverce` (
  `id` int(11) NOT NULL,
  `category` varchar(355) DEFAULT NULL,
  `token_id` varchar(355) DEFAULT NULL,
  `image_link` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nft_mall_metaverce`
--

INSERT INTO `nft_mall_metaverce` (`id`, `category`, `token_id`, `image_link`) VALUES
(1, 'art', '1', 'https://bafybeigg44klnhddhbubffntnqbccskdhts5yceqxqtt76k4kmqvvhdfoi.ipfs.dweb.link/blog2.jpeg'),
(2, 'music', '2', 'https://bafybeictbun4i3wxkfcp2ei7ogh4kajptkyeie6jdjo62gdjy5thw4bqou.ipfs.dweb.link/art_nft.jpeg'),
(3, 'art', '3', 'https://bafybeidic2zeiswpmrzwhvdalncpvl5fuyqa7seyzkc7tf2nkptjmsceia.ipfs.dweb.link/blog1.png'),
(4, 'sports', '4', 'https://bafybeigl6jlbtdmgck4unc44k4vcd5iziz6px5bq32iplwxghx6semsp2q.ipfs.dweb.link/bull.png'),
(5, 'art', '5', 'https://bafybeidrygbmakbv7nuy6axi4iwrclcwzqwdv32n6tkvmzsawbithvrbuy.ipfs.dweb.link/coolimg.png'),
(6, 'art', '6', 'https://bafybeiaaflycuvjclqjmgegpvzbrw4hzmlc2d32gm4di2d3xttrtk4bjw4.ipfs.dweb.link/images.jpg'),
(9, 'sports', '9', 'https://bafybeichym4p6lp2m5gufhczq2lsdkwztv5ysydpagq3setuz35wj5jw64.ipfs.dweb.link/EldhosePaul.jpg'),
(10, 'sports', '10', 'https://bafybeieswdgc3bylktnum3tfoenneltxv67qcep3apiemmp2j5tvqf35ki.ipfs.dweb.link/Ravi-Dahiya-1024x682.jpg'),
(11, 'Heritage', '22', 'https://bafybeif5cjgwuocbghndnvloy5hx74w5nh24mr6azuwvuj4steul36ltyi.ipfs.dweb.link/token22.png'),
(12, 'Heritage', '23', 'https://bafybeienecdzv7fkr57oncdfe4mcgqv4mu35ha3dle3buzijnepnxdft44.ipfs.dweb.link/token23.png'),
(15, 'Heritage', '24', 'https://bafybeic4hisl4ny6iqzkrlzu6fl7vjxijjvxxomjr2qbwlxhzrdaim3z7q.ipfs.dweb.link/token20.png'),
(16, 'Heritage', '25', 'https://bafybeicctpcqu2ajwrbppidxxt7i6mrifvkhwzedz24gxerywyckpvzjji.ipfs.dweb.link/token19.jpg'),
(17, 'Heritage', '26', 'https://bafybeiglp5t7xkvy625gn57bxw32mwkg5vgpqcvwee4dd37xdawwqz73ly.ipfs.dweb.link/token18.jpg'),
(20, 'sports', '11', 'https://bafybeia5ci5wo6wvxljxp4k6tbh6eyy2aemgafso2x7wpnydqguqpgukju.ipfs.dweb.link/shikhar-dhawan.jpg'),
(21, 'sports', '12', 'https://bafybeicjy4vqcnur6l7zp5ijtpkyat3gcbjoq7ydfas4iylfr2gdztclua.ipfs.dweb.link/RohitSharma.jfif'),
(22, 'sports', '14', 'https://bafybeiefdd4vrrxicwxzk6npcjubyur754bkd2wxjqtpwy4tpvrojrarsm.ipfs.dweb.link/token7.jpg'),
(23, 'sports', '15', 'https://bafybeic7ovq2xtr7uzbuejzlsfzm2uhnocwbao4t3t3lwmunypllt7q7cu.ipfs.dweb.link/token8.jpg'),
(24, 'sports', '16', 'https://bafybeifvexrn2wtbk25jhovmd4bsjl7ahht65ulunazx2t7mjkfzewrcli.ipfs.dweb.link/Token9.jpg'),
(25, 'sports', '17', 'https://bafybeidsvz34nvakffsqyrqnlifuyp5xllyxtd72k4wrwh676qchqemziq.ipfs.dweb.link/token14.jpg'),
(26, 'sports', '18', 'https://bafybeiazpyvxvy3g4aq7423kuathqod3s5niwfwvgnniebsjj7spkdn64m.ipfs.dweb.link/token15.jpg'),
(27, 'sports', '19', 'https://bafybeicdwyjjojtf7jqg7zjkawv42izc6mliwhtfvpsuuo26fg3w4ydxba.ipfs.dweb.link/token17.png'),
(28, 'sports', '20', 'https://bafybeifcqvmletwsuptp7kjvta6x4wvl4ctfsxttaygt7kiz2aynmjg7iy.ipfs.dweb.link/token23.jpg'),
(29, 'sports', '21', 'https://bafybeigyzqyccalneuayggvxcrwlftddsezhp75f5wnrmcbyqoie4i3oc4.ipfs.dweb.link/token24.jpg'),
(30, 'art', '28', 'https://bafybeifz3uweoolwubff3jfazrnjxfowg3nayy22wq6btul54zsqnnt6ve.ipfs.dweb.link/images.jpg'),
(31, 'art', '29', 'https://bafybeicxbfgej5s7eo3ef43cd2ncnkjkdw46xp6cycx2tagvoomr4qykaq.ipfs.dweb.link/digital-art-enzo-tommasi.jpg'),
(32, 'art', '30', 'https://bafybeigaiqi4gj645anbvs3j7axkvscnpbv4n26smhuhjhfiezafgpmsle.ipfs.dweb.link/f538ac150154279.Y3JvcCw5MDAsNzAzLDAsNDI3.jpg'),
(35, 'art', '32', 'https://bafybeihe2rqcniczaeugfiaaqwjtzn5kwr2opjbygqnxishjpp2wqeuhw4.ipfs.dweb.link/7d6d56af8d391af5ae82824d5a281552.jpg'),
(36, 'art', '33', 'https://bafybeig33fy3kuivhznah2he7tkhkujne4ftt7l3dpw7c45qadgrtfpu3a.ipfs.dweb.link/c1da42b65b43c1c08cc4c8372633fe59.jpg'),
(37, 'sports', '34', 'https://bafybeiarlx6m4sdaqsx647oeuju6rt4y5j2ngwwezbbldtlxmtuwsqdorm.ipfs.dweb.link/Spirit_Of_Sports_-_Digital_Art_-_Soccer_Superstars_-_Cristiano_Ronaldo_9157e1c9-da31-4405-b91e-0bc124007dd7.png'),
(38, 'music', '35', 'https://bafybeif53tkt3yzarqj3f6kxpeenbfivlj36gmut5kgll7spkqvmzwz76a.ipfs.dweb.link/marshmello.jpg'),
(39, 'music', '36', 'https://bafybeiffkd7uzsjptnzw4wfuytktixajztfho67h4fk6ctzuikl2odexme.ipfs.dweb.link/170px-Rihanna_concert_in_Washington_DC_(cropped).jpg'),
(40, 'music', '37', 'https://bafybeieoi3bilivy6nitasblaeaeomf2ypqzd3bodfggvozavb2ww4aff4.ipfs.dweb.link/1120a2678bab482998b8c3a8c5f016ca.jpg'),
(41, 'art', '31', 'https://bafybeid3ziyngspfruuzbnoyhzgkabjotsv4jpwoouimfbqsqjpxe6ayb4.ipfs.dweb.link/digital-painting-portrait-actors-images-actresses---actress-paintings.jpg'),
(42, 'sports', '38', 'https://bafybeie4zuw7dl3bbo3mroep7ob4phru3za4liikghihra4krk3ldw2t4a.ipfs.dweb.link/tennis-artwork.jpg'),
(43, 'sports', '39', 'https://bafybeidklwm4qcc7cjrrbbdn7dvdq6pnzajr3x6vcmty56exn5xufmcfmi.ipfs.dweb.link/tennis3.jpg'),
(44, 'art', '40', 'https://bafybeibbwu525ba7t3th2joj7g3nnkiicez5faayzkonfxdnftpepduoj4.ipfs.dweb.link/MA1.jpg'),
(45, 'sports', '41', 'https://bafybeifctbqhz3zkcinrtuppcneg6binieiipgsh73zwcr53vbydcaeyxi.ipfs.dweb.link/football1.jpg'),
(46, 'sports', '42', 'https://bafybeigi53ljvsrbbgvcft4w2nqrmb2d52rnxo7i4fg4227ptx4ajx3s3y.ipfs.dweb.link/sports1.jpeg'),
(50, 'art', '43', 'https://bafybeidytn5v3uqoyobvit4cbxgb2umwiyeyv7aanfsizlnm5xvu26hvoq.ipfs.dweb.link/India Painting.jpeg'),
(51, 'music', '44', 'https://bafybeiebfpohd5guj7ejluogal7gijowvsjljq37l5ylrpfsmxs7drfxim.ipfs.dweb.link/1.jpeg'),
(52, 'music', '45', 'https://bafybeiazpooxjwl3xwuugtf35oqkcnm6uw5tj4hi5rqw2biijcynq4cgmm.ipfs.dweb.link/music-850x478.jpg.optimal.jpg'),
(53, 'music', '46', 'https://bafybeigdquzw64rbpiyohyeqo4fuzygvgf6qkij5p4n2v36f63hkgy6s4y.ipfs.dweb.link/images.jpeg'),
(54, 'art', '47', 'https://bafybeic6zrqjaredgpq5h7vdlywulquwzvkk4zueb3qb4wxxh2v6tujs64.ipfs.dweb.link/parrot1.jpeg'),
(55, 'art', '48', 'https://bafybeiabjohjl6yrxcj6ul4c6qrqlgjy5vo24ojosghl7xt3cfzjbbrq2u.ipfs.dweb.link/cow1.jpeg'),
(56, 'art', '49', 'https://bafybeifsyy6km2njmzhbih2opxs2na4lgbc3spxxzclkajrkayna5lt36m.ipfs.dweb.link/1F5PHEJ4-2022-new-crocodile-lighter-outdoor.jpg'),
(57, 'art', '50', 'https://bafybeihi6y35hiznywxtrijhgbxhky3ejlilxxbegcxatoi7vgmmn7xvnm.ipfs.dweb.link/tree.jpeg'),
(58, 'music', '51', 'https://bafybeibvjjs2f4gk63s5yqapvuroohpowl5q5gnfiqpnsb4a3qhz5bgiae.ipfs.dweb.link/images.jpg'),
(59, 'art', '52', 'https://bafybeiczrac2p47gvmngtw5ggvyyl5mqra4ti5ltmqcm72m6zux6uk263u.ipfs.dweb.link/unnamed.jpg'),
(60, 'art', '53', 'https://bafybeifornv2itwmgxcqalpf5xvnykrjmilcev7frwnuhuvcnjoecl62jq.ipfs.dweb.link/nature1.jpeg'),
(61, 'art', '54', 'https://bafybeigfb3inczqnfvvlfsbkgu2we2q2dcnbbc5p6qx5uh3hsws4h5aary.ipfs.dweb.link/kids.jpeg'),
(62, 'art', '55', 'https://bafybeic6r3nuakhafrntqvvag7orpn76t24grdr43ke5xedppsbz7mzhce.ipfs.dweb.link/butterfly.jpg'),
(63, 'music', '56', 'https://bafybeiepovfmwflwlnnoctzuznpvlxxurdntgwcdpnhc2r6wa3jyek6v2a.ipfs.dweb.link/sunflower.jpeg'),
(64, 'sports', '57', 'https://bafybeidd2ytwkxninvzsc3sfanmcaljqcnsvkwrnkcevy4nvjrqcfhj7qa.ipfs.dweb.link/Cup2022.jfif'),
(71, 'art', '58', 'https://bafybeigbucahfqoibzgifyf5wz4rknbvj5ycdfwqkuf3rs4dykwxqszeqe.ipfs.dweb.link/painting 2.jpeg'),
(72, 'sports', '59', 'https://bafybeid22kyfefqbbqvsieg3ybaoxqe4naonopxkl5mwo63sqlzvagen3m.ipfs.dweb.link/football1.jpeg'),
(73, 'art', '60', 'https://bafybeiam32whzfuobsfiefkdl5q2t3pz27f2mywjwx7rn3j3qqqjelws7a.ipfs.dweb.link/gold-new-year-background-stage_GJII0d9O_thumb.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `shop_meta_products`
--

CREATE TABLE `shop_meta_products` (
  `id` int(11) NOT NULL,
  `name` varchar(355) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `desc` varchar(355) DEFAULT NULL,
  `img` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `rack` int(11) DEFAULT NULL,
  `glb_model` varchar(355) DEFAULT NULL,
  `tag` varchar(355) DEFAULT NULL,
  `scale` varchar(355) DEFAULT NULL,
  `rotation` varchar(355) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop_meta_products`
--

INSERT INTO `shop_meta_products` (`id`, `name`, `price`, `desc`, `img`, `qty`, `rack`, `glb_model`, `tag`, `scale`, `rotation`, `location_id`, `status`) VALUES
(1, 'Tropicana ', 200, 'Nisi aut reiciendis ', 0, 4, 0, 'https://sosal.in/shop/models/pwc_new_item.glb', 'pwc_new_item.glb', '5 5 5', '0 0 0', 5, 0),
(2, 'Tropicana mango juice', 200, 'Streax Hair Serum is vitalized with Walnut Oil to give your hair the instant shine and smoothness which helps you Shine All Day! Streax hair serum is crafted\r\n', 11, 5, 1, 'https://sosal.in/shop/models/tropicana2.glb', 'tropicana2', '4.5 4.5 4.5', '0 180 0', 2, 0),
(3, 'Real mango juice', 200, 'Streax Hair Serum is vitalized with Walnut Oil to give your hair the instant shine and smoothness which helps you Shine All Day! Streax hair serum is crafted\r\n', 11, 7, 1, 'https://sosal.in/shop/models/tropicana3.glb', 'tropicana3', '4.5 4.5 4.5', '0 180 0', 3, 0),
(4, 'Red Wine', 2000, 'Streax Hair Serum is vitalized with Walnut Oil to give your hair the instant shine and smoothness which helps you Shine All Day! Streax hair serum is crafted\r\n', 11, 8, 1, 'https://sosal.in/shop/models/wine.glb', 'wineBottol', '5 6 5', '0 180 0', 4, 0),
(5, 'Lays - Potato chips', 20, 'Streax Hair Serum is vitalized with Walnut Oil to give your hair the instant shine and smoothness which helps you Shine All Day! Streax hair serum is crafted\r\n', 11, 8, 1, 'https://sosal.in/shop/models/laysChips.glb', 'laysChips', '1.3 1.3 1.3', '0 225 0', 5, 0),
(6, 'Amul Milk', 75, 'Streax Hair Serum is vitalized with Walnut Oil to give your hair the instant shine and smoothness which helps you Shine All Day! Streax hair serum is crafted\r\n', 11, 5, 1, 'https://sosal.in/shop/models/amoul.glb', 'amoul', '3 3 3', '0 0 0', 6, 0),
(7, 'Datol', 75, 'Streax Hair Serum is vitalized with Walnut Oil to give your hair the instant shine and smoothness which helps you Shine All Day! Streax hair serum is crafted\r\n', 11, 8, 1, 'https://sosal.in/shop/models/greenBottol.glb', 'greenBottol', '9 9 9', '0 0 0', 7, 0),
(8, 'Leap bum', 75, 'Streax Hair Serum is vitalized with Walnut Oil to give your hair the instant shine and smoothness which helps you Shine All Day! Streax hair serum is crafted\r\n', 11, 8, 1, 'https://sosal.in/shop/models/lipBam.glb', 'lipBam', '6 6 6', '0 180 0', 11, 0),
(9, 'Darmi cool power', 75, 'Streax Hair Serum is vitalized with Walnut Oil to give your hair the instant shine and smoothness which helps you Shine All Day! Streax hair serum is crafted\r\n', 11, 8, 1, 'https://sosal.in/shop/models/blueBottol.glb', 'blueBottol', '6 6 6', '0 180 0', 12, 0),
(10, 'Face wash', 100, 'Streax Hair Serum is vitalized with Walnut Oil to give your hair the instant shine and smoothness which helps you Shine All Day! Streax hair serum is crafted\r\n', 11, 8, 1, 'https://sosal.in/shop/models/faceWash.glb', 'faceWash', '5 5 5', '0 180 0', 10, 0),
(11, 'Hair gel', 100, 'Streax Hair Serum is vitalized with Walnut Oil to give your hair the instant shine and smoothness which helps you Shine All Day! Streax hair serum is crafted\r\n', 11, 8, 1, 'https://sosal.in/shop/models/Sparay.glb', 'Sparay', '6 6 6', '0 180 0', 8, 0),
(12, 'Shampoo', 100, 'Streax Hair Serum is vitalized with Walnut Oil to give your hair the instant shine and smoothness which helps you Shine All Day! Streax hair serum is crafted\r\n', 11, 7, 1, 'https://sosal.in/shop/models/shampooBottol.glb', 'shampooBottol', '6 6 6', '0 180 0', 9, 0);

-- --------------------------------------------------------

--
-- Table structure for table `shop_meta_products_loocation`
--

CREATE TABLE `shop_meta_products_loocation` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `position_x` varchar(355) DEFAULT NULL,
  `position_y` varchar(355) NOT NULL,
  `position_z` varchar(355) NOT NULL,
  `zoom_y` varchar(355) NOT NULL DEFAULT '0',
  `zoom_z` varchar(355) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop_meta_products_loocation`
--

INSERT INTO `shop_meta_products_loocation` (`id`, `product_id`, `position_x`, `position_y`, `position_z`, `zoom_y`, `zoom_z`) VALUES
(1, 1, '', '3.3', '10.5', '2.5', '11.5'),
(2, 2, '', '2', '10.5', '2.5', '11.5'),
(3, 3, '', '0.5', '10.5', '2.5', '11.5'),
(4, 4, '', '3.3', '9.5', '2.5', '8'),
(5, 5, '', '2', '9', '2.5', '8'),
(6, 6, '', '0.5', '9', '2.5', '8'),
(7, 7, '', '0.5', '0.5', '2.5', '2'),
(8, 8, '', '2', '0.5', '2.5', '2'),
(9, 9, '', '3.3', '0.5', '2.5', '2'),
(10, 10, '', '0.5', '-0.5', '2.5', '-2'),
(11, 11, '', '2', '-0.5', '2.5', '-2'),
(12, 12, '', '3.3', '-0.5', '2.5', '-2');

-- --------------------------------------------------------

--
-- Table structure for table `visitors_lead`
--

CREATE TABLE `visitors_lead` (
  `id` int(11) NOT NULL,
  `name` varchar(355) NOT NULL,
  `contact_no` varchar(355) DEFAULT NULL,
  `email` varchar(355) DEFAULT NULL,
  `shop` varchar(355) DEFAULT NULL,
  `date` varchar(355) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visitors_lead`
--

INSERT INTO `visitors_lead` (`id`, `name`, `contact_no`, `email`, `shop`, `date`) VALUES
(1, 'Jillian Stein', '934324234234', 'tajepazyna@mailinator.com', '2', '12/27/2022 08:49:25 pm'),
(2, 'Nicole Gilliam', '37', 'masaza@mailinator.com', '2', '12/27/2022 09:27:19 pm'),
(3, 'Hadley Swanson', '87', 'golyjihu@mailinator.com', '1', '12/28/2022 08:41:51 am'),
(4, 'Upton Young', '12', 'vutanalume@mailinator.com', '1', '12/28/2022 08:44:17 am'),
(5, 'Frances Cardenas', '84', 'rojiw@mailinator.com', '1', '12/28/2022 10:55:21 am'),
(6, 'Otto Bowen', '96', 'qefi@mailinator.com', '1', '12/28/2022 11:00:11 am'),
(7, 'Yoko Leblanc', '45', 'jequbesyj@mailinator.com', '1', '12/28/2022 11:31:25 am'),
(8, 'Nasim Gordon', '80412421412', 'pomit@mailinator.com', '1', '12/28/2022 02:06:11 pm'),
(9, 'Vielka Hahn', '62', 'xotykopazu@mailinator.com', '1', '12/28/2022 02:20:57 pm'),
(10, 'Francis Shannon', '12', 'nusita@mailinator.com', '1', '12/28/2022 02:22:29 pm'),
(11, 'Steven Daugherty', '65465474574', 'resare@mailinator.com', '1', '12/28/2022 02:31:13 pm'),
(12, 'Xena Joseph', '8432623462346', 'haxugu@mailinator.com', '1', '12/28/2022 03:43:05 pm'),
(13, 'Lara Stevens', '66', 'qiqaryxoq@mailinator.com', '1', '12/28/2022 04:11:04 pm'),
(14, 'Adria Odom', '68', 'tecuwojada@mailinator.com', '2', '12/28/2022 04:33:48 pm'),
(15, 'Biswnath Das', '455555', 'mahy@mailinator.com', '2', '12/28/2022 04:37:58 pm'),
(16, 'Edan Hayes', '48354435345', 'suhacusyb@mailinator.com', '1', '12/28/2022 04:51:47 pm'),
(17, 'Wylie Mccarthy', '69345435', 'miwij@mailinator.com', '2', '12/28/2022 06:36:47 pm'),
(18, 'Karly Valencia', '865325235', 'mitafunyp@mailinator.com', '1', '12/28/2022 06:41:15 pm'),
(19, 'Dennis Horn', '9453223523324', 'ropequk@mailinator.com', '2', '12/28/2022 06:47:29 pm'),
(20, 'Ezra Watkins', '3434436346346', 'tygisaky@mailinator.com', '1', '12/28/2022 08:32:03 pm'),
(21, 'Lillith Lyons', '804534534', 'hawedify@mailinator.com', '2', '12/28/2022 08:33:58 pm'),
(22, 'Geraldine Haynes', '953453453', 'soquzaq@mailinator.com', '2', '12/28/2022 08:36:34 pm'),
(23, 'Garth Martinez', '6823423', 'rixekina@mailinator.com', '2', '12/28/2022 08:37:50 pm'),
(24, 'Caesar Parrish', '28234234', 'vanimudap@mailinator.com', '2', '12/28/2022 08:39:59 pm'),
(25, 'Caesar Parrish', '28234234', 'vanimudap@mailinator.com', '2', '12/28/2022 08:41:50 pm'),
(26, 'Caesar Parrish', '28234234', 'vanimudap@mailinator.com', '2', '12/28/2022 08:42:26 pm'),
(27, 'Helen Anthony', '94324234', 'funa@mailinator.com', '2', '12/28/2022 08:43:18 pm'),
(28, 'Tate Clay', '8525235325325', 'xumyfigew@mailinator.com', '2', '12/28/2022 08:44:43 pm'),
(29, 'Biswanath Das', '8001691299', 'femykakyp@mailinator.com', '2', '12/28/2022 08:50:50 pm'),
(30, 'Biswanath Das', '8001691299', 'femykakyp@mailinator.com', '1', '12/28/2022 08:51:33 pm'),
(31, 'Odysseus Huff', '78', 'myberehox@mailinator.com', '1', '12/29/2022 08:44:04 am'),
(32, 'Odysseus Huff', '78', 'myberehox@mailinator.com', '2', '12/29/2022 11:52:36 am'),
(33, 'Odysseus Huff', '78', 'myberehox@mailinator.com', '2', '12/29/2022 03:19:48 pm'),
(34, 'Odysseus Huff', '78', 'myberehox@mailinator.com', '1', '12/29/2022 03:28:24 pm'),
(35, 'Papun Das', '8001691299', 'myberehox@mailinator.com', '1', '12/30/2022 08:21:18 am'),
(36, 'Papun Das', '8001691299', 'myberehox@mailinator.com', '1', '12/30/2022 08:28:09 am'),
(37, 'Papun Das', '8001691299', 'myberehox@mailinator.com', '1', '12/30/2022 08:39:00 am'),
(38, 'Papun Das', '8001691299', 'myberehox@mailinator.com', '2', '01/02/2023 10:29:42 am'),
(39, 'Papun Das', '8001691299', 'myberehox@mailinator.com', '1', '01/02/2023 10:30:56 am'),
(40, 'Papun Das', '8001691299', 'myberehox@mailinator.com', '2', '01/02/2023 10:53:49 am'),
(41, 'Papun Das', '8001691299', 'myberehox@mailinator.com', '2', '01/02/2023 11:02:44 am'),
(42, 'Papun Das', '8001691299', 'myberehox@mailinator.com', '1', '01/02/2023 11:03:59 am'),
(43, 'Papun Das', '8001691299', 'myberehox@mailinator.com', '1', '01/02/2023 11:30:02 am'),
(44, 'Papun Das', '8001691299', 'myberehox@mailinator.com', '1', '01/02/2023 11:30:03 am'),
(45, 'Papun Das', '8001691299', 'myberehox@mailinator.com', '1', '01/02/2023 11:35:23 am'),
(46, 'Papun Das', '8001691299', 'myberehox@mailinator.com', '1', '01/02/2023 12:36:43 pm'),
(47, 'Papun Das', '8001691299', 'myberehox@mailinator.com', '1', '01/03/2023 08:01:09 am'),
(48, 'Papun Das', '8001691299', 'myberehox@mailinator.com', '3', '01/03/2023 09:03:56 am'),
(49, 'Papun Das', '8001691299', 'myberehox@mailinator.com', '3', '01/03/2023 09:16:30 am'),
(50, 'Papun Das', '8001691299', 'myberehox@mailinator.com', '1', '01/03/2023 09:18:20 am'),
(51, 'Papun Das', '8001691299', 'myberehox@mailinator.com', '3', '01/03/2023 10:52:07 am'),
(52, 'Papun Das', '8001691299', 'myberehox@mailinator.com', '3', '01/03/2023 02:43:59 pm'),
(53, 'Papun Das', '8001691299', 'myberehox@mailinator.com', '2', '01/03/2023 03:49:33 pm'),
(54, 'Papun Das', '8001691299', 'myberehox@mailinator.com', '3', '01/03/2023 04:23:32 pm'),
(55, 'Papun Das', '8001691299', 'myberehox@mailinator.com', '1', '01/06/2023 10:14:11 am'),
(56, 'Papun Das', '8001691299', 'myberehox@mailinator.com', '3', '01/06/2023 10:15:25 am'),
(57, 'Papun Das', '8001691299', 'myberehox@mailinator.com', '2', '01/06/2023 10:16:30 am'),
(58, 'Papun Das', '8001691299', 'myberehox@mailinator.com', '3', '01/06/2023 10:32:02 am'),
(59, 'Papun Das', '8001691299', 'myberehox@mailinator.com', 'undefined', '01/06/2023 11:38:20 am'),
(60, 'Papun Das', '8001691299', 'myberehox@mailinator.com', 'undefined', '01/06/2023 11:38:27 am'),
(61, 'Papun Das', '8001691299', 'myberehox@mailinator.com', 'undefined', '01/06/2023 11:38:37 am'),
(62, 'Papun Das', '8001691299', 'myberehox@mailinator.com', '1', '01/06/2023 11:40:31 am'),
(63, 'Papun Das', '8001691299', 'myberehox@mailinator.com', 'undefined', '01/06/2023 11:40:58 am'),
(64, 'Papun Das', '8001691299', 'myberehox@mailinator.com', 'undefined', '01/06/2023 11:41:07 am'),
(65, 'Papun Das', '8001691299', 'myberehox@mailinator.com', 'undefined', '01/06/2023 11:41:14 am'),
(66, 'Papun Das', '8001691299', 'myberehox@mailinator.com', 'undefined', '01/06/2023 11:42:05 am'),
(67, 'Papun Das', '8001691299', 'myberehox@mailinator.com', 'undefined', '01/06/2023 11:43:31 am'),
(68, 'Papun Das', '8001691299', 'myberehox@mailinator.com', 'undefined', '01/06/2023 11:44:53 am'),
(69, 'Papun Das', '8001691299', 'myberehox@mailinator.com', '3', '01/06/2023 11:50:54 am'),
(70, 'Papun Das', '8001691299', 'myberehox@mailinator.com', '2', '01/06/2023 12:09:07 pm'),
(71, 'Papun Das', '8001691299', 'myberehox@mailinator.com', '2', '01/06/2023 04:04:52 pm'),
(72, 'Papun Das', '8001691299', 'myberehox@mailinator.com', '2', '01/07/2023 07:54:07 am'),
(73, 'Desirae Pacheco', '16', 'ripu@mailinator.com', '2', '01/07/2023 11:59:45 am'),
(74, 'Talon Leblanc', '12', 'jufubuta@mailinator.com', '3', '01/09/2023 11:01:37 am'),
(75, 'Rigel Snider', '9', 'wahimanuho@mailinator.com', '6', '01/10/2023 04:25:41 pm'),
(76, 'Rigel Snider', '9', 'wahimanuho@mailinator.com', '6', '01/10/2023 04:36:37 pm'),
(77, 'Jared Pickett', '21', 'kusuxytu@mailinator.com', '3', '01/25/2023 12:23:10 am'),
(78, 'Justine Neal', '78', 'cafas@mailinator.com', '3', '01/25/2023 12:49:36 am'),
(79, 'Justine Neal', '784444', 'cafas@mailinator.com', '7', '01/25/2023 01:06:24 am'),
(80, 'Biswanath Das', '5555555', 'kusuxytu@mailinator.com', '9', '01/25/2023 02:00:22 am'),
(81, 'Biswanath Das', '5555555', 'kusuxytu@mailinator.com', '3', '01/27/2023 08:17:37 am'),
(82, 'Biswanath Das', '5555555', 'kusuxytu@mailinator.com', '3', '01/27/2023 11:14:00 pm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `1672196528_meta_product_table`
--
ALTER TABLE `1672196528_meta_product_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `1672225043_meta_product_table`
--
ALTER TABLE `1672225043_meta_product_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `1672715841_meta_product_table`
--
ALTER TABLE `1672715841_meta_product_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `1673239124_meta_product_table`
--
ALTER TABLE `1673239124_meta_product_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `1673242175_meta_product_table`
--
ALTER TABLE `1673242175_meta_product_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `1673347505_meta_product_table`
--
ALTER TABLE `1673347505_meta_product_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `1674588784_meta_product_table`
--
ALTER TABLE `1674588784_meta_product_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `1674590093_meta_product_table`
--
ALTER TABLE `1674590093_meta_product_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `1674591687_meta_product_table`
--
ALTER TABLE `1674591687_meta_product_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `1674705864_meta_product_table`
--
ALTER TABLE `1674705864_meta_product_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `1674705955_meta_product_table`
--
ALTER TABLE `1674705955_meta_product_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `1674705969_meta_product_table`
--
ALTER TABLE `1674705969_meta_product_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `1674705980_meta_product_table`
--
ALTER TABLE `1674705980_meta_product_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `1674706175_meta_product_table`
--
ALTER TABLE `1674706175_meta_product_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `1674706276_meta_product_table`
--
ALTER TABLE `1674706276_meta_product_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `1674706298_meta_product_table`
--
ALTER TABLE `1674706298_meta_product_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `1674706346_meta_product_table`
--
ALTER TABLE `1674706346_meta_product_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `1674706401_meta_product_table`
--
ALTER TABLE `1674706401_meta_product_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `1674706427_meta_product_table`
--
ALTER TABLE `1674706427_meta_product_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `1674706436_meta_product_table`
--
ALTER TABLE `1674706436_meta_product_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `1674706473_meta_product_table`
--
ALTER TABLE `1674706473_meta_product_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `1674706512_meta_product_table`
--
ALTER TABLE `1674706512_meta_product_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `1674706565_meta_product_table`
--
ALTER TABLE `1674706565_meta_product_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `1674706633_meta_product_table`
--
ALTER TABLE `1674706633_meta_product_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `1674706640_meta_product_table`
--
ALTER TABLE `1674706640_meta_product_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business`
--
ALTER TABLE `business`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ipfs`
--
ALTER TABLE `ipfs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `land_locations`
--
ALTER TABLE `land_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meta_shop_lists`
--
ALTER TABLE `meta_shop_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meta_shop_orders`
--
ALTER TABLE `meta_shop_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nft_mall_metaverce`
--
ALTER TABLE `nft_mall_metaverce`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_meta_products`
--
ALTER TABLE `shop_meta_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_meta_products_loocation`
--
ALTER TABLE `shop_meta_products_loocation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitors_lead`
--
ALTER TABLE `visitors_lead`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `1672196528_meta_product_table`
--
ALTER TABLE `1672196528_meta_product_table`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `1672225043_meta_product_table`
--
ALTER TABLE `1672225043_meta_product_table`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `1672715841_meta_product_table`
--
ALTER TABLE `1672715841_meta_product_table`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `1673239124_meta_product_table`
--
ALTER TABLE `1673239124_meta_product_table`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `1673242175_meta_product_table`
--
ALTER TABLE `1673242175_meta_product_table`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `1673347505_meta_product_table`
--
ALTER TABLE `1673347505_meta_product_table`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `1674588784_meta_product_table`
--
ALTER TABLE `1674588784_meta_product_table`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `1674590093_meta_product_table`
--
ALTER TABLE `1674590093_meta_product_table`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `1674591687_meta_product_table`
--
ALTER TABLE `1674591687_meta_product_table`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `1674705864_meta_product_table`
--
ALTER TABLE `1674705864_meta_product_table`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `1674705955_meta_product_table`
--
ALTER TABLE `1674705955_meta_product_table`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `1674705969_meta_product_table`
--
ALTER TABLE `1674705969_meta_product_table`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `1674705980_meta_product_table`
--
ALTER TABLE `1674705980_meta_product_table`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `1674706175_meta_product_table`
--
ALTER TABLE `1674706175_meta_product_table`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `1674706276_meta_product_table`
--
ALTER TABLE `1674706276_meta_product_table`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `1674706298_meta_product_table`
--
ALTER TABLE `1674706298_meta_product_table`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `1674706346_meta_product_table`
--
ALTER TABLE `1674706346_meta_product_table`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `1674706401_meta_product_table`
--
ALTER TABLE `1674706401_meta_product_table`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `1674706427_meta_product_table`
--
ALTER TABLE `1674706427_meta_product_table`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `1674706436_meta_product_table`
--
ALTER TABLE `1674706436_meta_product_table`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `1674706473_meta_product_table`
--
ALTER TABLE `1674706473_meta_product_table`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `1674706512_meta_product_table`
--
ALTER TABLE `1674706512_meta_product_table`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `1674706565_meta_product_table`
--
ALTER TABLE `1674706565_meta_product_table`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `1674706633_meta_product_table`
--
ALTER TABLE `1674706633_meta_product_table`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `1674706640_meta_product_table`
--
ALTER TABLE `1674706640_meta_product_table`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `business`
--
ALTER TABLE `business`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `config`
--
ALTER TABLE `config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ipfs`
--
ALTER TABLE `ipfs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `land_locations`
--
ALTER TABLE `land_locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `meta_shop_lists`
--
ALTER TABLE `meta_shop_lists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `meta_shop_orders`
--
ALTER TABLE `meta_shop_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `nft_mall_metaverce`
--
ALTER TABLE `nft_mall_metaverce`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `shop_meta_products`
--
ALTER TABLE `shop_meta_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `shop_meta_products_loocation`
--
ALTER TABLE `shop_meta_products_loocation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `visitors_lead`
--
ALTER TABLE `visitors_lead`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
