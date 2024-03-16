-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2024 at 12:09 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `evara_app_class_10_home_1`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` longtext NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`id`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab \r\nasperiores cupiditate expedita ipsa iste reiciendis repellendus sit? \r\nAdipisci delectus in magnam maiores molestiae nemo nesciunt quia quo \r\nquos vero! Aperiam architecto consequatur doloremque eligendi ex fugit \r\nitaque iure maiores, nulla, numquam odit officia repellendus rerum? \r\nAccusamus dolores, harum ipsam quaerat quod suscipit veritatis \r\nvoluptatum. Eligendi expedita hic maxime non quas qui ratione saepe sint\r\n sit temporibus. Asperiores autem consequuntur dolor doloribus esse, est\r\n et excepturi, exercitationem facere fuga id labore laudantium molestiae\r\n molestias mollitia natus nobis non ratione, sit veniam. Animi beatae \r\neius illo incidunt mollitia numquam quas quia quo!</p>\r\n                        <p>Lorem ipsum dolor sit amet, consectetur \r\nadipisicing elit. Architecto, blanditiis commodi dolorem ducimus, enim \r\nfugiat fugit illo incidunt ipsa iure iusto laudantium officia \r\npraesentium reprehenderit sequi. A ab architecto, consectetur corporis \r\ndignissimos, eligendi fuga hic labore libero minima nam, provident quae \r\nquas quod saepe similique temporibus! Illo labore nihil porro?    </p>\r\n                        <p>Lorem ipsum dolor sit amet, consectetur \r\nadipisicing elit. In nisi qui sequi tenetur voluptatibus voluptatum. Ad \r\naperiam atque beatae cum deleniti distinctio dolorum eius eos est \r\nexpedita fugit harum, incidunt ipsam molestiae mollitia nostrum qui \r\nquibusdam rem sapiente soluta velit veritatis vero voluptatem? \r\nDoloremque ducimus error vel. Ad architecto at dolorem dolorum eligendi \r\nexplicabo impedit ipsam, laudantium nemo praesentium provident qui rem \r\nrerum sapiente veniam vero voluptatem. Eveniet excepturi facilis nemo \r\nvelit voluptatum. Aliquid odit quas, reiciendis sint velit voluptatibus?</p><p></p>', 1, '2024-01-15 23:33:48', '2024-01-15 23:33:48'),
(2, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab \r\nasperiores cupiditate expedita ipsa iste reiciendis repellendus sit? \r\nAdipisci delectus in magnam maiores molestiae nemo nesciunt quia quo \r\nquos vero! Aperiam architecto consequatur doloremque eligendi ex fugit \r\nitaque iure maiores, nulla, numquam odit officia repellendus rerum? \r\nAccusamus dolores, harum ipsam quaerat quod suscipit veritatis \r\nvoluptatum. Eligendi expedita hic maxime non quas qui ratione saepe sint\r\n sit temporibus. Asperiores autem consequuntur dolor doloribus esse, est\r\n et excepturi, exercitationem facere fuga id labore laudantium molestiae\r\n molestias mollitia natus nobis non ratione, sit veniam. Animi beatae \r\neius illo incidunt mollitia numquam quas quia quo!</p>\r\n                        <p>Lorem ipsum dolor sit amet, consectetur \r\nadipisicing elit. Architecto, blanditiis commodi dolorem ducimus, enim \r\nfugiat fugit illo incidunt ipsa iure iusto laudantium officia \r\npraesentium reprehenderit sequi. A ab architecto, consectetur corporis \r\ndignissimos, eligendi fuga hic labore libero minima nam, provident quae \r\nquas quod saepe similique temporibus! Illo labore nihil porro?    </p>\r\n                        <p>Lorem ipsum dolor sit amet, consectetur \r\nadipisicing elit. In nisi qui sequi tenetur voluptatibus voluptatum. Ad \r\naperiam atque beatae cum deleniti distinctio dolorum eius eos est \r\nexpedita fugit harum, incidunt ipsam molestiae mollitia nostrum qui \r\nquibusdam rem sapiente soluta velit veritatis vero voluptatem? \r\nDoloremque ducimus error vel. Ad architecto at dolorem dolorum eligendi \r\nexplicabo impedit ipsam, laudantium nemo praesentium provident qui rem \r\nrerum sapiente veniam vero voluptatem. Eveniet excepturi facilis nemo \r\nvelit voluptatum. Aliquid odit quas, reiciendis sint velit voluptatibus?</p><p></p>', 1, '2024-01-15 23:35:07', '2024-01-15 23:35:07');

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `sub_title` text NOT NULL,
  `position` varchar(255) NOT NULL,
  `offer_price` double(8,2) NOT NULL DEFAULT 0.00,
  `discount` int(11) NOT NULL DEFAULT 0,
  `image` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `product_id`, `title`, `sub_title`, `position`, `offer_price`, `discount`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 5, 'We\'re an Apple Authorised Service Provider 1', 'Repair Services 1', '-1', 0.00, 0, 'admin/img/ad-images/16179.png', 1, '2024-01-02 05:12:28', '2024-01-02 06:04:54'),
(2, 10, 'Shop Today’s Deals', 'Happy Mother\'s Day. Big Sale Up to', '12', 0.00, 40, 'admin/img/ad-images/42079.jpg', 1, '2024-02-11 23:55:19', '2024-02-12 00:07:57'),
(3, 8, 'Repair Services', 'We\'re an Apple Authorised Service Provider 1', '4', 0.00, 0, 'admin/img/ad-images/23274.png', 1, '2024-02-12 00:28:56', '2024-02-12 00:28:56');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'President Bags', 'Stylish and functional bags for every occasion.', 'admin/img/brand-img/6425brand_bag_President_1.jpg', 1, '2023-11-13 21:08:11', '2023-11-13 21:08:11'),
(2, 'CAT Bags', 'Durable and rugged bags designed for adventure.', 'admin/img/brand-img/5122brand_bag_CAT_1.jpg', 1, '2023-11-13 21:08:33', '2023-11-13 21:08:33'),
(3, 'Nike', 'Stay in style with our latest shoe collection.', 'admin/img/brand-img/1787brand_Shoe_Nike_1.jpg', 1, '2023-11-13 21:09:09', '2023-11-13 21:09:09'),
(4, 'Adidas', 'Walk with comfort, walk with confidence.', 'admin/img/brand-img/4389brand_Shoe_Adidas_1.jpg', 1, '2023-11-13 21:09:28', '2023-11-13 21:09:28'),
(5, 'Cats Eye', 'Express yourself with our trendy clothing line.', 'admin/img/brand-img/2074brand_Clothing_cats_eye_1.jpg', 1, '2023-11-13 21:10:07', '2023-11-13 21:10:07'),
(6, 'Anjans', 'Effortlessly stylish clothing for any occasion.', 'admin/img/brand-img/9087brand_Clothing_Anjans_1.png', 1, '2023-11-13 21:10:30', '2023-11-13 21:10:30'),
(7, 'Hitachi', 'Cutting-edge technology for the modern lifestyle.', 'admin/img/brand-img/4711brand_Electronics_Hitachi_1.jpg', 1, '2023-11-13 21:11:26', '2023-11-13 21:11:26'),
(8, 'Star Tech', 'Explore a world of innovative gadgets and devices.', 'admin/img/brand-img/4102brand_Electronics_Star_Tech_1.jpg', 1, '2023-11-13 21:11:47', '2023-11-13 21:11:47'),
(9, 'HomeHarmony', 'Transform your home into a haven of comfort and style.', 'admin/img/brand-img/8953brand_Home_Decor_HomeHarmony_2.jpg', 1, '2023-11-13 21:12:17', '2023-11-13 21:12:17'),
(10, 'DecorDelight', 'Elevate your living space with our exquisite decor items.', 'admin/img/brand-img/196brand_Home_Decor_DecorDelight_1.jpg', 1, '2023-11-13 21:12:56', '2023-11-13 21:12:56'),
(11, 'GlamourGlow', 'Enhance your natural beauty with our premium beauty products.', 'admin/img/brand-img/7784brand_Beauty_Products_GlamourGlow_1.jpg', 1, '2023-11-13 21:13:29', '2023-11-13 21:13:29'),
(12, 'RadiantRevolution', 'Experience the revolution of radiant beauty.', 'admin/img/brand-img/6203brand_Beauty_Products_RadiantRevolution_2.jpg', 1, '2023-11-13 21:14:21', '2023-11-13 21:14:21'),
(13, 'ActiveAdventure', 'Gear up for exciting outdoor adventures with our sports equipment.', 'admin/img/brand-img/6906brand_Sports_&_Outdoors_ActiveAdventure_1.png', 1, '2023-11-13 21:14:51', '2023-11-13 21:14:51'),
(14, 'FitFocus', 'Achieve your fitness goals with our high-performance gear.', 'admin/img/brand-img/8013brand_Sports_&_Outdoors_FitFocus_1.jpg', 1, '2023-11-13 21:15:27', '2023-11-13 21:15:27'),
(15, 'PBS', 'Immerse yourself in the world of captivating stories and knowledge.', 'admin/img/brand-img/930brand_books_PBS_1.png', 1, '2023-11-13 21:15:54', '2023-11-13 21:15:54'),
(16, 'BoiGhor', 'Explore a treasure trove of wisdom through our diverse book collection.', 'admin/img/brand-img/2677brand_books_BoiGhor_1.jpg', 1, '2023-11-13 21:16:15', '2023-11-13 21:16:15'),
(17, 'Sailor', 'Embrace cultural elegance with our traditional wear collection.', 'admin/img/brand-img/610brand_Traditional_Wear_Sailor_1.png', 1, '2023-11-13 21:16:42', '2023-11-13 21:16:42'),
(18, 'EthnicEssence', 'Celebrate traditions with our exquisite ethnic clothing.', 'admin/img/brand-img/6319brand_Traditional_Wear_EthnicEssence_1.jpg', 1, '2023-11-13 21:17:09', '2023-11-13 21:17:09'),
(19, 'Tech_Trend', 'Stay connected with the latest trends in mobile technology.', 'admin/img/brand-img/7071brand_Mobile_Phones_Tech-Trend_1.jpg', 1, '2023-11-13 21:18:15', '2023-11-13 21:18:15'),
(20, 'MobileMasters', 'Experience the mastery of mobile innovation.', 'admin/img/brand-img/5391brand_Mobile_Phones_MobileMasters_1.jpg', 1, '2023-11-13 21:19:24', '2023-11-13 21:19:24');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Bags', 'Elevate your style with our diverse collection of fashionable bags for every occasion.aaaaa', 'admin/img/category-img/64category_bags_2.jpg', 1, '2023-11-13 20:26:19', '2024-01-21 00:33:18'),
(2, 'Shoes', 'Walk with confidence in our trendy and comfortable shoe collection for men and women.', 'admin/img/category-img/36category_Shoes_2.jpg', 1, '2023-11-13 20:26:54', '2023-11-13 20:26:54'),
(3, 'Clothing', 'Unleash your fashion statement with our exclusive clothing line inspired by Bangladeshi culture.', 'admin/img/category-img/86category_Clothing_2.jpg', 1, '2023-11-13 20:27:45', '2023-11-13 20:27:45'),
(4, 'Electronics', 'Embrace technology with our cutting-edge electronic gadgets designed for modern living.', 'admin/img/category-img/35category_Electronics_2.jpg', 1, '2023-11-13 20:28:19', '2023-11-13 20:28:19'),
(5, 'Home Decor', 'Transform your home into a haven with our curated Bangladeshi-inspired home decor.', 'admin/img/category-img/55category_Home_Decor_2.jpg', 1, '2023-11-13 20:29:19', '2023-11-13 20:29:19'),
(6, 'Beauty Products', 'Enhance your beauty with our curated selection of skincare and cosmetics, tailored for Bangladesh\'s climate.', 'admin/img/category-img/81category_Beauty_Products_1.jpg', 1, '2023-11-13 20:29:51', '2023-11-13 20:29:51'),
(7, 'Sports & Outdoors', 'Gear up for active living with our sports and outdoor essentials, crafted for Bangladesh\'s landscapes.', 'admin/img/category-img/37category_Sports_&_Outdoors_3.jpg', 1, '2023-11-13 20:30:39', '2023-11-13 20:30:39'),
(8, 'Books', 'Immerse yourself in Bangladeshi literature and knowledge with our diverse book collection.', 'admin/img/category-img/45category_Books_1.jpg', 1, '2023-11-13 20:31:20', '2023-11-13 20:31:20'),
(9, 'Traditional Wear', 'Embrace the elegance of Bangladeshi traditional wear, perfect for cultural celebrations and events.', 'admin/img/category-img/32category_Traditional_Wear_2.jpg', 1, '2023-11-13 20:32:04', '2023-11-13 20:32:04'),
(10, 'Mobile Phones', 'Stay connected with the latest mobile phones, catering to the tech-savvy population of Bangladesh.', 'admin/img/category-img/86category_Mobile_Phones_1.jpg', 1, '2023-11-13 20:32:38', '2023-11-13 20:32:38');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `code`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Blue', '#0000ff', 'Blue symbolizes trust, loyalty, and confidence. It\'s a calming color often associated with depth and stability.', 1, '2023-11-13 21:20:47', '2023-11-13 21:20:47'),
(2, 'Green', '#00ff40', 'Green represents nature, growth, and harmony. It\'s a color that signifies freshness and is often associated with health and renewal.', 1, '2023-11-13 21:21:24', '2023-11-13 21:21:24'),
(3, 'Yellow', '#ffff00', 'Yellow is associated with sunshine, happiness, and energy. It\'s a color that evokes feelings of warmth and positivity.', 1, '2023-11-13 21:21:49', '2023-11-13 21:21:49'),
(4, 'Silver', '#c0c0c0', 'Silver is often linked with modernity and sophistication. It\'s a color that represents technological innovation and sleek design.', 1, '2023-11-13 21:22:51', '2023-11-13 21:22:51'),
(5, 'Purple', '#ff00ff', 'Purple symbolizes luxury, power, and ambition. It\'s a color associated with creativity and a touch of royalty.', 1, '2023-11-13 21:24:03', '2023-11-13 21:24:03'),
(6, 'Pink', '#ff8080', 'Pink represents love, compassion, and femininity. It\'s a gentle and soothing color often associated with romance and sweetness.', 1, '2023-11-13 21:24:44', '2023-11-13 21:24:44'),
(7, 'Orange', '#ff8040', 'Orange is a vibrant and energetic color associated with enthusiasm, creativity, and determination. It\'s a color that grabs attention.', 1, '2023-11-13 21:25:19', '2023-11-13 21:25:19'),
(8, 'Brown', '#804040', 'Brown symbolizes stability and reliability. It\'s a down-to-earth color associated with nature, comfort, and dependability.', 1, '2023-11-13 21:26:00', '2023-11-13 21:26:00'),
(9, 'Gold', '#efeb3a', 'Gold signifies wealth, prosperity, and elegance. It\'s a color often associated with luxury and success.', 1, '2023-11-13 21:26:54', '2023-11-13 21:26:54'),
(10, 'Black', '#484848', 'Black is a classic color symbolizing sophistication, power, and mystery. It\'s a timeless choice often associated with elegance and formality.', 1, '2023-11-13 21:27:38', '2023-11-13 21:27:38');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` longtext NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab \r\nasperiores cupiditate expedita ipsa iste reiciendis repellendus sit? \r\nAdipisci delectus in magnam maiores molestiae nemo nesciunt quia quo \r\nquos vero! Aperiam architecto consequatur doloremque eligendi ex fugit \r\nitaque iure maiores, nulla, numquam odit officia repellendus rerum? \r\nAccusamus dolores, harum ipsam quaerat quod suscipit veritatis \r\nvoluptatum. Eligendi expedita hic maxime non quas qui ratione saepe sint\r\n sit temporibus. Asperiores autem consequuntur dolor doloribus esse, est\r\n et excepturi, exercitationem facere fuga id labore laudantium molestiae\r\n molestias mollitia natus nobis non ratione, sit veniam. Animi beatae \r\neius illo incidunt mollitia numquam quas quia quo!</p>\r\n                        <p>Lorem ipsum dolor sit amet, consectetur \r\nadipisicing elit. Architecto, blanditiis commodi dolorem ducimus, enim \r\nfugiat fugit illo incidunt ipsa iure iusto laudantium officia \r\npraesentium reprehenderit sequi. A ab architecto, consectetur corporis \r\ndignissimos, eligendi fuga hic labore libero minima nam, provident quae \r\nquas quod saepe similique temporibus! Illo labore nihil porro?    </p>\r\n                        <p>Lorem ipsum dolor sit amet, consectetur \r\nadipisicing elit. In nisi qui sequi tenetur voluptatibus voluptatum. Ad \r\naperiam atque beatae cum deleniti distinctio dolorum eius eos est \r\nexpedita fugit harum, incidunt ipsam molestiae mollitia nostrum qui \r\nquibusdam rem sapiente soluta velit veritatis vero voluptatem? \r\nDoloremque ducimus error vel. Ad architecto at dolorem dolorum eligendi \r\nexplicabo impedit ipsam, laudantium nemo praesentium provident qui rem \r\nrerum sapiente veniam vero voluptatem. Eveniet excepturi facilis nemo \r\nvelit voluptatum. Aliquid odit quas, reiciendis sint velit voluptatibus?</p><p><br></p><p></p>', 1, '2024-01-15 23:42:56', '2024-01-15 23:42:56'),
(2, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab \r\nasperiores cupiditate expedita ipsa iste reiciendis repellendus sit? \r\nAdipisci delectus in magnam maiores molestiae nemo nesciunt quia quo \r\nquos vero! Aperiam architecto consequatur doloremque eligendi ex fugit \r\nitaque iure maiores, nulla, numquam odit officia repellendus rerum? \r\nAccusamus dolores, harum ipsam quaerat quod suscipit veritatis \r\nvoluptatum. Eligendi expedita hic maxime non quas qui ratione saepe sint\r\n sit temporibus. Asperiores autem consequuntur dolor doloribus esse, est\r\n et excepturi, exercitationem facere fuga id labore laudantium molestiae\r\n molestias mollitia natus nobis non ratione, sit veniam. Animi beatae \r\neius illo incidunt mollitia numquam quas quia quo!</p>\r\n                        <p>Lorem ipsum dolor sit amet, consectetur \r\nadipisicing elit. Architecto, blanditiis commodi dolorem ducimus, enim \r\nfugiat fugit illo incidunt ipsa iure iusto laudantium officia \r\npraesentium reprehenderit sequi. A ab architecto, consectetur corporis \r\ndignissimos, eligendi fuga hic labore libero minima nam, provident quae \r\nquas quod saepe similique temporibus! Illo labore nihil porro?    </p>\r\n                        <p>Lorem ipsum dolor sit amet, consectetur \r\nadipisicing elit. In nisi qui sequi tenetur voluptatibus voluptatum. Ad \r\naperiam atque beatae cum deleniti distinctio dolorum eius eos est \r\nexpedita fugit harum, incidunt ipsam molestiae mollitia nostrum qui \r\nquibusdam rem sapiente soluta velit veritatis vero voluptatem? \r\nDoloremque ducimus error vel. Ad architecto at dolorem dolorum eligendi \r\nexplicabo impedit ipsam, laudantium nemo praesentium provident qui rem \r\nrerum sapiente veniam vero voluptatem. Eveniet excepturi facilis nemo \r\nvelit voluptatum. Aliquid odit quas, reiciendis sint velit voluptatibus?</p><p><br></p><p></p>', 1, '2024-01-15 23:44:09', '2024-01-15 23:44:09');

-- --------------------------------------------------------

--
-- Table structure for table `couriers`
--

CREATE TABLE `couriers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `shipping_cost` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `couriers`
--

INSERT INTO `couriers` (`id`, `name`, `email`, `mobile`, `address`, `shipping_cost`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sa Paribahan 01', 'saParibahan@mailinator.com', '01747534816', 'Malibag. Dhaka-1217', 66, 1, '2023-12-25 21:44:10', '2023-12-25 21:48:46'),
(2, 'Sundorban  01', 'Sundorban@gmail.com', '01747534817', 'Khilgoan, Dhaka-1217', 150, 1, '2023-12-25 21:46:17', '2023-12-25 21:49:21');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` text DEFAULT NULL,
  `date_of_birth` text DEFAULT NULL,
  `blood_group` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `mobile`, `password`, `address`, `date_of_birth`, `blood_group`, `district`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Abdullah Al Monayem', 'almonayem2019@gmail.com', '01747534818', '$2y$10$.Kffzgx8XRX1.FJkw497F.1Q/sjKb7TJgE3yMdnsvHurdkqYY45a6', NULL, NULL, NULL, NULL, NULL, 1, '2023-11-28 02:45:58', '2023-11-28 02:45:58'),
(2, 'Abdullah Al Monayem2', 'almonayem20191@gmail.com', '01747534817', '$2y$10$oSxUj0KHpCFsofJLF8NHCOLjGMR9GV8fYTGwHHxoAWM9SnCOzk0ym', NULL, NULL, NULL, NULL, NULL, 1, '2023-11-28 03:11:36', '2023-11-28 03:11:36'),
(3, 'Abdullah Al Monayem 3', 'almonayem20192@gmail.com', '01747534816', '$2y$10$mYyM5V/4uuoZZuOF9koh/uBZH6IHbUEfrPgW2/Nj17OKmL7HUkcrq', NULL, NULL, NULL, NULL, NULL, 1, '2023-11-28 04:44:26', '2023-11-28 04:44:26'),
(5, 'Abdullah Al Monayem 2', 'almonayem20194@gmail.com', '017475348155', '$2y$10$tukhUs2R0XX2mq.0pMHkxej0JMfQavefBVwY2jykMKfg07yHEChfu', NULL, NULL, NULL, NULL, NULL, 1, '2023-11-28 05:10:22', '2023-11-28 05:10:22'),
(6, 'Abdullah Al Monayem 6', 'almonayem20196@gmail.com', '01756064943', '$2y$10$QdmYi/wohFWHU9qshkl.luQVCp2POpF112MNEOPVmQ6cqGlVvecZS', NULL, NULL, NULL, NULL, NULL, 1, '2023-11-30 05:33:43', '2023-11-30 05:33:43'),
(7, 'Monayem Ali 1', 'monayemAli@gmail.com', '017475000000', 'monayemAli@gmail.com', NULL, NULL, NULL, NULL, NULL, 1, '2023-12-17 02:17:52', '2023-12-17 02:17:52'),
(8, 'Monayem Ali 2', 'monayemAli2@gmail.com', '0174756444444', '$2y$10$g0W23oKOmm6/kumGYNLV6.6qTyu5JaHBQD8SIHAXzkihPJmXKQqXS', 'Malibag', '05/29/2000', 'B+', 'Dhaka', 'admin/img/customer/26072.jpeg', 1, '2023-12-17 03:52:00', '2024-02-11 13:19:43');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `name`, `image`, `status`, `created_at`, `updated_at`) VALUES
(2, 'HeadPhone 21', 'admin/img/feature-images/1703399976.jpg', 0, '2023-12-24 00:39:06', '2024-02-11 22:53:15'),
(3, 'Free Shipping', 'admin/img/feature-images/1707713471.png', 1, '2024-02-11 22:51:11', '2024-02-11 22:51:11'),
(4, 'Online Order', 'admin/img/feature-images/1707713711.png', 1, '2024-02-11 22:55:11', '2024-02-11 22:55:11'),
(5, '24/7 Support', 'admin/img/feature-images/1707713780.png', 1, '2024-02-11 22:56:20', '2024-02-11 22:56:20');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_10_19_082748_create_sessions_table', 1),
(7, '2023_10_19_102335_create_categories_table', 1),
(8, '2023_10_26_034037_create_brands_table', 1),
(9, '2023_10_26_085913_create_sub_categories_table', 1),
(10, '2023_10_31_085300_create_units_table', 1),
(11, '2023_10_31_085311_create_colors_table', 1),
(12, '2023_10_31_085331_create_sizes_table', 1),
(13, '2023_11_02_050424_create_products_table', 1),
(14, '2023_11_02_082603_create_product_colors_table', 1),
(15, '2023_11_02_082613_create_product_sizes_table', 1),
(16, '2023_11_02_083551_create_product_images_table', 1),
(17, '2023_11_14_074532_create_product_offers_table', 2),
(18, '2023_11_26_102049_create_customers_table', 3),
(19, '2023_11_26_102105_create_orders_table', 3),
(20, '2023_11_26_102126_create_order_details_table', 3),
(22, '2023_12_18_163348_create_wish_lists_table', 4),
(24, '2023_12_21_093848_add_courier_id_column_to_orders_table', 5),
(25, '2023_12_24_040659_create_features_table', 5),
(26, '2023_12_24_051803_add_courier_id_column_to_orders_table', 6),
(27, '2023_12_24_052114_create_features_table', 7),
(28, '2023_12_24_061223_create_couriers_table', 8),
(32, '2023_12_26_093737_add_mobile_column_to_users_table', 9),
(33, '2023_12_26_094110_add_role_column_to_users_table', 9),
(34, '2024_01_02_063829_create_ads_table', 10),
(37, '2024_01_04_093218_create_settings_table', 11),
(38, '2024_01_14_081508_create_purchase_guides_table', 12),
(39, '2024_01_14_081630_create_shipping_policies_table', 12),
(40, '2024_01_14_081738_create_return_policies_table', 12),
(41, '2024_01_14_081746_create_privacy_policies_table', 12),
(42, '2024_01_14_091217_add_discount_amount_column_product_offers_table', 12),
(43, '2024_01_16_035148_create_privacy_policies_table', 13),
(44, '2024_01_16_035159_create_return_policies_table', 13),
(45, '2024_01_16_035219_create_shipping_policies_table', 13),
(46, '2024_01_16_035232_create_purchase_guides_table', 13),
(47, '2024_01_16_042245_create_terms_conditions_table', 13),
(48, '2024_01_16_042600_create_about_us_table', 13),
(49, '2024_01_16_042609_create_contact_us_table', 13),
(50, '2024_01_16_085254_create_vendors_table', 14),
(51, '2024_01_21_071042_add_vendor_id_column_to_products_table', 15);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_total` int(11) NOT NULL,
  `tax_total` int(11) NOT NULL,
  `shipping_total` int(11) NOT NULL,
  `order_date` text NOT NULL,
  `order_timestamp` text NOT NULL,
  `order_status` varchar(255) NOT NULL DEFAULT 'Pending',
  `delivery_address` text NOT NULL,
  `delivery_status` varchar(255) NOT NULL DEFAULT 'Pending',
  `payment_method` text NOT NULL,
  `payment_amount` int(11) NOT NULL DEFAULT 0,
  `payment_date` text DEFAULT NULL,
  `payment_timestamp` text DEFAULT NULL,
  `payment_status` varchar(255) NOT NULL DEFAULT 'Pending',
  `currency` varchar(255) DEFAULT 'BDT.',
  `transaction_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `courier_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `order_total`, `tax_total`, `shipping_total`, `order_date`, `order_timestamp`, `order_status`, `delivery_address`, `delivery_status`, `payment_method`, `payment_amount`, `payment_date`, `payment_timestamp`, `payment_status`, `currency`, `transaction_id`, `created_at`, `updated_at`, `courier_id`) VALUES
(1, 1, 20800, 2700, 100, '2023-11-28', '1701129600', 'Pending', 'Malibag', 'Pending', 'Cash', 0, NULL, NULL, 'Pending', 'BDT.', NULL, '2023-11-28 02:45:58', '2023-11-28 02:45:58', 0),
(2, 2, 20800, 2700, 100, '2023-11-28', '1701129600', 'Pending', 'sadsf', 'Pending', 'Cash', 0, NULL, NULL, 'Pending', 'BDT.', NULL, '2023-11-28 03:11:37', '2023-11-28 03:11:37', 0),
(3, 3, 22180, 2880, 100, '2023-11-28', '1701129600', 'Pending', 'safasfd', 'Pending', 'Cash', 0, NULL, NULL, 'Pending', 'BDT.', NULL, '2023-11-28 04:44:27', '2023-11-28 04:44:27', 0),
(4, 5, 80025, 10425, 100, '2023-11-28', '1701129600', 'Pending', 'sfsdgds', 'Pending', 'Cash', 0, NULL, NULL, 'Pending', 'BDT.', NULL, '2023-11-28 05:10:22', '2023-11-28 05:10:22', 0),
(7, 3, 1480, 180, 100, '2023-11-30', '1701302400', 'Pending', 'Ok Malibag', 'Pending', 'Cash', 0, NULL, NULL, 'Pending', 'BDT.', NULL, '2023-11-30 05:09:30', '2023-11-30 05:09:30', 0),
(8, 7, 1825, 225, 100, '2023-12-17', '1702771200', 'Pending', 'xyz,Dahke', 'Pending', 'Cash', 0, NULL, NULL, 'Pending', 'BDT.', NULL, '2023-12-17 02:17:52', '2023-12-17 02:17:52', 0),
(9, 7, 1825, 225, 100, '2023-12-20', '1703030400', 'Processing', 'Malibag', 'Processing', 'Cash', 0, NULL, NULL, 'Processing', 'BDT.', NULL, '2023-12-20 10:37:53', '2023-12-21 05:12:21', 0),
(10, 7, 15625, 2025, 100, '2023-12-20', '1703030400', 'Complete', 'dsgfdshdg', 'Complete', 'Cash', 15625, '2023-12-21', '1703116800', 'Complete', 'BDT.', NULL, '2023-12-20 11:00:44', '2023-12-21 05:17:28', 0),
(11, 8, 5275, 675, 100, '2023-12-31', '1703980800', 'Processing', 'Shantibag,Dhaka', 'Pending', 'Online', 0, NULL, NULL, 'Pending', 'BDT', '65912f52d2211', NULL, NULL, 0),
(12, 8, 4240, 540, 100, '2023-12-31', '1703980800', 'Processing', 'Malibag', 'Pending', 'Online', 0, NULL, NULL, 'Pending', 'BDT', '65913a40efe54', NULL, NULL, 0),
(13, 8, 2400, 300, 100, '2023-12-31', '1703980800', 'Processing', 'North Shahjahanpur', 'Pending', 'Online', 0, NULL, NULL, 'Pending', 'BDT', '65913ba60d86c', NULL, NULL, 0),
(14, 7, 1825, 225, 100, '2024-02-04', '1707004800', 'Pending', 'Malibag,Dhaka', 'Pending', 'Cash', 0, NULL, NULL, 'Pending', 'BDT.', NULL, '2024-02-04 10:22:32', '2024-02-04 10:22:32', 0),
(15, 7, 208250, 27150, 100, '2024-02-07', '1707264000', 'Pending', 'trsgsfg', 'Pending', 'Cash', 0, NULL, NULL, 'Pending', 'BDT.', NULL, '2024-02-07 09:21:18', '2024-02-07 09:21:18', 0),
(16, 8, 161100, 21000, 100, '2024-02-11', '1707609600', 'Pending', 'Malibag', 'Pending', 'Cash', 0, NULL, NULL, 'Pending', 'BDT.', NULL, '2024-02-11 13:21:57', '2024-02-11 13:21:57', 0),
(17, 8, 9070, 1170, 100, '2024-02-14', '1707868800', 'Pending', 'Dhaka', 'Pending', 'Cash', 0, NULL, NULL, 'Pending', 'BDT.', NULL, '2024-02-14 01:20:26', '2024-02-14 01:20:26', 0),
(18, 8, 1825, 225, 100, '2024-02-14', '1707868800', 'Pending', 'Mirpur', 'Pending', 'Cash', 0, NULL, NULL, 'Pending', 'BDT.', NULL, '2024-02-14 01:20:56', '2024-02-14 01:20:56', 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_color` varchar(255) NOT NULL,
  `product_size` varchar(255) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `product_name`, `product_color`, `product_size`, `product_price`, `product_qty`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'School Bag', 'Blue', 'XL', 1500, 3, '2023-11-28 02:45:58', '2023-11-28 02:45:58'),
