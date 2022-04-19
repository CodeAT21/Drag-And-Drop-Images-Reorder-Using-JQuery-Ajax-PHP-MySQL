-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2022 at 03:32 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `devooti`
--

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img_order` int(5) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `file_name`, `img_order`, `created`, `modified`) VALUES
(1, 'https://venngage-wordpress.s3.amazonaws.com/uploads/2018/09/Perfect-Sunset-Nature-Background-Image.jpeg', 15, '2022-04-18 21:05:45', '2022-04-19 19:02:02'),
(2, 'https://d1rytvr7gmk1sx.cloudfront.net/wp-content/uploads/2021/02/smash-3.jpg', 6, '2022-04-18 21:05:48', '2022-04-19 19:02:02'),
(3, 'https://miro.medium.com/max/1400/1*xMuIOwjliGUPjkzukeWKfw.jpeg', 12, '2022-04-18 21:05:51', '2022-04-19 19:02:02'),
(4, 'https://t4.ftcdn.net/jpg/03/39/53/87/360_F_339538724_AI3E02IF5v77nGn4ZMZj1qwMUOZRebGe.jpg', 5, '2022-04-18 21:05:54', '2022-04-19 19:02:02'),
(5, 'https://resources.owllabs.com/hs-fs/hubfs/Zoom_BG2_Office-View-jpg.jpeg?width=873&name=Zoom_BG2_Office-View-jpg.jpeg', 4, '2022-04-18 21:05:56', '2022-04-19 19:02:02'),
(6, 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/best-zoom-backgrounds-hallmark-pets-1587413634.jpg?crop=1xw:1xh;center,top&resize=480:*', 7, '2022-04-18 21:06:53', '2022-04-19 19:02:02'),
(7, 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/best-zoom-backgrounds-bloomscape-1586893504.png?resize=480:*', 1, '2022-04-18 21:06:53', '2022-04-19 19:02:02'),
(8, 'https://images.pexels.com/photos/1547813/pexels-photo-1547813.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', 14, '2022-04-18 21:15:35', '2022-04-19 19:02:02'),
(9, 'https://wonderfulengineering.com/wp-content/uploads/2016/02/wallpaper-background-2.jpg', 13, '2022-04-18 21:15:39', '2022-04-19 19:02:02'),
(10, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3N-ytA4QVS_-7pi7C6uh0XdaTvta-c-kdnA&usqp=CAU', 11, '2022-04-18 21:15:42', '2022-04-19 19:02:02'),
(11, 'https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832__480.jpg', 10, '2022-04-18 21:15:46', '2022-04-19 19:02:02'),
(12, 'https://c4.wallpaperflare.com/wallpaper/670/733/263/hintersee-lake-lake-mountain-lake-mountain-wallpaper-preview.jpg', 2, '2022-04-18 21:15:48', '2022-04-19 19:02:02'),
(13, 'https://www.hp.com/us-en/shop/app/assets/images/uploads/prod/misty-forest-background1595620320482968.jpg?impolicy=prdimg&imdensity=1&imwidth=600', 3, '2022-04-18 21:15:50', '2022-04-19 19:02:02'),
(14, 'https://images5.alphacoders.com/432/thumb-350-432951.jpg', 8, '2022-04-18 21:15:53', '2022-04-19 19:02:02'),
(15, 'https://wallpapercave.com/wp/CvdYfYz.jpg', 9, '2022-04-18 21:15:55', '2022-04-19 19:02:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