(2, 1, 6, 'Formal Attire', 'Blue', 'M', 4500, 3, '2023-11-28 02:45:58', '2023-11-28 02:45:58'),
(3, 2, 1, 'School Bag', 'Blue', 'XL', 1500, 3, '2023-11-28 03:11:37', '2023-11-28 03:11:37'),
(4, 2, 6, 'Formal Attire', 'Blue', 'M', 4500, 3, '2023-11-28 03:11:37', '2023-11-28 03:11:37'),
(5, 3, 1, 'School Bag', 'Blue', 'XL', 1500, 3, '2023-11-28 04:44:27', '2023-11-28 04:44:27'),
(6, 3, 6, 'Formal Attire', 'Blue', 'M', 4500, 3, '2023-11-28 04:44:27', '2023-11-28 04:44:27'),
(7, 3, 10, 'Decorative Pillows', 'Purple', 'M', 1200, 1, '2023-11-28 04:44:27', '2023-11-28 04:44:27'),
(8, 4, 2, 'Office Bag', 'Blue', 'M', 1500, 1, '2023-11-28 05:10:22', '2023-11-28 05:10:22'),
(9, 4, 8, 'Laptops', 'Silver', 'M', 68000, 1, '2023-11-28 05:10:23', '2023-11-28 05:10:23'),
(13, 7, 10, 'Decorative Pillows', 'Pink', 'STD', 1200, 1, '2023-11-30 05:09:30', '2023-11-30 05:09:30'),
(14, 8, 2, 'Office Bag', 'Blue', 'M', 1500, 1, '2023-12-17 02:17:53', '2023-12-17 02:17:53'),
(15, 9, 2, 'Office Bag', 'Blue', 'M', 1500, 1, '2023-12-20 10:37:53', '2023-12-20 10:37:53'),
(16, 10, 6, 'Formal Attire', 'Blue', 'M', 4500, 3, '2023-12-20 11:00:44', '2023-12-20 11:00:44'),
(17, 13, 3, 'Sneakers', 'Green', '9US', 2000, 1, '2023-12-31 04:00:06', '2023-12-31 04:00:06'),
(18, 14, 2, 'Office Bag', 'Blue', 'M', 1500, 1, '2024-02-04 10:22:32', '2024-02-04 10:22:32'),
(19, 15, 8, 'Laptops', 'Silver', 'M', 68000, 2, '2024-02-07 09:21:18', '2024-02-07 09:21:18'),
(20, 15, 13, 'Outdoor Gear', 'Blue', 'M', 45000, 1, '2024-02-07 09:21:18', '2024-02-07 09:21:18'),
(21, 16, 3, 'Sneakers', 'Yellow', 'S', 2000, 2, '2024-02-11 13:21:57', '2024-02-11 13:21:57'),
(22, 16, 8, 'Laptops', 'Brown', 'TS', 68000, 2, '2024-02-11 13:21:57', '2024-02-11 13:21:57'),
(23, 17, 6, 'Formal Attire', 'Blue', 'M', 4500, 1, '2024-02-14 01:20:26', '2024-02-14 01:20:26'),
(24, 17, 16, 'Non-Fiction', 'Blue', 'TS', 3300, 1, '2024-02-14 01:20:26', '2024-02-14 01:20:26'),
(25, 18, 2, 'Office Bag', 'Blue', 'M', 1500, 1, '2024-02-14 01:20:56', '2024-02-14 01:20:56');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `privacy_policies`
--

CREATE TABLE `privacy_policies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` longtext NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `privacy_policies`
--

INSERT INTO `privacy_policies` (`id`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab \r\nasperiores cupiditate expedita ipsa iste reiciendis repellendus sit? \r\nAdipisci delectus in magnam maiores molestiae nemo nesciunt quia quo \r\nquos vero! Aperiam architecto consequatur doloremque eligendi ex fugit \r\nitaque iure maiores, nulla, numquam odit officia repellendus rerum? \r\nAccusamus dolores, harum ipsam quaerat quod suscipit veritatis \r\nvoluptatum. Eligendi expedita hic maxime non quas qui ratione saepe sint\r\n sit temporibus. Asperiores autem consequuntur dolor doloribus esse, est\r\n et excepturi, exercitationem facere fuga id labore laudantium molestiae\r\n molestias mollitia natus nobis non ratione, sit veniam. Animi beatae \r\neius illo incidunt mollitia numquam quas quia quo!</p>\r\n                        <p>Lorem ipsum dolor sit amet, consectetur \r\nadipisicing elit. Architecto, blanditiis commodi dolorem ducimus, enim \r\nfugiat fugit illo incidunt ipsa iure iusto laudantium officia \r\npraesentium reprehenderit sequi. A ab architecto, consectetur corporis \r\ndignissimos, eligendi fuga hic labore libero minima nam, provident quae \r\nquas quod saepe similique temporibus! Illo labore nihil porro?    </p>\r\n                        <p>Lorem ipsum dolor sit amet, consectetur \r\nadipisicing elit. In nisi qui sequi tenetur voluptatibus voluptatum. Ad \r\naperiam atque beatae cum deleniti distinctio dolorum eius eos est \r\nexpedita fugit harum, incidunt ipsam molestiae mollitia nostrum qui \r\nquibusdam rem sapiente soluta velit veritatis vero voluptatem? \r\nDoloremque ducimus error vel. Ad architecto at dolorem dolorum eligendi \r\nexplicabo impedit ipsam, laudantium nemo praesentium provident qui rem \r\nrerum sapiente veniam vero voluptatem. Eveniet excepturi facilis nemo \r\nvelit voluptatum. Aliquid odit quas, reiciendis sint velit voluptatibus?</p><p></p>', 1, '2024-01-15 23:24:47', '2024-01-15 23:24:47'),
(2, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab \r\nasperiores cupiditate expedita ipsa iste reiciendis repellendus sit? \r\nAdipisci delectus in magnam maiores molestiae nemo nesciunt quia quo \r\nquos vero! Aperiam architecto consequatur doloremque eligendi ex fugit \r\nitaque iure maiores, nulla, numquam odit officia repellendus rerum? \r\nAccusamus dolores, harum ipsam quaerat quod suscipit veritatis \r\nvoluptatum. Eligendi expedita hic maxime non quas qui ratione saepe sint\r\n sit temporibus. Asperiores autem consequuntur dolor doloribus esse, est\r\n et excepturi, exercitationem facere fuga id labore laudantium molestiae\r\n molestias mollitia natus nobis non ratione, sit veniam. Animi beatae \r\neius illo incidunt mollitia numquam quas quia quo!</p>\r\n                        <p>Lorem ipsum dolor sit amet, consectetur \r\nadipisicing elit. Architecto, blanditiis commodi dolorem ducimus, enim \r\nfugiat fugit illo incidunt ipsa iure iusto laudantium officia \r\npraesentium reprehenderit sequi. A ab architecto, consectetur corporis \r\ndignissimos, eligendi fuga hic labore libero minima nam, provident quae \r\nquas quod saepe similique temporibus! Illo labore nihil porro?    </p>\r\n                        <p>Lorem ipsum dolor sit amet, consectetur \r\nadipisicing elit. In nisi qui sequi tenetur voluptatibus voluptatum. Ad \r\naperiam atque beatae cum deleniti distinctio dolorum eius eos est \r\nexpedita fugit harum, incidunt ipsam molestiae mollitia nostrum qui \r\nquibusdam rem sapiente soluta velit veritatis vero voluptatem? \r\nDoloremque ducimus error vel. Ad architecto at dolorem dolorum eligendi \r\nexplicabo impedit ipsam, laudantium nemo praesentium provident qui rem \r\nrerum sapiente veniam vero voluptatem. Eveniet excepturi facilis nemo \r\nvelit voluptatum. Aliquid odit quas, reiciendis sint velit voluptatibus?</p><p></p>', 1, '2024-01-15 23:27:17', '2024-01-15 23:27:17');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `short_description` text NOT NULL,
  `long_description` longtext NOT NULL,
  `image` text NOT NULL,
  `regular_price` double(11,2) NOT NULL,
  `selling_price` double(11,2) NOT NULL,
  `stock_amount` int(11) NOT NULL DEFAULT 0,
  `hit_count` int(11) NOT NULL DEFAULT 0,
  `sales_count` int(11) NOT NULL DEFAULT 0,
  `featured_status` tinyint(4) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `vendor_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `brand_id`, `unit_id`, `name`, `code`, `short_description`, `long_description`, `image`, `regular_price`, `selling_price`, `stock_amount`, `hit_count`, `sales_count`, `featured_status`, `status`, `created_at`, `updated_at`, `vendor_id`) VALUES
(1, 1, 1, 1, 1, 'School Bag', 'SB-01', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat, sed.', '<pre style=\"background-color:#ffffff;color:#000000;font-family:\'JetBrains Mono\';font-size:9.8pt;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat, sed.</pre><p></p>', 'admin/img/product-img/1699934185.jpg', 2000.00, 1500.00, 100, 0, 0, 1, 1, '2023-11-13 21:56:25', '2023-11-13 21:56:25', 0),
(2, 1, 2, 2, 1, 'Office Bag', 'OB-01', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat, sed.', '<pre style=\"background-color:#ffffff;color:#000000;font-family:\'JetBrains Mono\';font-size:9.8pt;\"><span style=\"background-color:#efefef;\">&lt;</span><span style=\"color:#000080;background-color:#efefef;font-weight:bold;\">p</span><span style=\"background-color:#efefef;\">&gt;</span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus, veniam!<span style=\"background-color:#efefef;\">&lt;/</span><span style=\"color:#000080;background-color:#efefef;font-weight:bold;\">p</span><span style=\"background-color:#efefef;\">&gt;</span></pre><p></p>', 'admin/img/product-img/1699934703.jpg', 2000.00, 1500.00, 50, 0, 0, 1, 1, '2023-11-13 22:05:03', '2023-11-13 22:05:03', 0),
(3, 2, 3, 3, 2, 'Sneakers', 'SN-01', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat, sed.', '<pre style=\"background-color:#ffffff;color:#000000;font-family:\'JetBrains Mono\';font-size:9.8pt;\"><span style=\"background-color:#efefef;\">&lt;</span><span style=\"color:#000080;background-color:#efefef;font-weight:bold;\">p</span><span style=\"background-color:#efefef;\">&gt;</span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus, veniam!<span style=\"background-color:#efefef;\">&lt;/</span><span style=\"color:#000080;background-color:#efefef;font-weight:bold;\">p</span><span style=\"background-color:#efefef;\">&gt;</span></pre><p></p>', 'admin/img/product-img/1699934833.jpg', 3000.00, 2000.00, 30, 0, 0, 1, 1, '2023-11-13 22:07:13', '2023-11-13 22:07:13', 0),
(4, 2, 4, 4, 2, 'High Heels', 'HH-01', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat, sed.', '<pre style=\"background-color:#ffffff;color:#000000;font-family:\'JetBrains Mono\';font-size:9.8pt;\"><span style=\"background-color:#efefef;\">&lt;</span><span style=\"color:#000080;background-color:#efefef;font-weight:bold;\">p</span><span style=\"background-color:#efefef;\">&gt;</span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus, veniam!<span style=\"background-color:#efefef;\">&lt;/</span><span style=\"color:#000080;background-color:#efefef;font-weight:bold;\">p</span><span style=\"background-color:#efefef;\">&gt;</span></pre><p><br></p><p></p>', 'admin/img/product-img/1699935031.jpg', 3500.00, 2500.00, 100, 0, 0, 1, 1, '2023-11-13 22:10:31', '2023-11-13 22:10:31', 0),
(5, 3, 5, 5, 3, 'Casual Wear', 'CW-01', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat, sed.', '<pre style=\"background-color:#ffffff;color:#000000;font-family:\'JetBrains Mono\';font-size:9.8pt;\"><span style=\"background-color:#efefef;\">&lt;</span><span style=\"color:#000080;background-color:#efefef;font-weight:bold;\">p</span><span style=\"background-color:#efefef;\">&gt;</span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus, veniam!<span style=\"background-color:#efefef;\">&lt;/</span><span style=\"color:#000080;background-color:#efefef;font-weight:bold;\">p</span><span style=\"background-color:#efefef;\">&gt;</span></pre><p><br></p><p></p>', 'admin/img/product-img/1699935200.jpg', 2200.00, 2100.00, 70, 0, 0, 1, 1, '2023-11-13 22:13:20', '2023-11-13 22:13:20', 0),
(6, 3, 6, 6, 3, 'Formal Attire', 'FA-01', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat, sed.', '<pre style=\"background-color:#ffffff;color:#000000;font-family:\'JetBrains Mono\';font-size:9.8pt;\"><span style=\"background-color:#efefef;\">&lt;</span><span style=\"color:#000080;background-color:#efefef;font-weight:bold;\">p</span><span style=\"background-color:#efefef;\">&gt;</span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus, veniam!<span style=\"background-color:#efefef;\">&lt;/</span><span style=\"color:#000080;background-color:#efefef;font-weight:bold;\">p</span><span style=\"background-color:#efefef;\">&gt;</span></pre><p><br></p><p></p>', 'admin/img/product-img/1699935341.jpg', 5000.00, 4500.00, 30, 0, 0, 1, 1, '2023-11-13 22:15:41', '2023-11-13 22:15:41', 0),
(7, 4, 7, 7, 10, 'Smartphones', 'SP-01', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat, sed.', '<pre style=\"background-color:#ffffff;color:#000000;font-family:\'JetBrains Mono\';font-size:9.8pt;\"><span style=\"background-color:#efefef;\">&lt;</span><span style=\"color:#000080;background-color:#efefef;font-weight:bold;\">p</span><span style=\"background-color:#efefef;\">&gt;</span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus, veniam!<span style=\"background-color:#efefef;\">&lt;/</span><span style=\"color:#000080;background-color:#efefef;font-weight:bold;\">p</span><span style=\"background-color:#efefef;\">&gt;</span></pre><p><br></p><p></p>', 'admin/img/product-img/1699935482.jpg', 35000.00, 30000.00, 500, 0, 0, 1, 1, '2023-11-13 22:18:02', '2023-11-13 22:18:02', 0),
(8, 4, 8, 8, 7, 'Laptops', 'L-01', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat, sed.', '<pre style=\"background-color:#ffffff;color:#000000;font-family:\'JetBrains Mono\';font-size:9.8pt;\"><span style=\"background-color:#efefef;\">&lt;</span><span style=\"color:#000080;background-color:#efefef;font-weight:bold;\">p</span><span style=\"background-color:#efefef;\">&gt;</span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus, veniam!<span style=\"background-color:#efefef;\">&lt;/</span><span style=\"color:#000080;background-color:#efefef;font-weight:bold;\">p</span><span style=\"background-color:#efefef;\">&gt;</span></pre><p><br></p><p></p>', 'admin/img/product-img/1699935675.jpg', 70000.00, 68000.00, 50, 0, 0, 1, 1, '2023-11-13 22:21:15', '2023-11-13 22:21:15', 0),
(9, 5, 9, 9, 5, 'Wall Art', 'WA-01', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat, sed.', '<pre style=\"background-color:#ffffff;color:#000000;font-family:\'JetBrains Mono\';font-size:9.8pt;\"><span style=\"background-color:#efefef;\">&lt;</span><span style=\"color:#000080;background-color:#efefef;font-weight:bold;\">p</span><span style=\"background-color:#efefef;\">&gt;</span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus, veniam!<span style=\"background-color:#efefef;\">&lt;/</span><span style=\"color:#000080;background-color:#efefef;font-weight:bold;\">p</span><span style=\"background-color:#efefef;\">&gt;</span></pre><p><br></p><p></p>', 'admin/img/product-img/1699935938.jpg', 5000.00, 4500.00, 20, 0, 0, 1, 1, '2023-11-13 22:25:38', '2023-11-13 22:25:38', 0),
(10, 5, 10, 10, 7, 'Decorative Pillows', 'DP-01', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat, sed.', '<pre style=\"background-color:#ffffff;color:#000000;font-family:\'JetBrains Mono\';font-size:9.8pt;\">Prior to the innovations of <a href=\"https://en.wikipedia.org/wiki/Franco_of_Cologne\" title=\"Franco of Cologne\">Franco of Cologne</a>\r\n in the mid-thirteenth century, the value of the longa was in common \r\nusage in both theoretical and practical sources but appeared primarily \r\nin <a href=\"https://en.wikipedia.org/wiki/Mensural_notation#Ligatures\" title=\"Mensural notation\">pre-mensural notation ligatures</a>,\r\n symbols representing two or more notes joined together. A ligature that\r\n began with a longa was said to lack \"propriety\", while ligatures ending\r\n with a longa possessed \"perfection\", since in the view of that era a \r\n\"proper and perfect\" rhythmic sequence was the succession of a brevis \r\nfollowed by a longa, justified by the fact that the ligature \r\nrepresenting this rhythm is written the same way as a plainchant \r\nligature (a different usage of the term from above). As a result, there \r\nwere four possible ligature types: those beginning with a <i>brevis</i> and ending with a <i>longa</i>, which had both propriety and perfection; the reverse, which had neither; those both beginning and ending with a <i>longa</i>, which lacked propriety but had perfection; and those beginning and ending with a brevis, which were proper but not perfect.<sup id=\"cite_ref-FOOTNOTEApel196188–9,_261–2,_312–4_1-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Longa_(music)#cite_note-FOOTNOTEApel196188–9,_261–2,_312–4-1\">[1]</a></sup><sup id=\"cite_ref-Reckow1967_4_2-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Longa_(music)#cite_note-Reckow1967_4-2\">[2]</a></sup> Two longae, rarely three, had the combined value of a <i><a href=\"https://en.wikipedia.org/wiki/Maxima_(music)\" title=\"Maxima (music)\">maxima</a></i>. The theoretical value of a <i>maximodus perfectus</i> could only be written with three longae or a <i>maxima</i> plus a <i>longa</i>.<sup id=\"cite_ref-FOOTNOTEApel1961124,_328,_440_3-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Longa_(music)#cite_note-FOOTNOTEApel1961124,_328,_440-3\">[3]</a></sup></pre><p><br></p><p></p>', 'admin/img/product-img/1699936037.jpg', 1500.00, 1200.00, 80, 0, 0, 1, 1, '2023-11-13 22:27:17', '2023-11-28 03:22:54', 0),
(11, 6, 11, 11, 5, 'Skincare', 'SC-01', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat, sed.', '<pre style=\"background-color:#ffffff;color:#000000;font-family:\'JetBrains Mono\';font-size:9.8pt;\"><span style=\"background-color:#efefef;\">&lt;</span><span style=\"color:#000080;background-color:#efefef;font-weight:bold;\">p</span><span style=\"background-color:#efefef;\">&gt;</span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus, veniam!<span style=\"background-color:#efefef;\">&lt;/</span><span style=\"color:#000080;background-color:#efefef;font-weight:bold;\">p</span><span style=\"background-color:#efefef;\">&gt;</span></pre><p><br></p><p></p>', 'admin/img/product-img/1699936155.jpg', 1800.00, 1500.00, 200, 0, 0, 1, 1, '2023-11-13 22:29:15', '2023-11-13 22:29:15', 0),
(12, 6, 12, 12, 6, 'Makeup', 'MU-01', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat, sed.', '<pre style=\"background-color:#ffffff;color:#000000;font-family:\'JetBrains Mono\';font-size:9.8pt;\"><span style=\"background-color:#efefef;\">&lt;</span><span style=\"color:#000080;background-color:#efefef;font-weight:bold;\">p</span><span style=\"background-color:#efefef;\">&gt;</span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus, veniam!<span style=\"background-color:#efefef;\">&lt;/</span><span style=\"color:#000080;background-color:#efefef;font-weight:bold;\">p</span><span style=\"background-color:#efefef;\">&gt;</span></pre><p><br></p><p></p>', 'admin/img/product-img/1699936268.jpg', 1000.00, 800.00, 300, 0, 0, 1, 1, '2023-11-13 22:31:08', '2023-11-13 22:31:08', 0),
(13, 7, 13, 13, 4, 'Outdoor Gear', 'OG-01', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat, sed.', '<pre style=\"background-color:#ffffff;color:#000000;font-family:\'JetBrains Mono\';font-size:9.8pt;\"><span style=\"background-color:#efefef;\">&lt;</span><span style=\"color:#000080;background-color:#efefef;font-weight:bold;\">p</span><span style=\"background-color:#efefef;\">&gt;</span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus, veniam!<span style=\"background-color:#efefef;\">&lt;/</span><span style=\"color:#000080;background-color:#efefef;font-weight:bold;\">p</span><span style=\"background-color:#efefef;\">&gt;</span></pre><p><br></p><p></p>', 'admin/img/product-img/1699936427.jpg', 50000.00, 45000.00, 20, 0, 0, 1, 1, '2023-11-13 22:33:47', '2023-11-13 22:33:47', 0),
(14, 7, 14, 14, 6, 'Fitness Equipment', 'FE-01', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat, sed.', '<pre style=\"background-color:#ffffff;color:#000000;font-family:\'JetBrains Mono\';font-size:9.8pt;\"><span style=\"background-color:#efefef;\">&lt;</span><span style=\"color:#000080;background-color:#efefef;font-weight:bold;\">p</span><span style=\"background-color:#efefef;\">&gt;</span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus, veniam!<span style=\"background-color:#efefef;\">&lt;/</span><span style=\"color:#000080;background-color:#efefef;font-weight:bold;\">p</span><span style=\"background-color:#efefef;\">&gt;</span></pre><p><br></p><p></p>', 'admin/img/product-img/1699936566.jpg', 10000.00, 8000.00, 15, 0, 0, 1, 1, '2023-11-13 22:36:06', '2023-11-13 22:36:06', 0),
(15, 8, 15, 15, 8, 'Fiction', 'F-01', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat, sed.', '<pre style=\"background-color:#ffffff;color:#000000;font-family:\'JetBrains Mono\';font-size:9.8pt;\"><span style=\"background-color:#efefef;\">&lt;</span><span style=\"color:#000080;background-color:#efefef;font-weight:bold;\">p</span><span style=\"background-color:#efefef;\">&gt;</span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus, veniam!<span style=\"background-color:#efefef;\">&lt;/</span><span style=\"color:#000080;background-color:#efefef;font-weight:bold;\">p</span><span style=\"background-color:#efefef;\">&gt;</span></pre><p><br></p><p></p>', 'admin/img/product-img/1699936667.jpg', 3000.00, 2500.00, 20, 0, 0, 1, 1, '2023-11-13 22:37:47', '2023-11-13 22:37:47', 0),
(16, 8, 16, 16, 8, 'Non-Fiction', 'NF-01', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat, sed.', '<pre style=\"background-color:#ffffff;color:#000000;font-family:\'JetBrains Mono\';font-size:9.8pt;\"><span style=\"background-color:#efefef;\">&lt;</span><span style=\"color:#000080;background-color:#efefef;font-weight:bold;\">p</span><span style=\"background-color:#efefef;\">&gt;</span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus, veniam!<span style=\"background-color:#efefef;\">&lt;/</span><span style=\"color:#000080;background-color:#efefef;font-weight:bold;\">p</span><span style=\"background-color:#efefef;\">&gt;</span></pre><p><br></p><p></p>', 'admin/img/product-img/1699936767.jpg', 3500.00, 3300.00, 25, 0, 0, 1, 1, '2023-11-13 22:39:27', '2023-11-13 22:39:27', 0),
(17, 9, 17, 17, 9, 'Ethnic Dresses', 'ED-01', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat, sed.', '<pre style=\"background-color:#ffffff;color:#000000;font-family:\'JetBrains Mono\';font-size:9.8pt;\"><span style=\"background-color:#efefef;\">&lt;</span><span style=\"color:#000080;background-color:#efefef;font-weight:bold;\">p</span><span style=\"background-color:#efefef;\">&gt;</span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus, veniam!<span style=\"background-color:#efefef;\">&lt;/</span><span style=\"color:#000080;background-color:#efefef;font-weight:bold;\">p</span><span style=\"background-color:#efefef;\">&gt;</span></pre><p><br></p><p></p>', 'admin/img/product-img/1699936920.jpg', 5000.00, 4000.00, 75, 0, 0, 1, 1, '2023-11-13 22:42:00', '2023-11-13 22:42:00', 0),
(18, 9, 18, 18, 9, 'Traditional Accessories', 'TA-01', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat, sed.', '<pre style=\"background-color:#ffffff;color:#000000;font-family:\'JetBrains Mono\';font-size:9.8pt;\"><span style=\"background-color:#efefef;\">&lt;</span><span style=\"color:#000080;background-color:#efefef;font-weight:bold;\">p</span><span style=\"background-color:#efefef;\">&gt;</span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus, veniam!<span style=\"background-color:#efefef;\">&lt;/</span><span style=\"color:#000080;background-color:#efefef;font-weight:bold;\">p</span><span style=\"background-color:#efefef;\">&gt;</span></pre><p><br></p><p></p>', 'admin/img/product-img/1699937070.jpg', 3000.00, 2800.00, 1000, 0, 0, 1, 1, '2023-11-13 22:44:30', '2023-11-13 22:44:30', 0),
(19, 10, 19, 19, 10, 'Android Phones', 'AP-01', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat, sed.', '<pre style=\"background-color:#ffffff;color:#000000;font-family:\'JetBrains Mono\';font-size:9.8pt;\"><span style=\"background-color:#efefef;\">&lt;</span><span style=\"color:#000080;background-color:#efefef;font-weight:bold;\">p</span><span style=\"background-color:#efefef;\">&gt;</span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus, veniam!<span style=\"background-color:#efefef;\">&lt;/</span><span style=\"color:#000080;background-color:#efefef;font-weight:bold;\">p</span><span style=\"background-color:#efefef;\">&gt;</span></pre><p><br></p><p></p>', 'admin/img/product-img/1699937215.jpg', 45000.00, 42000.00, 150, 0, 0, 1, 1, '2023-11-13 22:46:55', '2023-11-13 22:46:55', 0),
(20, 10, 20, 20, 10, 'iOS Phones', 'IP-01', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat, sed.', '<pre style=\"background-color:#ffffff;color:#000000;font-family:\'JetBrains Mono\';font-size:9.8pt;\"><span style=\"background-color:#efefef;\">&lt;</span><span style=\"color:#000080;background-color:#efefef;font-weight:bold;\">p</span><span style=\"background-color:#efefef;\">&gt;</span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus, veniam!<span style=\"background-color:#efefef;\">&lt;/</span><span style=\"color:#000080;background-color:#efefef;font-weight:bold;\">p</span><span style=\"background-color:#efefef;\">&gt;</span></pre><p><br></p><p></p>', 'admin/img/product-img/1699937342.jpg', 200000.00, 198000.00, 50, 0, 0, 1, 1, '2023-11-13 22:49:02', '2023-11-13 22:49:02', 0),
(21, 1, 2, 2, 1, 'New Bag 1', 'NW1', 'New Bag 1', 'New Bag 1', 'admin/img/product-img/1705821664.jpg', 1500.00, 1400.00, 20, 0, 0, 1, 1, '2024-01-21 01:21:05', '2024-01-21 04:49:26', 5),
(23, 6, 12, 2, 5, 'Alice Bell', 'Sit vel dolore dolor', 'Molestias ea reprehe', 'Eligendi dolorem vol sadas<br>', 'admin/img/product-img/1707710400.jpg', 222.00, 200.00, 78, 0, 0, 1, 1, '2024-02-11 22:00:00', '2024-02-11 22:03:26', 5),
(24, 1, 2, 17, 8, 'Keely Rivers', 'Illum delectus cul', 'Perferendis eligendi', 'Nulla ad ullamco nis.dfsdfgsd', 'admin/img/product-img/1707711626.jpg', 337.00, 432.00, 22, 0, 0, 1, 0, '2024-02-11 22:20:26', '2024-02-11 22:20:26', 5);

-- --------------------------------------------------------

--
-- Table structure for table `product_colors`
--

CREATE TABLE `product_colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_colors`
--

INSERT INTO `product_colors` (`id`, `product_id`, `color_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2023-11-13 21:56:26', '2023-11-13 21:56:26'),
(2, 1, 2, '2023-11-13 21:56:26', '2023-11-13 21:56:26'),
(3, 1, 4, '2023-11-13 21:56:26', '2023-11-13 21:56:26'),
(4, 2, 1, '2023-11-13 22:05:03', '2023-11-13 22:05:03'),
(5, 2, 8, '2023-11-13 22:05:03', '2023-11-13 22:05:03'),
(6, 2, 10, '2023-11-13 22:05:03', '2023-11-13 22:05:03'),
(7, 3, 2, '2023-11-13 22:07:13', '2023-11-13 22:07:13'),
(8, 3, 3, '2023-11-13 22:07:13', '2023-11-13 22:07:13'),
(9, 3, 6, '2023-11-13 22:07:13', '2023-11-13 22:07:13'),
(10, 4, 5, '2023-11-13 22:10:31', '2023-11-13 22:10:31'),
(11, 4, 6, '2023-11-13 22:10:31', '2023-11-13 22:10:31'),
(12, 4, 7, '2023-11-13 22:10:31', '2023-11-13 22:10:31'),
(13, 5, 4, '2023-11-13 22:13:20', '2023-11-13 22:13:20'),
(14, 5, 8, '2023-11-13 22:13:20', '2023-11-13 22:13:20'),
(15, 5, 10, '2023-11-13 22:13:20', '2023-11-13 22:13:20'),
(16, 6, 1, '2023-11-13 22:15:41', '2023-11-13 22:15:41'),
(17, 6, 3, '2023-11-13 22:15:42', '2023-11-13 22:15:42'),
(18, 6, 4, '2023-11-13 22:15:42', '2023-11-13 22:15:42'),
(19, 6, 5, '2023-11-13 22:15:42', '2023-11-13 22:15:42'),
(20, 6, 9, '2023-11-13 22:15:42', '2023-11-13 22:15:42'),
(21, 7, 1, '2023-11-13 22:18:02', '2023-11-13 22:18:02'),
(22, 7, 4, '2023-11-13 22:18:02', '2023-11-13 22:18:02'),
(23, 7, 6, '2023-11-13 22:18:02', '2023-11-13 22:18:02'),
(24, 7, 10, '2023-11-13 22:18:03', '2023-11-13 22:18:03'),
(25, 8, 4, '2023-11-13 22:21:16', '2023-11-13 22:21:16'),
(26, 8, 8, '2023-11-13 22:21:16', '2023-11-13 22:21:16'),
(27, 8, 9, '2023-11-13 22:21:16', '2023-11-13 22:21:16'),
(28, 8, 10, '2023-11-13 22:21:16', '2023-11-13 22:21:16'),
(36, 11, 1, '2023-11-13 22:29:15', '2023-11-13 22:29:15'),
(37, 11, 5, '2023-11-13 22:29:15', '2023-11-13 22:29:15'),
(38, 11, 6, '2023-11-13 22:29:15', '2023-11-13 22:29:15'),
(39, 12, 2, '2023-11-13 22:31:09', '2023-11-13 22:31:09'),
(40, 12, 5, '2023-11-13 22:31:09', '2023-11-13 22:31:09'),
(41, 12, 8, '2023-11-13 22:31:09', '2023-11-13 22:31:09'),
(42, 13, 1, '2023-11-13 22:33:47', '2023-11-13 22:33:47'),
(43, 13, 8, '2023-11-13 22:33:47', '2023-11-13 22:33:47'),
(44, 13, 10, '2023-11-13 22:33:48', '2023-11-13 22:33:48'),
(45, 14, 4, '2023-11-13 22:36:07', '2023-11-13 22:36:07'),
(46, 14, 8, '2023-11-13 22:36:07', '2023-11-13 22:36:07'),
(47, 14, 10, '2023-11-13 22:36:07', '2023-11-13 22:36:07'),
(48, 15, 1, '2023-11-13 22:37:47', '2023-11-13 22:37:47'),
(49, 15, 2, '2023-11-13 22:37:47', '2023-11-13 22:37:47'),
(50, 15, 3, '2023-11-13 22:37:47', '2023-11-13 22:37:47'),
(51, 15, 7, '2023-11-13 22:37:47', '2023-11-13 22:37:47'),
(52, 16, 1, '2023-11-13 22:39:27', '2023-11-13 22:39:27'),
(53, 16, 2, '2023-11-13 22:39:27', '2023-11-13 22:39:27'),
(54, 16, 8, '2023-11-13 22:39:27', '2023-11-13 22:39:27'),
(55, 16, 10, '2023-11-13 22:39:27', '2023-11-13 22:39:27'),
(56, 17, 1, '2023-11-13 22:42:00', '2023-11-13 22:42:00'),
(57, 17, 2, '2023-11-13 22:42:00', '2023-11-13 22:42:00'),
(58, 17, 3, '2023-11-13 22:42:00', '2023-11-13 22:42:00'),
(59, 17, 4, '2023-11-13 22:42:00', '2023-11-13 22:42:00'),
(60, 17, 8, '2023-11-13 22:42:00', '2023-11-13 22:42:00'),
(61, 17, 10, '2023-11-13 22:42:00', '2023-11-13 22:42:00'),
(62, 18, 1, '2023-11-13 22:44:30', '2023-11-13 22:44:30'),
(63, 18, 2, '2023-11-13 22:44:30', '2023-11-13 22:44:30'),
(64, 18, 5, '2023-11-13 22:44:30', '2023-11-13 22:44:30'),
(65, 18, 6, '2023-11-13 22:44:30', '2023-11-13 22:44:30'),
(66, 18, 8, '2023-11-13 22:44:30', '2023-11-13 22:44:30'),
(67, 19, 1, '2023-11-13 22:46:55', '2023-11-13 22:46:55'),
(68, 19, 4, '2023-11-13 22:46:55', '2023-11-13 22:46:55'),
(69, 19, 10, '2023-11-13 22:46:55', '2023-11-13 22:46:55'),
(70, 20, 1, '2023-11-13 22:49:02', '2023-11-13 22:49:02'),
(71, 20, 4, '2023-11-13 22:49:02', '2023-11-13 22:49:02'),
(72, 20, 10, '2023-11-13 22:49:02', '2023-11-13 22:49:02'),
(73, 9, 1, '2023-11-13 22:50:40', '2023-11-13 22:50:40'),
(74, 9, 2, '2023-11-13 22:50:40', '2023-11-13 22:50:40'),
(75, 9, 3, '2023-11-13 22:50:40', '2023-11-13 22:50:40'),
(76, 9, 4, '2023-11-13 22:50:40', '2023-11-13 22:50:40'),
(80, 10, 5, '2023-11-28 03:22:54', '2023-11-28 03:22:54'),
(81, 10, 6, '2023-11-28 03:22:54', '2023-11-28 03:22:54'),
(82, 10, 7, '2023-11-28 03:22:54', '2023-11-28 03:22:54'),
(89, 21, 2, '2024-01-21 04:49:27', '2024-01-21 04:49:27'),
(90, 21, 6, '2024-01-21 04:49:27', '2024-01-21 04:49:27'),
(94, 23, 2, '2024-02-11 22:03:27', '2024-02-11 22:03:27'),
(95, 23, 6, '2024-02-11 22:03:27', '2024-02-11 22:03:27'),
(96, 23, 9, '2024-02-11 22:03:27', '2024-02-11 22:03:27'),
(97, 24, 2, '2024-02-11 22:20:27', '2024-02-11 22:20:27'),
(98, 24, 3, '2024-02-11 22:20:27', '2024-02-11 22:20:27');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin/img/product-other-img/88857.jpg', '2023-11-13 21:56:26', '2023-11-13 21:56:26'),
(2, 1, 'admin/img/product-other-img/216990.webp', '2023-11-13 21:56:26', '2023-11-13 21:56:26'),
(3, 2, 'admin/img/product-other-img/305268.jpg', '2023-11-13 22:05:03', '2023-11-13 22:05:03'),
(4, 3, 'admin/img/product-other-img/152545.jpg', '2023-11-13 22:07:14', '2023-11-13 22:07:14'),
(5, 4, 'admin/img/product-other-img/467795.jpg', '2023-11-13 22:10:31', '2023-11-13 22:10:31'),
(6, 4, 'admin/img/product-other-img/276717.jpg', '2023-11-13 22:10:31', '2023-11-13 22:10:31'),
(7, 5, 'admin/img/product-other-img/402223.jpg', '2023-11-13 22:13:20', '2023-11-13 22:13:20'),
(8, 5, 'admin/img/product-other-img/35558.jpg', '2023-11-13 22:13:20', '2023-11-13 22:13:20'),
(9, 5, 'admin/img/product-other-img/290856.jpg', '2023-11-13 22:13:21', '2023-11-13 22:13:21'),
(10, 6, 'admin/img/product-other-img/498652.jpg', '2023-11-13 22:15:42', '2023-11-13 22:15:42'),
(11, 7, 'admin/img/product-other-img/93812.jpg', '2023-11-13 22:18:03', '2023-11-13 22:18:03'),
(12, 8, 'admin/img/product-other-img/252326.jpg', '2023-11-13 22:21:16', '2023-11-13 22:21:16'),
(13, 8, 'admin/img/product-other-img/87874.jpg', '2023-11-13 22:21:16', '2023-11-13 22:21:16'),
(14, 8, 'admin/img/product-other-img/52811.jpg', '2023-11-13 22:21:16', '2023-11-13 22:21:16'),
(15, 9, 'admin/img/product-other-img/380787.jpeg', '2023-11-13 22:25:38', '2023-11-13 22:25:38'),
(16, 10, 'admin/img/product-other-img/34988.jpg', '2023-11-13 22:27:17', '2023-11-13 22:27:17'),
(17, 11, 'admin/img/product-other-img/476155.jpg', '2023-11-13 22:29:16', '2023-11-13 22:29:16'),
(18, 12, 'admin/img/product-other-img/248143.jpg', '2023-11-13 22:31:09', '2023-11-13 22:31:09'),
(19, 13, 'admin/img/product-other-img/447153.jpg', '2023-11-13 22:33:48', '2023-11-13 22:33:48'),
(20, 14, 'admin/img/product-other-img/418841.jpg', '2023-11-13 22:36:07', '2023-11-13 22:36:07'),
(21, 14, 'admin/img/product-other-img/57530.jpg', '2023-11-13 22:36:07', '2023-11-13 22:36:07'),
(22, 15, 'admin/img/product-other-img/139824.jpg', '2023-11-13 22:37:48', '2023-11-13 22:37:48'),
(23, 16, 'admin/img/product-other-img/349109.jpg', '2023-11-13 22:39:28', '2023-11-13 22:39:28'),
(24, 17, 'admin/img/product-other-img/320821.jpg', '2023-11-13 22:42:01', '2023-11-13 22:42:01'),
(25, 17, 'admin/img/product-other-img/109130.jpg', '2023-11-13 22:42:01', '2023-11-13 22:42:01'),
(26, 18, 'admin/img/product-other-img/481895.jpg', '2023-11-13 22:44:31', '2023-11-13 22:44:31'),
(27, 18, 'admin/img/product-other-img/247340.jpg', '2023-11-13 22:44:31', '2023-11-13 22:44:31'),
(28, 18, 'admin/img/product-other-img/64691.jpg', '2023-11-13 22:44:31', '2023-11-13 22:44:31'),
(29, 19, 'admin/img/product-other-img/20933.jpg', '2023-11-13 22:46:55', '2023-11-13 22:46:55'),
(30, 19, 'admin/img/product-other-img/237669.jpg', '2023-11-13 22:46:56', '2023-11-13 22:46:56'),
(31, 20, 'admin/img/product-other-img/237589.jpg', '2023-11-13 22:49:02', '2023-11-13 22:49:02'),
(32, 20, 'admin/img/product-other-img/137253.jpg', '2023-11-13 22:49:02', '2023-11-13 22:49:02'),
(33, 21, 'admin/img/product-other-img/157339.jpg', '2024-01-21 01:21:05', '2024-01-21 01:21:05'),
(34, 21, 'admin/img/product-other-img/459489.PNG', '2024-01-21 01:21:05', '2024-01-21 01:21:05'),
(35, 21, 'admin/img/product-other-img/405054.jpg', '2024-01-21 01:21:05', '2024-01-21 01:21:05'),
(39, 23, 'admin/img/product-other-img/183398.jpg', '2024-02-11 22:00:01', '2024-02-11 22:00:01'),
(40, 23, 'admin/img/product-other-img/480128.jpg', '2024-02-11 22:00:01', '2024-02-11 22:00:01'),
(41, 23, 'admin/img/product-other-img/39100.png', '2024-02-11 22:00:01', '2024-02-11 22:00:01'),
(42, 24, 'admin/img/product-other-img/441901.jpg', '2024-02-11 22:20:27', '2024-02-11 22:20:27'),
(43, 24, 'admin/img/product-other-img/309941.jpg', '2024-02-11 22:20:27', '2024-02-11 22:20:27'),
(44, 24, 'admin/img/product-other-img/361156.png', '2024-02-11 22:20:27', '2024-02-11 22:20:27');

-- --------------------------------------------------------

--
-- Table structure for table `product_offers`
--

CREATE TABLE `product_offers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `title_one` varchar(255) NOT NULL,
  `title_two` varchar(255) NOT NULL,
  `title_three` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `discount_amount` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_offers`
--

INSERT INTO `product_offers` (`id`, `product_id`, `title_one`, `title_two`, `title_three`, `description`, `image`, `status`, `created_at`, `updated_at`, `discount_amount`) VALUES
(1, 5, 'Hot Promotions', 'Fashion Trending', 'Great Collection', 'save more with coupons & upto 20% off', 'admin/img/product-offer-images/1700109976.jpg', 1, '2023-11-15 22:46:16', '2024-01-14 05:22:58', 20),
(2, 18, 'Trade-in offer', 'Super value deals', 'On all products', 'save more with coupons & upto 70% off', 'admin/img/product-offer-images/1700110333.jpg', 1, '2023-11-15 22:52:13', '2023-11-15 22:52:13', 0),
(3, 6, 'Upcoming Offer', 'Big Deals From', 'Manufacturers', 'Clothing, Shoes, Bags, Wallets', 'admin/img/product-offer-images/1700110668.jpg', 1, '2023-11-15 22:57:48', '2023-11-15 22:57:48', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_sizes`
--

CREATE TABLE `product_sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_sizes`
--

INSERT INTO `product_sizes` (`id`, `product_id`, `size_id`, `created_at`, `updated_at`) VALUES
(1, 1, 3, '2023-11-13 21:56:26', '2023-11-13 21:56:26'),
(2, 1, 6, '2023-11-13 21:56:26', '2023-11-13 21:56:26'),
(3, 2, 1, '2023-11-13 22:05:03', '2023-11-13 22:05:03'),
(4, 2, 11, '2023-11-13 22:05:03', '2023-11-13 22:05:03'),
(5, 3, 2, '2023-11-13 22:07:14', '2023-11-13 22:07:14'),
(6, 3, 9, '2023-11-13 22:07:14', '2023-11-13 22:07:14'),
(7, 4, 1, '2023-11-13 22:10:31', '2023-11-13 22:10:31'),
(8, 4, 2, '2023-11-13 22:10:31', '2023-11-13 22:10:31'),
(9, 4, 9, '2023-11-13 22:10:31', '2023-11-13 22:10:31'),
(10, 5, 1, '2023-11-13 22:13:20', '2023-11-13 22:13:20'),
(11, 5, 3, '2023-11-13 22:13:20', '2023-11-13 22:13:20'),
(12, 5, 4, '2023-11-13 22:13:20', '2023-11-13 22:13:20'),
(13, 5, 9, '2023-11-13 22:13:20', '2023-11-13 22:13:20'),
(14, 6, 1, '2023-11-13 22:15:42', '2023-11-13 22:15:42'),
(15, 6, 3, '2023-11-13 22:15:42', '2023-11-13 22:15:42'),
(16, 6, 4, '2023-11-13 22:15:42', '2023-11-13 22:15:42'),
(17, 6, 6, '2023-11-13 22:15:42', '2023-11-13 22:15:42'),
(18, 6, 9, '2023-11-13 22:15:42', '2023-11-13 22:15:42'),
(19, 6, 11, '2023-11-13 22:15:42', '2023-11-13 22:15:42'),
(20, 7, 6, '2023-11-13 22:18:03', '2023-11-13 22:18:03'),
(21, 7, 8, '2023-11-13 22:18:03', '2023-11-13 22:18:03'),
(22, 7, 9, '2023-11-13 22:18:03', '2023-11-13 22:18:03'),
(23, 7, 12, '2023-11-13 22:18:03', '2023-11-13 22:18:03'),
(24, 8, 1, '2023-11-13 22:21:16', '2023-11-13 22:21:16'),
(25, 8, 5, '2023-11-13 22:21:16', '2023-11-13 22:21:16'),
(26, 8, 8, '2023-11-13 22:21:16', '2023-11-13 22:21:16'),
(27, 8, 9, '2023-11-13 22:21:16', '2023-11-13 22:21:16'),
(32, 11, 8, '2023-11-13 22:29:15', '2023-11-13 22:29:15'),
(33, 11, 9, '2023-11-13 22:29:15', '2023-11-13 22:29:15'),
(34, 12, 6, '2023-11-13 22:31:09', '2023-11-13 22:31:09'),
(35, 12, 8, '2023-11-13 22:31:09', '2023-11-13 22:31:09'),
(36, 12, 9, '2023-11-13 22:31:09', '2023-11-13 22:31:09'),
(37, 13, 1, '2023-11-13 22:33:48', '2023-11-13 22:33:48'),
(38, 13, 3, '2023-11-13 22:33:48', '2023-11-13 22:33:48'),
(39, 13, 9, '2023-11-13 22:33:48', '2023-11-13 22:33:48'),
(40, 14, 1, '2023-11-13 22:36:07', '2023-11-13 22:36:07'),
(41, 14, 3, '2023-11-13 22:36:07', '2023-11-13 22:36:07'),
(42, 14, 8, '2023-11-13 22:36:07', '2023-11-13 22:36:07'),
(43, 15, 8, '2023-11-13 22:37:47', '2023-11-13 22:37:47'),
(44, 15, 10, '2023-11-13 22:37:48', '2023-11-13 22:37:48'),
(45, 16, 8, '2023-11-13 22:39:27', '2023-11-13 22:39:27'),
(46, 16, 10, '2023-11-13 22:39:28', '2023-11-13 22:39:28'),
(47, 17, 1, '2023-11-13 22:42:00', '2023-11-13 22:42:00'),
(48, 17, 3, '2023-11-13 22:42:00', '2023-11-13 22:42:00'),
(49, 17, 4, '2023-11-13 22:42:00', '2023-11-13 22:42:00'),
(50, 17, 9, '2023-11-13 22:42:01', '2023-11-13 22:42:01'),
(51, 18, 1, '2023-11-13 22:44:30', '2023-11-13 22:44:30'),
(52, 18, 3, '2023-11-13 22:44:30', '2023-11-13 22:44:30'),
(53, 18, 5, '2023-11-13 22:44:31', '2023-11-13 22:44:31'),
(54, 18, 9, '2023-11-13 22:44:31', '2023-11-13 22:44:31'),
(55, 18, 11, '2023-11-13 22:44:31', '2023-11-13 22:44:31'),
(56, 19, 9, '2023-11-13 22:46:55', '2023-11-13 22:46:55'),
(57, 19, 12, '2023-11-13 22:46:55', '2023-11-13 22:46:55'),
(58, 20, 1, '2023-11-13 22:49:02', '2023-11-13 22:49:02'),
(59, 20, 9, '2023-11-13 22:49:02', '2023-11-13 22:49:02'),
(60, 20, 12, '2023-11-13 22:49:02', '2023-11-13 22:49:02'),
(61, 9, 3, '2023-11-13 22:50:40', '2023-11-13 22:50:40'),
(62, 9, 6, '2023-11-13 22:50:40', '2023-11-13 22:50:40'),
(63, 9, 7, '2023-11-13 22:50:40', '2023-11-13 22:50:40'),
(67, 10, 1, '2023-11-28 03:22:54', '2023-11-28 03:22:54'),
(68, 10, 6, '2023-11-28 03:22:54', '2023-11-28 03:22:54'),
(69, 10, 7, '2023-11-28 03:22:54', '2023-11-28 03:22:54'),
(76, 21, 1, '2024-01-21 04:49:27', '2024-01-21 04:49:27'),
(77, 21, 8, '2024-01-21 04:49:27', '2024-01-21 04:49:27'),
(80, 23, 3, '2024-02-11 22:03:27', '2024-02-11 22:03:27'),
(81, 23, 6, '2024-02-11 22:03:27', '2024-02-11 22:03:27'),
(82, 24, 5, '2024-02-11 22:20:27', '2024-02-11 22:20:27'),
(83, 24, 6, '2024-02-11 22:20:27', '2024-02-11 22:20:27'),
(84, 24, 10, '2024-02-11 22:20:27', '2024-02-11 22:20:27'),
(85, 24, 11, '2024-02-11 22:20:27', '2024-02-11 22:20:27');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_guides`
--

CREATE TABLE `purchase_guides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` longtext NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_guides`
--

INSERT INTO `purchase_guides` (`id`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, '<div class=\"single-content\">\r\n                            <h4>1. Account Registering</h4>\r\n                            <p>Lorem ipsum dolor sit amet consectetur \r\nadipisicing elit. Nulla modi dolores neque omnis ipsa? Quia, nam \r\nvoluptas! Aut, magnam molestias:</p>\r\n                            <ul class=\"mb-30\"><li>Name (required)</li><li>Age (required)</li><li>Date of birth (required)</li><li>Passport/ ID no. (required)</li><li>Current career (required)</li><li>Mobile phone numbers (required)</li><li>Email address (required)</li><li>Hobbies &amp; interests (optional)</li><li>Social profiles (optional)</li></ul>\r\n                            <h4>2. Select Product</h4>\r\n                            <p>Lorem ipsum dolor sit amet consectetur \r\nadipisicing elit. Suscipit officia necessitatibus repellat placeat aut \r\nenim recusandae assumenda adipisci quisquam, deserunt iure veritatis \r\ncupiditate modi aspernatur accusantium, mollitia doloribus. Velit, iste.</p>\r\n                            <h4>3. Confirm Order Content</h4>\r\n                            <p>Lorem, ipsum dolor sit amet consectetur \r\nadipisicing elit. Libero ut autem sed! Assumenda, nostrum non doloribus \r\ntenetur, pariatur veritatis harum natus ipsam maiores dolorem \r\nrepudiandae laboriosam, cupiditate odio earum eum?</p>\r\n                            <h4>4.Transaction Completed</h4>\r\n                            <p>Lorem ipsum dolor sit amet consectetur \r\nadipisicing elit. Ipsam nesciunt nam aut magnam libero aspernatur eaque \r\npraesentium? Tempore labore quis neque? Magni.</p>\r\n                            <h4>5. Accepted Credit Cards</h4>\r\n                            <ul><li>Visa</li><li>Mastercards</li><li>American Express</li><li>Discover</li></ul>\r\n                            <span>*Taxes are calculated by your local bank and location.</span>\r\n                            <h4 class=\"mt-30\">6. Download and Setup</h4>\r\n                            <ul><li>Updated content on a regular basis</li><li>Secure &amp; hassle-free payment</li><li>1-click checkout</li><li>Easy access &amp; smart user dashboard</li></ul>\r\n                        </div><p></p>', 1, '2024-01-15 23:16:56', '2024-01-15 23:16:56'),
(2, '<div class=\"single-content\">\r\n                            <h4>1. Account Registering</h4>\r\n                            <p>Lorem ipsum dolor sit amet consectetur \r\nadipisicing elit. Nulla modi dolores neque omnis ipsa? Quia, nam \r\nvoluptas! Aut, magnam molestias:</p>\r\n                            <ul class=\"mb-30\"><li>Name (required)</li><li>Age (required)</li><li>Date of birth (required)</li><li>Passport/ ID no. (required)</li><li>Current career (required)</li><li>Mobile phone numbers (required)</li><li>Email address (required)</li><li>Hobbies & interests (optional)</li><li>Social profiles (optional)</li></ul>\r\n                            <h4>2. Select Product</h4>\r\n                            <p>Lorem ipsum dolor sit amet consectetur \r\nadipisicing elit. Suscipit officia necessitatibus repellat placeat aut \r\nenim recusandae assumenda adipisci quisquam, deserunt iure veritatis \r\ncupiditate modi aspernatur accusantium, mollitia doloribus. Velit, iste.</p>\r\n                            <h4>3. Confirm Order Content</h4>\r\n                            <p>Lorem, ipsum dolor sit amet consectetur \r\nadipisicing elit. Libero ut autem sed! Assumenda, nostrum non doloribus \r\ntenetur, pariatur veritatis harum natus ipsam maiores dolorem \r\nrepudiandae laboriosam, cupiditate odio earum eum?</p>\r\n                            <h4>4.Transaction Completed</h4>\r\n                            <p>Lorem ipsum dolor sit amet consectetur \r\nadipisicing elit. Ipsam nesciunt nam aut magnam libero aspernatur eaque \r\npraesentium? Tempore labore quis neque? Magni.</p>\r\n                            <h4>5. Accepted Credit Cards</h4>\r\n                            <ul><li>Visa</li><li>Mastercards</li><li>American Express</li><li>Discover</li></ul>\r\n                            <span>*Taxes are calculated by your local bank and location.</span>\r\n                            <h4 class=\"mt-30\">6. Download and Setup</h4>\r\n                            <ul><li>Updated content on a regular basis</li><li>Secure & hassle-free payment</li><li>1-click checkout</li><li>Easy access & smart user dashboard</li></ul>\r\n                        </div><p></p>', 1, '2024-01-15 23:18:24', '2024-01-15 23:18:24'),
(3, '<div class=\"single-content\">\r\n                            <h4>1. Account Registering</h4>\r\n                            <p>Lorem ipsum dolor sit amet consectetur \r\nadipisicing elit. Nulla modi dolores neque omnis ipsa? Quia, nam \r\nvoluptas! Aut, magnam molestias:</p>\r\n                            <ul class=\"mb-30\"><li>Name (required)</li><li>Age (required)</li><li>Date of birth (required)</li><li>Passport/ ID no. (required)</li><li>Current career (required)</li><li>Mobile phone numbers (required)</li><li>Email address (required)</li><li>Hobbies & interests (optional)</li><li>Social profiles (optional)</li></ul>\r\n                            <h4>2. Select Product</h4>\r\n                            <p>Lorem ipsum dolor sit amet consectetur \r\nadipisicing elit. Suscipit officia necessitatibus repellat placeat aut \r\nenim recusandae assumenda adipisci quisquam, deserunt iure veritatis \r\ncupiditate modi aspernatur accusantium, mollitia doloribus. Velit, iste.</p>\r\n                            <h4>3. Confirm Order Content</h4>\r\n                            <p>Lorem, ipsum dolor sit amet consectetur \r\nadipisicing elit. Libero ut autem sed! Assumenda, nostrum non doloribus \r\ntenetur, pariatur veritatis harum natus ipsam maiores dolorem \r\nrepudiandae laboriosam, cupiditate odio earum eum?</p>\r\n                            <h4>4.Transaction Completed</h4>\r\n                            <p>Lorem ipsum dolor sit amet consectetur \r\nadipisicing elit. Ipsam nesciunt nam aut magnam libero aspernatur eaque \r\npraesentium? Tempore labore quis neque? Magni.</p>\r\n                            <h4>5. Accepted Credit Cards</h4>\r\n                            <ul><li>Visa</li><li>Mastercards</li><li>American Express</li><li>Discover</li></ul>\r\n                            <span>*Taxes are calculated by your local bank and location.</span>\r\n                            <h4 class=\"mt-30\">6. Download and Setup</h4>\r\n                            <ul><li>Updated content on a regular basis</li><li>Secure & hassle-free payment</li><li>1-click checkout</li><li>Easy access & smart user dashboard</li></ul>\r\n                        </div><p></p>', 1, '2024-02-11 12:26:06', '2024-02-11 12:26:06');

-- --------------------------------------------------------

--
-- Table structure for table `return_policies`
--

CREATE TABLE `return_policies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` longtext NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `return_policies`
--

INSERT INTO `return_policies` (`id`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab \r\nasperiores cupiditate expedita ipsa iste reiciendis repellendus sit? \r\nAdipisci delectus in magnam maiores molestiae nemo nesciunt quia quo \r\nquos vero! Aperiam architecto consequatur doloremque eligendi ex fugit \r\nitaque iure maiores, nulla, numquam odit officia repellendus rerum? \r\nAccusamus dolores, harum ipsam quaerat quod suscipit veritatis \r\nvoluptatum. Eligendi expedita hic maxime non quas qui ratione saepe sint\r\n sit temporibus. Asperiores autem consequuntur dolor doloribus esse, est\r\n et excepturi, exercitationem facere fuga id labore laudantium molestiae\r\n molestias mollitia natus nobis non ratione, sit veniam. Animi beatae \r\neius illo incidunt mollitia numquam quas quia quo!</p>\r\n                        <p>Lorem ipsum dolor sit amet, consectetur \r\nadipisicing elit. Architecto, blanditiis commodi dolorem ducimus, enim \r\nfugiat fugit illo incidunt ipsa iure iusto laudantium officia \r\npraesentium reprehenderit sequi. A ab architecto, consectetur corporis \r\ndignissimos, eligendi fuga hic labore libero minima nam, provident quae \r\nquas quod saepe similique temporibus! Illo labore nihil porro?    </p>\r\n                        <p>Lorem ipsum dolor sit amet, consectetur \r\nadipisicing elit. In nisi qui sequi tenetur voluptatibus voluptatum. Ad \r\naperiam atque beatae cum deleniti distinctio dolorum eius eos est \r\nexpedita fugit harum, incidunt ipsam molestiae mollitia nostrum qui \r\nquibusdam rem sapiente soluta velit veritatis vero voluptatem? \r\nDoloremque ducimus error vel. Ad architecto at dolorem dolorum eligendi \r\nexplicabo impedit ipsam, laudantium nemo praesentium provident qui rem \r\nrerum sapiente veniam vero voluptatem. Eveniet excepturi facilis nemo \r\nvelit voluptatum. Aliquid odit quas, reiciendis sint velit voluptatibus?</p><p></p>', 1, '2024-01-15 23:19:28', '2024-01-15 23:19:28'),
(2, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab \r\nasperiores cupiditate expedita ipsa iste reiciendis repellendus sit? \r\nAdipisci delectus in magnam maiores molestiae nemo nesciunt quia quo \r\nquos vero! Aperiam architecto consequatur doloremque eligendi ex fugit \r\nitaque iure maiores, nulla, numquam odit officia repellendus rerum? \r\nAccusamus dolores, harum ipsam quaerat quod suscipit veritatis \r\nvoluptatum. Eligendi expedita hic maxime non quas qui ratione saepe sint\r\n sit temporibus. Asperiores autem consequuntur dolor doloribus esse, est\r\n et excepturi, exercitationem facere fuga id labore laudantium molestiae\r\n molestias mollitia natus nobis non ratione, sit veniam. Animi beatae \r\neius illo incidunt mollitia numquam quas quia quo!</p>\r\n                        <p>Lorem ipsum dolor sit amet, consectetur \r\nadipisicing elit. Architecto, blanditiis commodi dolorem ducimus, enim \r\nfugiat fugit illo incidunt ipsa iure iusto laudantium officia \r\npraesentium reprehenderit sequi. A ab architecto, consectetur corporis \r\ndignissimos, eligendi fuga hic labore libero minima nam, provident quae \r\nquas quod saepe similique temporibus! Illo labore nihil porro?    </p>\r\n                        <p>Lorem ipsum dolor sit amet, consectetur \r\nadipisicing elit. In nisi qui sequi tenetur voluptatibus voluptatum. Ad \r\naperiam atque beatae cum deleniti distinctio dolorum eius eos est \r\nexpedita fugit harum, incidunt ipsam molestiae mollitia nostrum qui \r\nquibusdam rem sapiente soluta velit veritatis vero voluptatem? \r\nDoloremque ducimus error vel. Ad architecto at dolorem dolorum eligendi \r\nexplicabo impedit ipsam, laudantium nemo praesentium provident qui rem \r\nrerum sapiente veniam vero voluptatem. Eveniet excepturi facilis nemo \r\nvelit voluptatum. Aliquid odit quas, reiciendis sint velit voluptatibus?</p><p></p>', 1, '2024-01-15 23:23:41', '2024-01-15 23:23:41');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('1NLyQHHHAXaUrQQWv5cV2hMhF3pA0U6UIaadThJl', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVEI2QjdvODBzUE1UT3lvYWR6YTdVemdiNTZsaEFpbXhUVG9jWWlDRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly9sb2NhbGhvc3QvZXZhcmEvcHVibGljIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1707908566),
('2opaa1zArFk3IEjmUxkTXcYAOScEQQB87Q2BK12u', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 'YTo4OntzOjY6Il90b2tlbiI7czo0MDoibWtFdTdPdVdmWERLamlNUzFWRmM3a2I0TUxsNW10VmZ3S1FCcDJLdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly9sb2NhbGhvc3QvZXZhcmEvcHVibGljIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo0OiJjYXJ0IjthOjE6e3M6NzoiZGVmYXVsdCI7TzoyOToiSWxsdW1pbmF0ZVxTdXBwb3J0XENvbGxlY3Rpb24iOjI6e3M6ODoiACoAaXRlbXMiO2E6MDp7fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkSk9mWHRuYWIzMGlXQTQuTmRuaW5SZVZZUWp5RGRSMS85MkZHOEtESGE0cE5TMGhLL3BtZUMiO3M6MTE6ImN1c3RvbWVyX2lkIjtpOjg7czoxMzoiY3VzdG9tZXJfbmFtZSI7czoxMzoiTW9uYXllbSBBbGkgMiI7fQ==', 1707900646),
('f2bD2wwlwPQSDlWTm8SO1Avd07usH8RjVk21cDqo', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoibmVIaGFmVkVITTlLRFUzRlRhd0UwekVwbnFuTHh0MDFRN25KSk5yMiI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI5OiJodHRwOi8vbG9jYWxob3N0L2V2YXJhL3B1YmxpYyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkSk9mWHRuYWIzMGlXQTQuTmRuaW5SZVZZUWp5RGRSMS85MkZHOEtESGE0cE5TMGhLL3BtZUMiO30=', 1707904821),
('Xe0FCDz4GvpHsI81vIvZ1cZeGMdQGHMtLZzrJdEv', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiekRoSkxSTzBaSHByQUFKenpManZ3RXVTVWF5Z04wNDdPR29EVXVjMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly9sb2NhbGhvc3QvZXZhcmEvcHVibGljIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1707905573);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_name` text NOT NULL,
  `slogan` text NOT NULL,
  `contact_phone` varchar(255) DEFAULT NULL,
  `support_phone` varchar(255) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `support_email` varchar(255) DEFAULT NULL,
  `office_hour` varchar(255) DEFAULT NULL,
  `facebook_link` text DEFAULT NULL,
  `twitter_link` text DEFAULT NULL,
  `linkedin_link` text DEFAULT NULL,
  `youtube_link` text DEFAULT NULL,
  `instagram_link` text DEFAULT NULL,
  `google_map_api_link` text DEFAULT NULL,
  `android_app_image` text DEFAULT NULL,
  `android_app_url` text DEFAULT NULL,
  `ios_app_image` text DEFAULT NULL,
  `ios_app_url` text DEFAULT NULL,
  `company_address` text DEFAULT NULL,
  `logo_jpg` text DEFAULT NULL,
  `logo_png` text DEFAULT NULL,
  `favicon` text DEFAULT NULL,
  `title` text DEFAULT NULL,
  `payment_method_image` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `company_name`, `slogan`, `contact_phone`, `support_phone`, `contact_email`, `support_email`, `office_hour`, `facebook_link`, `twitter_link`, `linkedin_link`, `youtube_link`, `instagram_link`, `google_map_api_link`, `android_app_image`, `android_app_url`, `ios_app_image`, `ios_app_url`, `company_address`, `logo_jpg`, `logo_png`, `favicon`, `title`, `payment_method_image`, `created_at`, `updated_at`) VALUES
(1, 'Evara', 'Esse qui iste est ac', '01747534818', '01957675711', 'evara@gmail.com', 'support@gmail.com', '10:00 - 18:00, Mon - Sat', 'https://www.facebook.com/AbdullahAlMonayem.sk', 'https://www.facebook.com/AbdullahAlMonayem.sk', 'https://www.facebook.com/AbdullahAlMonayem.sk', 'https://www.facebook.com/AbdullahAlMonayem.sk', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7303.701719111753!2d90.38981394265086!3d23.75269721467507!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755b8983f79fa27%3A0xeddafd73d038bc2f!2sKawran%20Bazar%2C%20Dhaka%201215!5e0!3m2!1sen!2sbd!4v1704791572130!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7303.701719111753!2d90.38981394265086!3d23.75269721467507!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755b8983f79fa27%3A0xeddafd73d038bc2f!2sKawran%20Bazar%2C%20Dhaka%201215!5e0!3m2!1sen!2sbd!4v1704791572130!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'admin/img/setting/26317.jpg', 'https://www.facebook.com/AbdullahAlMonayem.sk', 'admin/img/setting/47913.jpg', 'https://www.facebook.com/AbdullahAlMonayem.sk', 'Holmes and Crawford Trading', 'admin/img/setting/39778.svg', 'admin/img/setting/44171.PNG', 'admin/img/setting/36878.PNG', 'Lyons and Graves Plc', 'admin/img/setting/38423.png', '2024-01-09 03:27:26', '2024-01-09 04:08:53');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_policies`
--

CREATE TABLE `shipping_policies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` longtext NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_policies`
--

INSERT INTO `shipping_policies` (`id`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab \r\nasperiores cupiditate expedita ipsa iste reiciendis repellendus sit? \r\nAdipisci delectus in magnam maiores molestiae nemo nesciunt quia quo \r\nquos vero! Aperiam architecto consequatur doloremque eligendi ex fugit \r\nitaque iure maiores, nulla, numquam odit officia repellendus rerum? \r\nAccusamus dolores, harum ipsam quaerat quod suscipit veritatis \r\nvoluptatum. Eligendi expedita hic maxime non quas qui ratione saepe sint\r\n sit temporibus. Asperiores autem consequuntur dolor doloribus esse, est\r\n et excepturi, exercitationem facere fuga id labore laudantium molestiae\r\n molestias mollitia natus nobis non ratione, sit veniam. Animi beatae \r\neius illo incidunt mollitia numquam quas quia quo!</p>\r\n                       <p>Lorem ipsum dolor sit amet, consectetur \r\nadipisicing elit. Architecto, blanditiis commodi dolorem ducimus, enim \r\nfugiat fugit illo incidunt ipsa iure iusto laudantium officia \r\npraesentium reprehenderit sequi. A ab architecto, consectetur corporis \r\ndignissimos, eligendi fuga hic labore libero minima nam, provident quae \r\nquas quod saepe similique temporibus! Illo labore nihil porro?    </p>\r\n                       <p>Lorem ipsum dolor sit amet, consectetur \r\nadipisicing elit. In nisi qui sequi tenetur voluptatibus voluptatum. Ad \r\naperiam atque beatae cum deleniti distinctio dolorum eius eos est \r\nexpedita fugit harum, incidunt ipsam molestiae mollitia nostrum qui \r\nquibusdam rem sapiente soluta velit veritatis vero voluptatem? \r\nDoloremque ducimus error vel. Ad architecto at dolorem dolorum eligendi \r\nexplicabo impedit ipsam, laudantium nemo praesentium provident qui rem \r\nrerum sapiente veniam vero voluptatem. Eveniet excepturi facilis nemo \r\nvelit voluptatum. Aliquid odit quas, reiciendis sint velit voluptatibus?</p><p></p>', 1, '2024-01-15 23:02:51', '2024-01-15 23:02:51'),
(2, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab \r\nasperiores cupiditate expedita ipsa iste reiciendis repellendus sit? \r\nAdipisci delectus in magnam maiores molestiae nemo nesciunt quia quo \r\nquos vero! Aperiam architecto consequatur doloremque eligendi ex fugit \r\nitaque iure maiores, nulla, numquam odit officia repellendus rerum? \r\nAccusamus dolores, harum ipsam quaerat quod suscipit veritatis \r\nvoluptatum. Eligendi expedita hic maxime non quas qui ratione saepe sint\r\n sit temporibus. Asperiores autem consequuntur dolor doloribus esse, est\r\n et excepturi, exercitationem facere fuga id labore laudantium molestiae\r\n molestias mollitia natus nobis non ratione, sit veniam. Animi beatae \r\neius illo incidunt mollitia numquam quas quia quo!</p>\r\n                       <p>Lorem ipsum dolor sit amet, consectetur \r\nadipisicing elit. Architecto, blanditiis commodi dolorem ducimus, enim \r\nfugiat fugit illo incidunt ipsa iure iusto laudantium officia \r\npraesentium reprehenderit sequi. A ab architecto, consectetur corporis \r\ndignissimos, eligendi fuga hic labore libero minima nam, provident quae \r\nquas quod saepe similique temporibus! Illo labore nihil porro?    </p>\r\n                       <p>Lorem ipsum dolor sit amet, consectetur \r\nadipisicing elit. In nisi qui sequi tenetur voluptatibus voluptatum. Ad \r\naperiam atque beatae cum deleniti distinctio dolorum eius eos est \r\nexpedita fugit harum, incidunt ipsam molestiae mollitia nostrum qui \r\nquibusdam rem sapiente soluta velit veritatis vero voluptatem? \r\nDoloremque ducimus error vel. Ad architecto at dolorem dolorum eligendi \r\nexplicabo impedit ipsam, laudantium nemo praesentium provident qui rem \r\nrerum sapiente veniam vero voluptatem. Eveniet excepturi facilis nemo \r\nvelit voluptatum. Aliquid odit quas, reiciendis sint velit voluptatibus?</p><p></p>', 1, '2024-01-15 23:10:57', '2024-01-15 23:10:57'),
(3, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab \r\nasperiores cupiditate expedita ipsa iste reiciendis repellendus sit? \r\nAdipisci delectus in magnam maiores molestiae nemo nesciunt quia quo \r\nquos vero! Aperiam architecto consequatur doloremque eligendi ex fugit \r\nitaque iure maiores, nulla, numquam odit officia repellendus rerum? \r\nAccusamus dolores, harum ipsam quaerat quod suscipit veritatis \r\nvoluptatum. Eligendi expedita hic maxime non quas qui ratione saepe sint\r\n sit temporibus. Asperiores autem consequuntur dolor doloribus esse, est\r\n et excepturi, exercitationem facere fuga id labore laudantium molestiae\r\n molestias mollitia natus nobis non ratione, sit veniam. Animi beatae \r\neius illo incidunt mollitia numquam quas quia quo!</p>\r\n                       <p>Lorem ipsum dolor sit amet, consectetur \r\nadipisicing elit. Architecto, blanditiis commodi dolorem ducimus, enim \r\nfugiat fugit illo incidunt ipsa iure iusto laudantium officia \r\npraesentium reprehenderit sequi. A ab architecto, consectetur corporis \r\ndignissimos, eligendi fuga hic labore libero minima nam, provident quae \r\nquas quod saepe similique temporibus! Illo labore nihil porro?    </p>\r\n                       <p>Lorem ipsum dolor sit amet, consectetur \r\nadipisicing elit. In nisi qui sequi tenetur voluptatibus voluptatum. Ad \r\naperiam atque beatae cum deleniti distinctio dolorum eius eos est \r\nexpedita fugit harum, incidunt ipsam molestiae mollitia nostrum qui \r\nquibusdam rem sapiente soluta velit veritatis vero voluptatem? \r\nDoloremque ducimus error vel. Ad architecto at dolorem dolorum eligendi \r\nexplicabo impedit ipsam, laudantium nemo praesentium provident qui rem \r\nrerum sapiente veniam vero voluptatem. Eveniet excepturi facilis nemo \r\nvelit voluptatum. Aliquid odit quas, reiciendis sint velit voluptatibus?</p><p></p>', 1, '2024-01-15 23:11:45', '2024-01-15 23:11:45');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `name`, `code`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Medium', 'M', 'M size is suitable for everyday use, providing a balanced capacity.', 1, '2023-11-13 21:35:17', '2023-11-13 21:35:17'),
(2, 'US 9', '9US', 'Size 9 in US standard, ideal for a comfortable fit for most individuals. For Shoes..', 1, '2023-11-13 21:36:24', '2023-11-13 21:36:24'),
(3, 'Large', 'XL', 'XL menas Extra large', 1, '2023-11-13 21:37:38', '2023-11-13 21:37:38'),
(4, 'Extra Large', 'XXL', 'XXL menas Double Extra large', 1, '2023-11-13 21:38:07', '2023-11-13 21:38:07'),
(5, 'Large Size', 'L', 'L size is designed for a loose and comfortable fit, suitable for various body types.', 1, '2023-11-13 21:40:19', '2023-11-13 21:40:19'),
(6, 'Standard', 'STD', 'Standard size for electronic devices, ensuring compatibility with most accessories.', 1, '2023-11-13 21:40:44', '2023-11-13 21:40:44'),
(7, 'Queen', 'Q', 'Queen size for bedding, providing ample space for a comfortable night\'s sleep.', 1, '2023-11-13 21:42:13', '2023-11-13 21:42:13'),
(8, 'Travel Size', 'TS', 'Compact size for beauty products, perfect for on-the-go use and travel.', 1, '2023-11-13 21:42:41', '2023-11-13 21:42:41'),
(9, 'Small', 'S', 'S size for sports equipment, suitable for beginners and casual enthusiasts.', 1, '2023-11-13 21:43:12', '2023-11-13 21:43:12'),
(10, 'Paperback', 'PB', 'Paperback size for books, providing a lightweight and portable reading experience.', 1, '2023-11-13 21:43:42', '2023-11-13 21:43:42'),
(11, 'Ethnic', 'ETH', 'Ethnic size for traditional wear, capturing the essence of cultural attire.', 1, '2023-11-13 21:44:05', '2023-11-13 21:44:05'),
(12, 'Plus', '+', 'Plus size for mobile phones, offering enhanced features and a larger display.', 1, '2023-11-13 21:44:36', '2023-11-13 21:44:36');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `name`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'School Bag', 'Stylish and practical school bags for students.', 'admin/img/sub-category-img/4449sub_category_school_bag_1.jpg', 1, '2023-11-13 20:35:57', '2023-11-13 20:35:57'),
(2, 1, 'Office Bag', 'Professional office bags for a sophisticated look.', 'admin/img/sub-category-img/8957sub_category_Office_Bag_2.jpg', 1, '2023-11-13 20:36:49', '2023-11-13 20:36:49'),
(3, 2, 'Sneakers', 'Comfortable sneakers for casual and sporty occasions.', 'admin/img/sub-category-img/5623sub_category_Sneakers_1.jpg', 1, '2023-11-13 20:37:58', '2023-11-13 20:37:58'),
(4, 2, 'High Heels', 'Elegant high heels to elevate your style.', 'admin/img/sub-category-img/7345sub_category_High_Heels_1.jpg', 1, '2023-11-13 20:38:35', '2023-11-13 20:38:35'),
(5, 3, 'Casual Wear', 'Trendy and comfortable casual wear for everyday use.', 'admin/img/sub-category-img/4013sub_category_Casual_Wear_1.jpg', 1, '2023-11-13 20:39:33', '2023-11-13 20:39:33'),
(6, 3, 'Formal Attire', 'Sophisticated formal wear for special occasions.', 'admin/img/sub-category-img/7789sub_category_Formal_Attire_1.jpg', 1, '2023-11-13 20:40:17', '2023-11-13 20:40:17'),
(7, 4, 'Smartphones', 'Cutting-edge smartphones with the latest technology.', 'admin/img/sub-category-img/1294sub_category_Smartphones_2.jpg', 1, '2023-11-13 20:41:58', '2023-11-13 20:42:34'),
(8, 4, 'Laptops', 'Powerful laptops for work and entertainment.', 'admin/img/sub-category-img/5859sub_category_Laptops_2.jpg', 1, '2023-11-13 20:43:23', '2023-11-13 20:43:23'),
(9, 5, 'Wall Art', 'Beautiful wall art to enhance your home decor.', 'admin/img/sub-category-img/9044sub_category_Wall_Art_2.jpeg', 1, '2023-11-13 20:44:17', '2023-11-13 20:44:17'),
(10, 5, 'Decorative Pillows', 'Cozy and stylish decorative pillows for your living space.', 'admin/img/sub-category-img/8503sub_category_Decorative_Pillows_1.jpg', 1, '2023-11-13 20:45:24', '2023-11-13 20:45:24'),
(11, 6, 'Skincare', 'Nourishing skincare products for a radiant complexion.', 'admin/img/sub-category-img/7904sub_category_Skincare_1.jpg', 1, '2023-11-13 20:46:21', '2023-11-13 20:46:21'),
(12, 6, 'Makeup', 'High-quality makeup for a flawless look.', 'admin/img/sub-category-img/7809sub_category_Makeup_1.jpg', 1, '2023-11-13 20:47:03', '2023-11-13 20:47:03'),
(13, 7, 'Outdoor Gear', 'Durable outdoor gear for adventurous activities.', 'admin/img/sub-category-img/9509sub_category_Outdoor_Gear_1.jpg', 1, '2023-11-13 20:48:05', '2023-11-13 20:48:05'),
(14, 7, 'Fitness Equipment', 'Quality fitness equipment for a healthy lifestyle.', 'admin/img/sub-category-img/7553sub_category_Fitness_Equipment_2.jpg', 1, '2023-11-13 20:49:01', '2023-11-13 20:49:01'),
(15, 8, 'Fiction', 'Engaging fiction books for your reading pleasure.', 'admin/img/sub-category-img/6104sub_category_Fiction_2.jpg', 1, '2023-11-13 20:49:43', '2023-11-13 20:49:43'),
(16, 8, 'Non-Fiction', 'Informative non-fiction books for knowledge seekers.', 'admin/img/sub-category-img/8815sub_category_Non_Fiction_1.jpg', 1, '2023-11-13 20:50:16', '2023-11-13 20:50:16'),
(17, 9, 'Ethnic Dresses', 'Traditional and elegant ethnic dresses for special occasions.', 'admin/img/sub-category-img/3960sub_category_Ethnic_Dresses_2.jpg', 1, '2023-11-13 20:51:39', '2023-11-13 20:51:39'),
(18, 9, 'Traditional Accessories', 'Accessories to complement your traditional attire.', 'admin/img/sub-category-img/7377sub_category_Traditional_Accessories_3.jpg', 1, '2023-11-13 20:52:18', '2023-11-13 20:52:18'),
(19, 10, 'Android Phones', 'Feature-rich Android smartphones for tech enthusiasts.', 'admin/img/sub-category-img/7563sub_category_Android_Phones_3.jpg', 1, '2023-11-13 20:53:08', '2023-11-13 20:53:08'),
(20, 10, 'iOS Phones', 'Stylish and user-friendly iPhones for Apple enthusiasts.', 'admin/img/sub-category-img/5441sub_category_iOS Phones_2.jpg', 1, '2023-11-13 20:53:47', '2023-11-13 20:53:47');

-- --------------------------------------------------------

--
-- Table structure for table `terms_conditions`
--

CREATE TABLE `terms_conditions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` longtext NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `terms_conditions`
--

INSERT INTO `terms_conditions` (`id`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab \nasperiores cupiditate expedita ipsa iste reiciendis repellendus sit? \nAdipisci delectus in magnam maiores molestiae nemo nesciunt quia quo \nquos vero! Aperiam architecto consequatur doloremque eligendi ex fugit \nitaque iure maiores, nulla, numquam odit officia repellendus rerum? \nAccusamus dolores, harum ipsam quaerat quod suscipit veritatis \nvoluptatum. Eligendi expedita hic maxime non quas qui ratione saepe sint\n sit temporibus. Asperiores autem consequuntur dolor doloribus esse, est\n et excepturi, exercitationem facere fuga id labore laudantium molestiae\n molestias mollitia natus nobis non ratione, sit veniam. Animi beatae \neius illo incidunt mollitia numquam quas quia quo!</p>\n                        <p>Lorem ipsum dolor sit amet, consectetur \nadipisicing elit. Architecto, blanditiis commodi dolorem ducimus, enim \nfugiat fugit illo incidunt ipsa iure iusto laudantium officia \npraesentium reprehenderit sequi. A ab architecto, consectetur corporis \ndignissimos, eligendi fuga hic labore libero minima nam, provident quae \nquas quod saepe similique temporibus! Illo labore nihil porro?    </p>\n                        <p>Lorem ipsum dolor sit amet, consectetur \nadipisicing elit. In nisi qui sequi tenetur voluptatibus voluptatum. Ad \naperiam atque beatae cum deleniti distinctio dolorum eius eos est \nexpedita fugit harum, incidunt ipsam molestiae mollitia nostrum qui \nquibusdam rem sapiente soluta velit veritatis vero voluptatem? \nDoloremque ducimus error vel. Ad architecto at dolorem dolorum eligendi \nexplicabo impedit ipsam, laudantium nemo praesentium provident qui rem \nrerum sapiente veniam vero voluptatem. Eveniet excepturi facilis nemo \nvelit voluptatum. Aliquid odit quas, reiciendis sint velit voluptatibus?</p><p></p>', 1, '2024-01-15 23:28:01', '2024-01-15 23:28:01'),
(2, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab \r\nasperiores cupiditate expedita ipsa iste reiciendis repellendus sit? \r\nAdipisci delectus in magnam maiores molestiae nemo nesciunt quia quo \r\nquos vero! Aperiam architecto consequatur doloremque eligendi ex fugit \r\nitaque iure maiores, nulla, numquam odit officia repellendus rerum? \r\nAccusamus dolores, harum ipsam quaerat quod suscipit veritatis \r\nvoluptatum. Eligendi expedita hic maxime non quas qui ratione saepe sint\r\n sit temporibus. Asperiores autem consequuntur dolor doloribus esse, est\r\n et excepturi, exercitationem facere fuga id labore laudantium molestiae\r\n molestias mollitia natus nobis non ratione, sit veniam. Animi beatae \r\neius illo incidunt mollitia numquam quas quia quo!</p>\r\n                        <p>Lorem ipsum dolor sit amet, consectetur \r\nadipisicing elit. Architecto, blanditiis commodi dolorem ducimus, enim \r\nfugiat fugit illo incidunt ipsa iure iusto laudantium officia \r\npraesentium reprehenderit sequi. A ab architecto, consectetur corporis \r\ndignissimos, eligendi fuga hic labore libero minima nam, provident quae \r\nquas quod saepe similique temporibus! Illo labore nihil porro?    </p>\r\n                        <p>Lorem ipsum dolor sit amet, consectetur \r\nadipisicing elit. In nisi qui sequi tenetur voluptatibus voluptatum. Ad \r\naperiam atque beatae cum deleniti distinctio dolorum eius eos est \r\nexpedita fugit harum, incidunt ipsam molestiae mollitia nostrum qui \r\nquibusdam rem sapiente soluta velit veritatis vero voluptatem? \r\nDoloremque ducimus error vel. Ad architecto at dolorem dolorum eligendi \r\nexplicabo impedit ipsam, laudantium nemo praesentium provident qui rem \r\nrerum sapiente veniam vero voluptatem. Eveniet excepturi facilis nemo \r\nvelit voluptatum. Aliquid odit quas, reiciendis sint velit voluptatibus?</p><p></p>', 1, '2024-01-15 23:35:48', '2024-01-15 23:35:48'),
(3, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab \r\nasperiores cupiditate expedita ipsa iste reiciendis repellendus sit? \r\nAdipisci delectus in magnam maiores molestiae nemo nesciunt quia quo \r\nquos vero! Aperiam architecto consequatur doloremque eligendi ex fugit \r\nitaque iure maiores, nulla, numquam odit officia repellendus rerum? \r\nAccusamus dolores, harum ipsam quaerat quod suscipit veritatis \r\nvoluptatum. Eligendi expedita hic maxime non quas qui ratione saepe sint\r\n sit temporibus. Asperiores autem consequuntur dolor doloribus esse, est\r\n et excepturi, exercitationem facere fuga id labore laudantium molestiae\r\n molestias mollitia natus nobis non ratione, sit veniam. Animi beatae \r\neius illo incidunt mollitia numquam quas quia quo!</p>\r\n                        <p>Lorem ipsum dolor sit amet, consectetur \r\nadipisicing elit. Architecto, blanditiis commodi dolorem ducimus, enim \r\nfugiat fugit illo incidunt ipsa iure iusto laudantium officia \r\npraesentium reprehenderit sequi. A ab architecto, consectetur corporis \r\ndignissimos, eligendi fuga hic labore libero minima nam, provident quae \r\nquas quod saepe similique temporibus! Illo labore nihil porro?    </p>\r\n                        <p>Lorem ipsum dolor sit amet, consectetur \r\nadipisicing elit. In nisi qui sequi tenetur voluptatibus voluptatum. Ad \r\naperiam atque beatae cum deleniti distinctio dolorum eius eos est \r\nexpedita fugit harum, incidunt ipsam molestiae mollitia nostrum qui \r\nquibusdam rem sapiente soluta velit veritatis vero voluptatem? \r\nDoloremque ducimus error vel. Ad architecto at dolorem dolorum eligendi \r\nexplicabo impedit ipsam, laudantium nemo praesentium provident qui rem \r\nrerum sapiente veniam vero voluptatem. Eveniet excepturi facilis nemo \r\nvelit voluptatum. Aliquid odit quas, reiciendis sint velit voluptatibus?</p><p><br></p><p></p>', 1, '2024-01-15 23:38:26', '2024-01-15 23:38:26'),
(4, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab \r\nasperiores cupiditate expedita ipsa iste reiciendis repellendus sit? \r\nAdipisci delectus in magnam maiores molestiae nemo nesciunt quia quo \r\nquos vero! Aperiam architecto consequatur doloremque eligendi ex fugit \r\nitaque iure maiores, nulla, numquam odit officia repellendus rerum? \r\nAccusamus dolores, harum ipsam quaerat quod suscipit veritatis \r\nvoluptatum. Eligendi expedita hic maxime non quas qui ratione saepe sint\r\n sit temporibus. Asperiores autem consequuntur dolor doloribus esse, est\r\n et excepturi, exercitationem facere fuga id labore laudantium molestiae\r\n molestias mollitia natus nobis non ratione, sit veniam. Animi beatae \r\neius illo incidunt mollitia numquam quas quia quo!</p>\r\n                        <p>Lorem ipsum dolor sit amet, consectetur \r\nadipisicing elit. Architecto, blanditiis commodi dolorem ducimus, enim \r\nfugiat fugit illo incidunt ipsa iure iusto laudantium officia \r\npraesentium reprehenderit sequi. A ab architecto, consectetur corporis \r\ndignissimos, eligendi fuga hic labore libero minima nam, provident quae \r\nquas quod saepe similique temporibus! Illo labore nihil porro?    </p>\r\n                        <p>Lorem ipsum dolor sit amet, consectetur \r\nadipisicing elit. In nisi qui sequi tenetur voluptatibus voluptatum. Ad \r\naperiam atque beatae cum deleniti distinctio dolorum eius eos est \r\nexpedita fugit harum, incidunt ipsam molestiae mollitia nostrum qui \r\nquibusdam rem sapiente soluta velit veritatis vero voluptatem? \r\nDoloremque ducimus error vel. Ad architecto at dolorem dolorum eligendi \r\nexplicabo impedit ipsam, laudantium nemo praesentium provident qui rem \r\nrerum sapiente veniam vero voluptatem. Eveniet excepturi facilis nemo \r\nvelit voluptatum. Aliquid odit quas, reiciendis sint velit voluptatibus?</p><p><br></p><p></p>', 1, '2024-01-15 23:50:05', '2024-01-15 23:50:05');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `code`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Pieces', 'P_01', 'If you are going to buy bags, you should buy in quantity as per piece.', 1, '2023-11-13 21:28:41', '2023-11-13 21:28:41'),
(2, 'Pairs', 'PA_01', 'Shoes are typically sold in pairs for a complete set.', 1, '2023-11-13 21:29:14', '2023-11-13 21:29:14'),
(3, 'Apparel', 'A_01', 'Clothing items such as shirts, pants, and dresses.', 1, '2023-11-13 21:29:41', '2023-11-13 21:29:41'),
(4, 'Units', 'U_01', 'Electronic gadgets and devices sold individually.', 1, '2023-11-13 21:30:13', '2023-11-13 21:30:13'),
(5, 'Items', 'I_01', 'Individual beauty products for personal care.', 1, '2023-11-13 21:31:12', '2023-11-13 21:31:12'),
(6, 'Number', 'No.', 'Quantity as Number', 1, '2023-11-13 21:32:14', '2023-11-13 21:32:14'),
(7, 'Sets', 'S_01', 'Sports equipment and outdoor gear sold in sets.', 1, '2023-11-13 21:32:41', '2023-11-13 21:32:41'),
(8, 'Copies', 'C_01', 'Books sold as individual copies for reading pleasure.', 1, '2023-11-13 21:33:08', '2023-11-13 21:33:08'),
(9, 'Garments', 'G_01', 'Traditional clothing items sold individually.', 1, '2023-11-13 21:33:33', '2023-11-13 21:33:33'),
(10, 'Devices', 'D_01', 'Individual mobile phones with the latest technology.', 1, '2023-11-13 21:34:02', '2023-11-13 21:34:02');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `role` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`, `mobile`, `role`) VALUES
(1, 'Super Admin', 'admin@gmail.com', NULL, '$2y$10$JOfXtnab30iWA4.NdninReVYQjyDdR1/92FG8KDHa4pNS0hK/pmeC', NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-13 00:45:45', '2023-11-13 00:45:45', NULL, '0'),
(3, 'jehyl a', 'qutaboc@mailinator.com', NULL, '$2y$10$gLhGKEGnNzPHdqLm0OVkQe8tri4rVVezQmwCGXeMI1bll2u9ojoaG', NULL, NULL, NULL, NULL, NULL, 'admin/img/admin-user-img/1703588356.jpg', '2023-12-26 04:59:16', '2023-12-26 05:56:29', '18', '2'),
(4, 'monayem', 'monayem1231@gmail.com', NULL, '$2y$10$FsqqWVR5WJPfJVU1HuwSEOAvEgbXQeySsrr9W2rriWkK9r.Fawg9a', NULL, NULL, NULL, NULL, NULL, 'admin/img/admin-user-img/1703752406.jpg', '2023-12-28 02:33:26', '2023-12-28 02:33:26', '01756064943', '3');

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `date_of_birth` text DEFAULT NULL,
  `blood_group` varchar(255) DEFAULT NULL,
  `nid` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `vendor_label` varchar(255) NOT NULL DEFAULT 'Executive',
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `name`, `mobile`, `email`, `password`, `address`, `image`, `date_of_birth`, `blood_group`, `nid`, `district`, `vendor_label`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Talha', '0176565656', 'talha@gmail.com', '$2y$10$PPW9sixjQynjnyr9TlRc9OFFsiry6Bf2WrxojJFtTRhnm1wp4UNye', NULL, NULL, NULL, NULL, NULL, NULL, 'Executive', 0, '2024-01-16 03:26:12', '2024-01-16 03:26:12'),
(2, 'Snigdho', '0175462666', 'snigdho@gmail.com', '$2y$10$SXHhjHKgERrhb.MZf3FTqugrtZKUcJ9nl7tbpgp0tyeGX6Ocrb5He', NULL, NULL, NULL, NULL, NULL, NULL, 'Executive', 0, '2024-01-18 03:17:24', '2024-01-18 03:17:24'),
(5, 'alif', '01545464641616', 'alif@gmail.com', '$2y$10$As6OJWp7VusOZRqsv2bZRu24EaWqqcj5P6tGM8nxLE0QaC0Y5WFT.', 'Malibag,Dhaka', 'admin/img/vendor/14737.jpeg', '05/29/2000', 'B+', '6925125245745775', 'Dhaka', 'Executive', 0, '2024-01-18 03:21:12', '2024-02-11 21:57:42');

-- --------------------------------------------------------

--
-- Table structure for table `wish_lists`
--

CREATE TABLE `wish_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date` text NOT NULL,
  `timestamp` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wish_lists`
--

INSERT INTO `wish_lists` (`id`, `customer_id`, `product_id`, `date`, `timestamp`, `status`, `created_at`, `updated_at`) VALUES
(1, 8, 10, '2023-12-19', '1702944000', 1, '2023-12-19 05:14:16', '2023-12-19 05:14:16'),
(2, 8, 9, '2023-12-19', '1702944000', 1, '2023-12-19 05:14:31', '2023-12-19 05:14:31'),
(3, 7, 5, '2023-12-20', '1703030400', 1, '2023-12-20 12:40:23', '2023-12-20 12:40:23'),
(4, 8, 18, '2024-02-12', '1707696000', 1, '2024-02-11 22:29:31', '2024-02-11 22:29:31'),
(7, 8, 21, '2024-02-12', '1707696000', 1, '2024-02-12 00:46:39', '2024-02-12 00:46:39'),
(9, 8, 17, '2024-02-12', '1707696000', 1, '2024-02-12 00:56:30', '2024-02-12 00:56:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_name_unique` (`name`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `colors_name_unique` (`name`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `couriers`
--
ALTER TABLE `couriers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `couriers_email_unique` (`email`),
  ADD UNIQUE KEY `couriers_mobile_unique` (`mobile`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`),
  ADD UNIQUE KEY `customers_mobile_unique` (`mobile`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `privacy_policies`
--
ALTER TABLE `privacy_policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_colors`
--
ALTER TABLE `product_colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_offers`
--
ALTER TABLE `product_offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_sizes`
--
ALTER TABLE `product_sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_guides`
--
ALTER TABLE `purchase_guides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `return_policies`
--
ALTER TABLE `return_policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_policies`
--
ALTER TABLE `shipping_policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sizes_name_unique` (`name`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terms_conditions`
--
ALTER TABLE `terms_conditions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `units_name_unique` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vendors_mobile_unique` (`mobile`),
  ADD UNIQUE KEY `vendors_email_unique` (`email`);

--
-- Indexes for table `wish_lists`
--
ALTER TABLE `wish_lists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `couriers`
--
ALTER TABLE `couriers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `privacy_policies`
--
ALTER TABLE `privacy_policies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `product_colors`
--
ALTER TABLE `product_colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `product_offers`
--
ALTER TABLE `product_offers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_sizes`
--
ALTER TABLE `product_sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `purchase_guides`
--
ALTER TABLE `purchase_guides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `return_policies`
--
ALTER TABLE `return_policies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shipping_policies`
--
ALTER TABLE `shipping_policies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `terms_conditions`
--
ALTER TABLE `terms_conditions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wish_lists`
--
ALTER TABLE `wish_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
