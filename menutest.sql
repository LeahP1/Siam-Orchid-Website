-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2023 at 10:53 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `menutest`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `name`, `description`, `price`, `quantity`) VALUES
(174, 'Diet Coke', 'Can Soda ', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `menu_3`
--

CREATE TABLE `menu_3` (
  `COL 1` int(3) DEFAULT NULL,
  `COL 2` varchar(50) DEFAULT NULL,
  `COL 3` decimal(4,2) DEFAULT NULL,
  `COL 4` varchar(154) DEFAULT NULL,
  `COL 5` varchar(28) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu_3`
--

INSERT INTO `menu_3` (`COL 1`, `COL 2`, `COL 3`, `COL 4`, `COL 5`) VALUES
(1, 'Vegetarian', '15.00', 'Sauteed vegetables. Vegetable roll and 3 pcs. of vegetable nigiri.', 'Japanese Lunch Specials'),
(2, 'Sushi Combo', '16.00', 'California rolls and 6 pcs. of nigiri.', 'Japanese Lunch Specials'),
(3, 'Sushi & Sashimi Combo', '16.00', '5 pcs. of California roll. 3 pcs. of nigiri and 6 pcs. of sashimi.', 'Japanese Lunch Specials'),
(4, 'Hosomaki Combo', '15.00', '5 pcs. of California roll. 5 pcs. of J.B. roll and a Tuna roll.', 'Japanese Lunch Specials'),
(5, 'Chicken Teriyaki & Sushi Combo', '16.00', '5 pcs. of California roll and 3 pcs. of nigiri.', 'Japanese Lunch Specials'),
(6, 'Steak Teriyaki & Sushi Combo', '16.00', '5 pcs. of California roll and 3 pcs. of nigiri.', 'Japanese Lunch Specials'),
(7, 'Salmon Teriyaki & Sushi Combo', '16.00', '5 pcs. of California roll and 3 pcs. of nigiri.', 'Japanese Lunch Specials'),
(8, 'Love Roll Combo', '15.00', '5 pcs. of Spicy Crab roll. 5 pcs. 15 of Spicy Tuna roll and 5 pcs. of California roll.', 'Japanese Lunch Specials'),
(9, 'Sashimi Combo', '18.00', '12 pcs. of sashimi with sushi rice.', 'Japanese Lunch Specials'),
(10, 'Sashimi & Unazyu Set', '19.00', '6 pcs. of sashimi. grilled eel over sushi rice and seaweed salad.', 'Japanese Lunch Specials'),
(11, 'Sushi Thai Combo', '16.00', '5 pcs. of California roll 3 pcs. of nigiri and chicken Pad Thai.', 'Japanese Lunch Specials'),
(12, 'Unagi Don', '17.00', 'Grilled eel on a bed of sushi rice.', 'Japanese Lunch Specials'),
(13, 'Tuna Don', '16.00', 'Slice of red tuna on a bed of sushi rice.', 'Japanese Lunch Specials'),
(14, 'Chicken Fried Rice & Sushi Combo', '15.00', '5 pcs. of Spicy Crunchy Crab Roll and 4 pcs. of super Crunch.', 'Japanese Lunch Specials'),
(15, 'Chicken Pad See Eauw & Sushi Combo', '15.00', '5 pcs. of shrimp Tempura Roll and 3 pcs. of Fried Gyoza.', 'Japanese Lunch Specials'),
(16, 'Chicken Tempura & Sushi Combo', '16.00', '5 pcs. of California Roll and 3 pcs. of nigiri.', 'Japanese Lunch Specials'),
(17, '3 Healthy Rolls', '13.00', 'Avocado Roll. Cucumber Roll and Jen Roll (Cucumber. avocado. cream cheese)', 'Japanese Lunch Specials'),
(18, 'Volcano Chicken & Sushi Combo', '16.00', 'A California rolls and 3 pcs. of nigiri.', 'Japanese Lunch Specials'),
(19, ' Fried Jumbo Shrimp & Sushi Combo', '17.00', '5 pcs. of California Roll and 5 pcs. of Spicy Crunchy Crab Roll.', 'Japanese Lunch Specials'),
(20, 'Panang Curry Salmon & Sushi Combo', '16.00', '5 pcs. of Shrimp Tempura Roll and 3 pcs. of sushi (shrimp. crab. spicy crab basket).', 'Japanese Lunch Specials'),
(21, 'Chicken Pad Lo-Mein & Sushi Combo', '16.00', '10 pcs. of Orlando Roll and Chicken Pad Lo-Mein.', 'Japanese Lunch Specials'),
(22, 'Chicken or Shrimp Teriyaki', '13.00', 'Grilled with teriyaki sauce. Served with steamed white rice (Substitute brown rice for $1 extra or $3 for fried rice)', 'Teriyaki'),
(23, 'Steak or Salmon Teriyaki', '14.00', 'Grilled with teriyaki sauce. Served with steamed white rice (Substitute brown rice for $1 extra or $3 for fried rice)', 'Teriyaki'),
(24, 'Chicken Katsu ', '14.00', 'Grilled with teriyaki sauce. Served with steamed white rice (Substitute brown rice for $1 extra or $3 for fried rice)', 'Teriyaki'),
(25, 'Lightly battered and fried chicken', '14.00', 'Grilled with teriyaki sauce. Served with steamed white rice (Substitute brown rice for $1 extra or $3 for fried rice)', 'Teriyaki'),
(26, 'Mixed Vegetables or Tofu.', '11.00', 'All lunch specials are served with steamed white rice (Substitute brown rice for $1 extra or $3 for fried rice', 'Thai Lunch Specials'),
(27, 'Chicken or Pork.', '11.00', 'All lunch specials are served with steamed white rice (Substitute brown rice for $1 extra or $3 for fried rice', 'Thai Lunch Specials'),
(28, 'Shrimp. Squid or Beef', '13.00', 'All lunch specials are served with steamed white rice (Substitute brown rice for $1 extra or $3 for fried rice', 'Thai Lunch Specials'),
(29, 'Duck', '13.00', 'All lunch specials are served with steamed white rice (Substitute brown rice for $1 extra or $3 for fried rice', 'Thai Lunch Specials'),
(30, 'Fish ', '13.00', 'All lunch specials are served with steamed white rice (Substitute brown rice for $1 extra or $3 for fried rice', 'Thai Lunch Specials'),
(31, 'Seafood (Shrimp. Squid. Fish. Mussels)', '15.00', 'All lunch specials are served with steamed white rice (Substitute brown rice for $1 extra or $3 for fried rice', 'Thai Lunch Specials'),
(32, 'Combo (Chicken. Pork. Beef)', '15.00', 'All lunch specials are served with steamed white rice (Substitute brown rice for $1 extra or $3 for fried rice', 'Thai Lunch Specials'),
(33, 'Pineapple Duck', '13.00', 'Crispy duck with special pineapple sauce and sautéed spinach.', 'Thai Lunch Specials'),
(34, 'Grilled Salmon Asparagus', '13.00', 'Grilled salmon topped with sautéed asparagus. bell peppers. onions. scallions. and carrots with spicy red sauce.', 'Thai Lunch Specials'),
(35, 'Coke', '1.50', 'Can Soda ', 'Beverages'),
(36, 'Diet Coke', '1.50', 'Can Soda ', 'Beverages'),
(37, 'Sprite', '1.50', 'Can Soda ', 'Beverages'),
(38, 'Orange Soda', '1.50', 'Can Soda ', 'Beverages'),
(39, 'Root Beer', '1.50', 'Can Soda ', 'Beverages'),
(40, 'Lemonade', '1.50', 'Can Soda ', 'Beverages'),
(41, 'Dr. Pepper', '1.50', 'Can Soda ', 'Beverages'),
(42, 'Ginger Ale', '1.50', 'Can Soda ', 'Beverages'),
(43, 'Apple', '1.50', 'Juice', 'Beverages'),
(44, 'Orange', '1.50', 'Juice ', 'Beverages'),
(45, 'Iced Tea - Free Refills', '2.00', 'Tea', 'Beverages'),
(46, 'Thai Iced Tea', '4.00', 'Tea', 'Beverages'),
(47, 'Thai Ice Coffee', '4.00', 'Coffee', 'Beverages'),
(48, 'Hot Tea per Cup - Free Refills', '2.00', 'Tea', 'Beverages'),
(49, 'Perrier', '3.00', 'Perrier', 'Beverages'),
(50, 'Bottled Water', '2.00', 'Water', 'Beverages'),
(51, 'Pinot Grigio', '5.00', 'House Wine', 'Beverages'),
(52, 'Chardonnay', '5.00', 'House Wine', 'Beverages'),
(53, 'Sauvignon Blanc', '5.00', 'House Wine', 'Beverages'),
(54, 'White Zinfandel', '5.00', 'House Wine', 'Beverages'),
(55, 'Merlot', '5.00', 'House Wine', 'Beverages'),
(56, 'Cabernet Sauvignon', '5.00', 'House Wine', 'Beverages'),
(57, 'Plum Wine', '5.00', 'House Wine', 'Beverages'),
(58, 'Hot Sake Small', '5.00', 'Sake', 'Beverages'),
(59, 'Hot Sake Large', '9.00', 'Sake', 'Beverages'),
(60, 'Siam Sake Bomb ', '14.00', 'Sake', 'Beverages'),
(61, 'Singha. Thailand (12 oz.)', '5.00', 'Imported Beer', 'Beverages'),
(62, 'Chang. Thailand (12 oz.)', '5.00', 'Imported Beer', 'Beverages'),
(63, 'Kirin Ichiban. Japan (12 oz.)', '5.00', 'Imported Beer', 'Beverages'),
(64, 'Kirin Light. Japan (12 oz.)', '5.00', 'Imported Beer', 'Beverages'),
(65, 'Sapporo. Japan (12 oz.)', '5.00', 'Imported Beer', 'Beverages'),
(66, 'Asahi. Japan (12 oz.)', '5.00', 'Imported Beer', 'Beverages'),
(67, 'Tsingtao. China (12 oz.)', '5.00', 'Imported Beer', 'Beverages'),
(68, 'Heineken. Holland (12 oz.)', '5.00', 'Imported Beer', 'Beverages'),
(69, 'Corona. Mexico (12 oz.)', '5.00', 'Imported Beer', 'Beverages'),
(70, 'Budweiser / Bud Light', '3.50', 'Domestic Beer', 'Beverages'),
(71, 'Coors Light', '3.50', 'Domestic Beer', 'Beverages'),
(72, 'Miller Lite', '3.50', 'Domestic Beer', 'Beverages'),
(73, 'Michelob Ultra / Michelob Light ', '3.50', 'Domestic Beer', 'Beverages'),
(74, 'Thai Spring Roll', '6.00', 'Vegetables with clear noodles in a crispy roll with sweet plum sauce.', 'Appetizers'),
(75, 'Summer Roll', '7.00', 'Shrimp. lettuce. carrots. bean sprouts and basil leaves wrapped in rice paper served with special sauce.', 'Appetizers'),
(76, 'Crab Rangoon', '7.00', 'Crab and cream cheese in a fried wonton shell with a sweet chili sauce.', 'Appetizers'),
(77, 'Chicken Satay', '9.00', 'Thai BBQ served with peanut sauce and cucumber salad.', 'Appetizers'),
(78, 'Crispy Squid', '8.00', 'Squid lightly breaded and deep fried with a sweet chili sauce.', 'Appetizers'),
(79, 'Fried Tofu', '7.00', 'Deep fried tofu served with a sweet chili sauce.', 'Appetizers'),
(80, 'Yum Woon Sen', '10.00', 'Clear noodles. shrimp. red onions. tomato. and scallions. mixed with lime juice and Thai chili paste.', 'Appetizers'),
(81, 'Yum (Spicy Salad) Beef', '11.00', 'Onions. scallions. tomato. cucumbers. and carrots mixed with Thai chili paste and lime juice with Beef.', 'Appetizers'),
(82, 'Yum (Spicy Salad) Shrimp', '10.00', 'Onions. scallions. tomato. cucumbers. and carrots mixed with Thai chili paste and lime juice with Shrimp.', 'Appetizers'),
(83, 'Yum (Spicy Salad) Squid', '10.00', 'Onions. scallions. tomato. cucumbers. and carrots mixed with Thai chili paste and lime juice with Squid.', 'Appetizers'),
(84, 'Yum (Spicy Salad) Seafood (Shrimp. Squid. Mussels)', '12.00', 'Onions. scallions. tomato. cucumbers. and carrots mixed with Thai chili paste and lime juice with Seafood (Shrimp. Squid. Mussels).', 'Appetizers'),
(85, 'Tiger Tears', '11.00', 'Tender sliced beef in a spicy mixture of lime. chili peppers. red onions. scallions and crushed roasted rice. Served with fresh basil leaves.', 'Appetizers'),
(86, 'Spicy Conch', '12.00', 'Conch and cucumbers in spicy sauce.\r', 'Appetizers'),
(87, 'Spicy Octopus', '12.00', 'Octopus and cucumbers in spicy sauce.\r', 'Appetizers'),
(88, 'Spicy Squid', '12.00', 'Squid and cucumbers in spicy sauce.\r', 'Appetizers'),
(89, 'Spicy Tuna Salad', '13.00', 'Tuna sliced with cucumbers. avocado and kimchee sauce.', 'Appetizers'),
(90, 'Spicy Crab Salad', '10.00', 'Mixed crab with spicy mayo. masago on bed of cucumber and carrot topped with tempura flakes and eel sauce.', 'Appetizers'),
(91, 'Tuna Tataki', '14.00', 'Tuna cooked rare. thinly sliced with ponzu sauce.', 'Appetizers'),
(92, 'Sushi Appetizer (5 pcs)', '11.00', 'Crab. shrimp. tuna. tilapia. and salmon.', 'Appetizers'),
(93, 'Edamame', '6.00', 'Steamed Soybeans with a sprinkle of salt.', 'Appetizers'),
(94, 'Dynamite Appetizer', '10.00', 'Baked mixed seafood on bed of rice with eel sauce.', 'Appetizers'),
(95, 'Gyoza', '7.00', 'Deep fried or steamed pork dumpling with ponzu sauce.', 'Appetizers'),
(96, 'Shumai Pork or Shrimp', '7.00', 'Deep fried or steamed dumpling with ponzu sauce.\r', 'Appetizers'),
(97, 'Mixed Dim Sum', '8.00', 'Steamed assorted pork and shrimp dumpling with ponzu sauce.', 'Appetizers'),
(98, 'Soft Shell Crab', '12.00', 'Fried Soft shell crab with ponzu sauce.', 'Appetizers'),
(99, 'Miso Soup Small', '3.00', 'Delicate broth with miso. tofu. scallions and seaweed. Small', 'Soups'),
(100, 'Miso Soup Large', '5.00', 'Delicate broth with miso. tofu. scallions and seaweed. Large', 'Soups'),
(101, 'Vegtable Miso Soup Small', '6.00', 'Mixed vegetables in miso broth. Small', 'Soups'),
(102, 'Vegetable Miso Soup Large', '11.00', 'Mixed vegetables in miso broth. Large', 'Soups'),
(103, 'Wonton Soup Small', '6.00', 'Chicken wontons and vegetables in chicken broth. Small', 'Soups'),
(104, 'Wonton Soup Large', '11.00', 'Chicken wontons and vegetables in chicken broth. Large', 'Soups'),
(105, 'Fish Soup Small', '6.00', 'Tilapia and mixed vegetables in miso broth. Small', 'Soups'),
(106, 'Fish Soup Large', '11.00', 'Tilapia and mixed vegetables in miso broth. Large', 'Soups'),
(107, 'Mixed Vegetable Soup Small', '6.00', 'Mixed vegetables in chicken broth with a sprinkle of roasted garlic. Small', 'Soups'),
(108, 'Mixed Vegetable Soup Large', '11.00', 'Mixed vegetables in chicken broth with a sprinkle of roasted garlic.. Large', 'Soups'),
(109, 'Tofu Soup Small', '6.00', 'Tofu with mixed vegetables and clear noodles in chicken broth. Small', 'Soups'),
(110, 'Tofu Soup Large', '11.00', 'Tofu with mixed vegetables and clear noodles in chicken broth. Large', 'Soups'),
(111, 'Tom Yum Gai Small', '6.00', 'Chicken with Thai chili paste. lemongrass. tomato. mushrooms. scallions. and lime juice. Small', 'Soups'),
(112, 'Tom Yum Gai Large', '12.00', 'Chicken with Thai chili paste. lemongrass. tomato. mushrooms. scallions. and lime juice. Large', 'Soups'),
(113, 'Tom Kha Goong Small', '7.00', 'Shrimp with Thai chili paste. lemongrass. scallions. tomato. mushrooms. lime juice and coconut milk. Small', 'Soups'),
(114, 'Tom Kha Goong Large', '13.00', 'Shrimp with Thai chili paste. lemongrass. scallions. tomato. mushrooms. lime juice and coconut milk. Large', 'Soups'),
(115, 'Tom Yum Coong Small', '7.00', 'Shrimp with Thai chili paste. lemongrass. tomato. mushrooms. scallions. and lime juice. Small', 'Soups'),
(116, 'Tom Yum Coong Large', '13.00', 'Shrimp with Thai chili paste. lemongrass. tomato. mushrooms. scallions. and lime juice. Large', 'Soups'),
(117, 'Tom Yum Talay Small', '7.00', 'Mixed seafood (shrimp. squid. fish. mussels) with Thai chili paste. lemongrass. tomato. mushrooms. scallions. and lime juice. Small', 'Soups'),
(118, 'Tom Yum Talay Large', '13.00', 'Mixed seafood (shrimp. squid. fish. mussels) with Thai chili paste. lemongrass. tomato. mushrooms. scallions. and lime juice. Large', 'Soups'),
(119, 'Tom Kha Gai Small', '7.00', 'Chicken with Thai chili paste. lemongrass. tomato. mushrooms. scallions. lime juice and coconut milk. Small', 'Soups'),
(120, 'Tom Kha Gai Large', '13.00', 'Chicken with Thai chili paste. lemongrass. tomato. mushrooms. scallions. lime juice and coconut milk. Large', 'Soups'),
(121, 'Green Salad', '3.50', 'Small green salad with ginger dressing.', 'Salads'),
(122, 'Thai Salad  ', '7.00', 'Fresh house salad served with Thai peanut dressing.', 'Salads'),
(123, 'Hiyashi Wakame', '6.00', 'Cold seaweed salad.', 'Salads'),
(124, 'Seafood Salad', '13.00', 'Fresh green salad with shrimp. crab. avocado. asparagus. and seaweed salad.\r', 'Salads'),
(125, 'Sashimi Salad', '15.00', 'Fresh green salad with thinly sliced tuna. salmon and escolar with special dressing.', 'Salads'),
(126, 'Mixed Vegetables or Tofu Fried Rice', '14.00', 'All Fried Rice include egg. Substitute brown rice for $2 extra.\r', 'Freid Rice'),
(127, 'Chicken or Pork', '15.00', 'All Fried Rice include egg. Substitute brown rice for $2 extra.\r', 'Freid Rice'),
(128, 'Shrimp. Squid or Beef', '17.00', 'All Fried Rice include egg. Substitute brown rice for $2 extra.\r', 'Freid Rice'),
(129, 'Combo (Chicken. Pork. Beef) ', '19.00', 'All Fried Rice include egg. Substitute brown rice for $2 extra.\r', 'Freid Rice'),
(130, 'Mixed Seafood (Shrimp. Squid/. Fish. Mussels)', '19.00', 'All Fried Rice include egg. Substitute brown rice for $2 extra.\r', 'Freid Rice'),
(131, 'Mixed Vegetables or Tofu', '14.00', 'Noodles', 'Noodle Entrees'),
(132, 'Chicken or Pork', '16.00', 'Noodles', 'Noodle Entrees'),
(133, 'Shrimp. Squid or Beef', '18.00', 'Noodles', 'Noodle Entrees'),
(134, 'Mixed Seafood (Shrimp. Squid. Fish. Mussels)', '20.00', 'Noodles', 'Noodle Entrees'),
(135, 'Combo (Pork. Chicken. Beef)', '20.00', 'Noodles', 'Noodle Entrees'),
(136, 'Mixed Vegetables or Tofu', '14.00', 'All dinners are served with steamed white rice (Substitute brown rice for $2 extra or $3 for fried rice).', 'Stir-fry Entrees'),
(137, 'Chicken or Pork', '16.00', 'All dinners are served with steamed white rice (Substitute brown rice for $2 extra or $3 for fried rice).', 'Stir-fry Entrees'),
(138, 'Shrimp. Squid or Beef', '18.00', 'All dinners are served with steamed white rice (Substitute brown rice for $2 extra or $3 for fried rice).', 'Stir-fry Entrees'),
(139, 'Mixed Seafood (Shrimp. Squid. Fish. Mussels) ', '20.00', 'All dinners are served with steamed white rice (Substitute brown rice for $2 extra or $3 for fried rice).', 'Stir-fry Entrees'),
(140, 'Combo (Pork. Chicken. Beef)', '20.00', 'All dinners are served with steamed white rice (Substitute brown rice for $2 extra or $3 for fried rice).', 'Stir-fry Entrees'),
(141, 'Mixed Vegetables or Tofu', '14.00', 'All dinners are served with steamed white rice (Substitute brown rice for $2 extra or $3 for fried rice).', 'Curry Dishes'),
(142, 'Chicken or Pork', '16.00', 'All dinners are served with steamed white rice (Substitute brown rice for $2 extra or $3 for fried rice).', 'Curry Dishes'),
(143, 'Shrimp. Squid or Beef', '18.00', 'All dinners are served with steamed white rice (Substitute brown rice for $2 extra or $3 for fried rice).', 'Curry Dishes'),
(144, 'Mixed Seafood (Shrimp. Squid. Fish. Mussels) ', '20.00', 'All dinners are served with steamed white rice (Substitute brown rice for $2 extra or $3 for fried rice).', 'Curry Dishes'),
(145, 'Combo (Pork. Chicken. Beef)', '20.00', 'All dinners are served with steamed white rice (Substitute brown rice for $2 extra or $3 for fried rice).', 'Curry Dishes'),
(146, 'Ginger Fish', '20.00', 'Lightly battered Basa filet topped with sautéed ginger sauce.', 'Fish Entrees'),
(147, 'Volcano Fish (fried)', '20.00', 'Breaded Basa filet with Thai chili sauce on top of mixed vegetables.', 'Fish Entrees'),
(148, 'Curry Fish', '20.00', 'Grilled Basa filet topped with red curry sauce.', 'Fish Entrees'),
(149, 'Garlic Fish', '20.00', 'Grilled Basa filet sautéed in fresh garlic and ground pepper on top of mixed vegetables. sauce.', 'Fish Entrees'),
(150, 'Sweet & Sour Fish', '20.00', 'Fried Basa filet topped with onions. scallions. tomato. pineapples. mushrooms. carrots. cucumbers. and bell peppers with our special sweet and sour sauce.', 'Fish Entrees'),
(151, 'Steamed Fish', '20.00', 'Siam Orchid\'s healthy dish of Basa filet. topped with ginger. red bell pepper. scallions. and light soy sauce.', 'Fish Entrees'),
(152, 'Grilled Salmon Asparagus', '22.00', 'Grilled salmon topped with sautéed asparagus. bell peppers. onions. scallions. and carrots with spicy red sauce', 'Fish Entrees'),
(153, 'Three Flavors Duck', '23.00', 'Crispy duck topped with onions. scallions. tomato. pineapples. mushrooms. carrots. Cucumbers. and bell peppers with our sweet. sour. and salty.', 'Duck Entrees'),
(154, 'Basil Duck', '23.00', 'Crispy duck topped with special basil sauce.', 'Duck Entrees'),
(155, 'Pineapple Duck', '23.00', 'Crispy duck with special pineapple sauce and sautéed spinach.', 'Duck Entrees'),
(156, 'Curry Duck', '23.00', 'Crispy duck topped with red curry sauce.', 'Duck Entrees'),
(157, 'Sweet & Sour Duck', '23.00', 'Crispy duck topped with onions. scallions. tomato. pineapples. mushroom. carrots. cucumbers. and bell peppers with our special sweet and sour sauce.', 'Duck Entrees'),
(158, 'Grilled Jumbo Shrimp', '23.00', 'Grilled jumbo shrimp in three flavor sauce (sweet. sour. and salty) on top of mixed vegetables.\r', 'Chef\'s Specialties'),
(159, 'Soft Shell Crab with Asparagus Sauce', '23.00', 'Two selected soft-shell crabs. deep fried golden brown topped with a green curry sauce.', 'Chef\'s Specialties'),
(160, 'Volcano Jumbo Shrimp', '23.00', 'Fried jumbo shrimp with Thai chili sauce on top of mixed vegetables.\r', 'Chef\'s Specialties'),
(161, 'Popeye\'s Favorite', '23.00', 'Your choice of steak or chicken with onions and carrots. served over spinach topped with cashew nuts. bell peppers and peanut sauce.\r', 'Chef\'s Specialties'),
(162, 'Garlic Jumbo Shrimp', '23.00', 'Sautéed jumbo shrimp with garlic sauce on top of mixed vegetables.\r', 'Chef\'s Specialties'),
(163, 'Chicken Teriyaki ', '19.00', 'Grilled chicken with vegetables topped with teriyaki sauce.', 'Teriyaki Dinners'),
(164, 'Steak Teriyaki', '21.00', 'Grilled steak with vegetables topped with teriyaki sauce.', 'Teriyaki Dinners'),
(165, 'Salmon Teriyaki', '22.00', 'Grilled salmon with vegetables topped with teriyaki sauce.\r', 'Teriyaki Dinners'),
(166, 'Shrimp Teriyaki', '23.00', 'Grilled jumbo shrimp with vegetables topped with teriyaki sauce.', 'Teriyaki Dinners'),
(167, 'Combination Teriyaki', '29.00', 'Grilled chicken. steak and shrimp with vegetables topped with teriyaki sauce.', 'Teriyaki Dinners'),
(168, 'Chicken Katsu ', '19.00', 'Lightly battered and fried chicken with vegetables.', 'Teriyaki Dinners'),
(169, 'Siam Orchid Rol', '18.00', 'Shrimp tempura. eel. cream cheese. avocado. asparagus. scallions and masago topped with tilapia tempura. spicy mayo and eel sauce.', 'Special Chef Rolls'),
(170, 'Mercedes-Benz Roll', '18.00', 'Tuna. Hamachi. eel. cucumber. lettuce and spicy mayo.', 'Special Chef Rolls'),
(171, 'Porsche Roll', '20.00', 'Lobster claws. shrimp tempura. cucumber. avocado. masago topped with spicy crab and eel sauce.', 'Special Chef Rolls'),
(172, 'Key West Roll', '17.00', 'Shrimp tempura. eel. crab. avocado. asparagus. masago and scallions with eel sauce.', 'Special Chef Rolls'),
(173, 'Miracle Roll', '11.00', 'Escolar. tuna. salmon. cucumber. avocado. scallions and masago wrapped in soy paper.', 'Special Chef Rolls'),
(174, 'Super Dragon Roll', '17.00', 'Shrimp tempura. avocado. asparagus. masago. scallions and spicy mayo topped with grilled eel and eel sauce.', 'Special Chef Rolls'),
(175, 'Sushi Bomb (Tempura Roll)', '18.00', 'Escolar. tuna. salmon. masago. asparagus. scallions and avocado. fried tempura style.', 'Special Chef Rolls'),
(176, 'T.R. Roll', '17.00', 'Shrimp tempura. tuna and spicy crab topped with avocado. flakes and special sauce.', 'Special Chef Rolls'),
(177, 'Lobster Roll', '22.00', 'Lobster tempura. asparagus and avocado topped with tuna. salmon and special sauces.', 'Special Chef Rolls'),
(178, 'Sea of Love Roll', '17.00', 'Spicy tuna. avocado. asparagus. scallions and masago topped with seared tuna. tempura flakes and special sauces.', 'Special Chef Rolls'),
(179, 'Super Crunch Roll', '16.00', 'Eel. salmon. crab. scallions. masago and cream cheese. fried tempura style and baked.', 'Special Chef Rolls'),
(180, 'Toyota Roll', '19.00', 'Shrimp tempura. soft shell crab tempura and spicy crab topped with avocado. flakes and special sauce.', 'Special Chef Rolls'),
(181, 'Cocoa Beach Roll', '17.00', 'Shrimp tempura. eel and spicy crab topped with avocado. flakes and special sauce.', 'Special Chef Rolls'),
(182, 'Super Spicy Tuna Roll', '18.00', 'Spicy Tuna. crab. cucumber and avocado with eel on top.', 'Special Chef Rolls'),
(183, 'White Dragon Roll', '18.00', 'Shrimp tempura. spicy crab. avocado. masago and scallions with squid on top and eel sauce.', 'Special Chef Rolls'),
(184, 'Ocean Roll', '16.00', 'Soft shell crab tempura. avocado. asparagus. masago. spicy mayo. furikake (rice seasoning) with special sauce.', 'Special Chef Rolls'),
(185, 'Lava Roll', '18.00', 'Shrimp tempura. cream cheese and asparagus topped with baked mixed seafood.', 'Special Chef Rolls'),
(186, 'Four Seasons Roll', '19.00', 'Tuna. salmon. escolar. crab. avocado. asparagus. yellow pickle with masago on top.', 'Special Chef Rolls'),
(187, 'Daytona Roll', '19.00', 'Tilapia tempura. spicy crab. eel. cream cheese. avocado. asparagus and masago with shrimp tempura on top and special sauces.', 'Special Chef Rolls'),
(188, 'B.P. Roll', '21.00', 'Spicy tuna. spicy salmon. masago. scallions. avocado. yellow pickle with sweet shrimp(raw) on top.', 'Special Chef Rolls'),
(189, 'Hurricane Roll', '19.00', 'Shrimp tempura. cream cheese. avocado. asparagus. eel topped with spicy crab and tempura flakes finished with eel sauce and spicy mayo.', 'Special Chef Rolls'),
(190, 'Game Over Roll', '27.00', 'Shrimp tempura. avocado. cream cheese. asparagus and scallions in a tempura roll and topped with lobster volcano eel sauce and spicy mayo.', 'Special Chef Rolls'),
(191, 'Sashimi Roll (without rice)', '17.00', 'Salmon. tuna. escolar. masago and avocado wrapped in soy paper with a special spicy sauce.', 'Healthy Choices'),
(192, 'Kanisu', '12.00', 'Crab. shrimp. masago and avocado rolled in a paper-thin cucumber with rice vinegar sauce.', 'Healthy Choices'),
(193, ' Salmon Naruto', '10.00', 'Salmon rolled in thinly slicedcucumber with avocado. masago and special sauce.', 'Healthy Choices'),
(194, 'Veggie Naruto ', '13.00', 'Veggies rolled in thinly slicedcucumber with avocado. masago and special sauce.', 'Healthy Choices'),
(195, 'Tuna Naruto ', '13.00', 'Tuna rolled in thinly slicedcucumber with avocado. masago and special sauce.', 'Healthy Choices'),
(196, 'Escolar Naruto ', '13.00', 'Escolar rolled in thinly slicedcucumber with avocado. masago and special sauce.', 'Healthy Choices'),
(197, 'Cucumber Roll', '6.00', 'Cucumber Roll', 'Makimono Sushi Rolls'),
(198, 'Avocado Roll', '6.00', 'Avocado Roll', 'Makimono Sushi Rolls'),
(199, 'Asparagus Roll', '6.00', 'Asparagus Roll', 'Makimono Sushi Rolls'),
(200, 'Orlando Roll', '12.00', 'Tempura white fish. cucumber. scallions. avocado. masago and spicy mayo with eel sauce.', 'Makimono Sushi Rolls'),
(201, 'Tuna Roll', '9.00', 'Tuna and scallions.', 'Makimono Sushi Rolls'),
(202, 'California Roll', '9.00', 'Crab cucumber. avocado and masago.', 'Makimono Sushi Rolls'),
(203, 'Vegetable Roll', '12.00', 'Carrot. cucumber. avocado. asparagus. spinach and yellow pickles.', 'Makimono Sushi Rolls'),
(204, 'Tanzana Roll', '14.00', 'Hamachi. scallions. avocado. asparagus and masago.', 'Makimono Sushi Rolls'),
(205, 'Spicy Tuna Roll', '12.00', 'Tuna. cucumber. scallions. masago with kimchee sauce.', 'Makimono Sushi Rolls'),
(206, 'J.B Roll', '11.00', 'Salmon. cream cheese and scallions.', 'Makimono Sushi Rolls'),
(207, 'Boston Roll', '11.00', 'Shrimp. cucumber. avocado. lettuce. mayo and masago.', 'Makimono Sushi Rolls'),
(208, 'Eel Roll', '12.00', 'Grilled eel with cucumber and eel sauce.', 'Makimono Sushi Rolls'),
(209, 'Bahama Roll', '15.00', 'Spicy conch. spicy mayo. scallions. avocado. yellow pickle and asparagus topped with masago.', 'Makimono Sushi Rolls'),
(210, 'Rainbow Roll', '15.00', 'Rainbow of fish on top of a California roll.', 'Makimono Sushi Rolls'),
(211, 'Spicy Crab Roll', '10.00', 'Crab. avocado. scallions. masago and spicy mayo.', 'Makimono Sushi Rolls'),
(212, 'Shrimp Tempura Roll', '13.00', 'Shrimp tempura. avocado. asparagus and scallions with eel sauce.', 'Makimono Sushi Rolls'),
(213, 'Chicken Tempura Roll', '12.00', 'Chicken tempura. avocado. asparagus and scallions with eel sauce.', 'Makimono Sushi Rolls'),
(214, 'Crazy Roll', '14.00', 'Salmon skin. eel. avocado. asparagus. scallions and masago with eel sauce.', 'Makimono Sushi Rolls'),
(215, 'Spider Roll', '15.00', 'Soft shell crab tempura. avocado. asparagus. scallions and masago with eel sauce.', 'Makimono Sushi Rolls'),
(216, 'Salmon Tempura Roll (No rice)', '14.00', 'Salmon. crab and asparagus. fried tempura style and baked. topped with eel sauce.', 'Makimono Sushi Rolls'),
(217, 'Daimyo Maki Roll', '14.00', 'Hamachi. tuna. avocado. asparagus. scallions and masago.', 'Makimono Sushi Rolls'),
(218, 'Volcano Roll', '15.00', 'Mixed seafood baked with masago and spicy mayo on top of California roll.', 'Makimono Sushi Rolls'),
(219, 'Dragon Roll', '14.00', 'Shrimp tempura. avocado. asparagus. masago. scallions and spicy mayo with avocado on top and eel sauce.', 'Makimono Sushi Rolls'),
(220, 'Tropical Dragon Roll', '15.00', 'Shrimp tempura. cream cheese. avocado topped with thin slices of mango and eel sauce.', 'Makimono Sushi Rolls'),
(221, 'Red Dragon Roll', '15.00', 'Shrimp. crab. avocado. asparagus. masago and scallions topped with red tuna and spicy mayo.', 'Makimono Sushi Rolls'),
(222, 'French Roll', '15.00', 'Shrimp. crab. cucumber. avocado. cream cheese and masago wrapped in soy paper.', 'Makimono Sushi Rolls'),
(223, 'Beauty & The Beast Roll', '16.00', 'Half tuna and half eel. avocado. asparagus. scallions and masago.', 'Makimono Sushi Rolls'),
(224, 'California Eel Roll', '15.00', 'California roll topped with eel and eel sauce. Spicy Crunchy', 'Makimono Sushi Rolls'),
(225, 'Shrimp on the Rock Roll', '14.00', 'Crab. avocado. cucumber and cream cheese with shrimp and spicy mayo on top.', 'Makimono Sushi Rolls'),
(226, 'Spicy Crunchy Tuna Roll', '14.00', 'Spicy tuna. avocado. scallions and tempura flakes.', 'Makimono Sushi Rolls'),
(227, 'Love J.B. Roll', '14.00', 'Salmon. avocado. cream cheese and scallions wrapped in soy paper.', 'Makimono Sushi Rolls'),
(228, 'La Quinta Roll', '14.00', 'Spicy crab. avocado. cream cheese. scallions. masago and tempura flakes wrapped in soy paper.', 'Makimono Sushi Rolls'),
(229, 'Vegetable Temaki', '6.00', 'Assorted vegetable.', 'Temaki'),
(230, 'California Temaki', '6.00', 'Crab. avocado. cucumber and masago.', 'Temaki'),
(231, 'J.B. Temaki', '7.00', 'Salmon. cream cheese and scallions.', 'Temaki'),
(232, 'Salmon Skin Temaki', '6.00', 'Grilled salmon skin and scallions.', 'Temaki'),
(233, 'Tuna Temaki', '7.00', 'Tuna and scallions.', 'Temaki'),
(234, 'Salmon Temaki', '7.00', 'Salmon and scallions.', 'Temaki'),
(235, 'Hamachi Temaki', '7.00', 'Hamachi and scallions.', 'Temaki'),
(236, 'Spicy Scallop Temaki', '8.00', 'Scallop and masago with spicy mayo.', 'Temaki'),
(237, 'Spicy Octopus or Conch', '7.00', 'Conch or octopus and scallions with kimchee sauce.', 'Temaki'),
(238, 'Spicy Tuna Temaki', '7.00', 'Tuna. scallions and cucumber with kimchee sauce.', 'Temaki'),
(239, 'Spicy Crab Temaki', '6.00', 'Spicy crab. scallions and avocado.', 'Temaki'),
(240, 'Unagi Temaki', '7.00', 'Grilled eel. cucumber and scallions with eel sauce.', 'Temaki'),
(241, 'Spider Temaki', '8.00', 'Soft shell crab tempura. masago. avocado. asparagus and scallions with eel sauce.', 'Temaki'),
(242, 'Key West Temaki', '9.00', 'Shrimp tempura. eel. crab. avocado. asparagus masago and scallions with eel sauce', 'Temaki'),
(243, 'Sushi Mori A', '24.00', 'A California rolls and 9 pcs. of nigiri.', 'Sushi Combinations'),
(244, 'Sushi Mori B', '24.00', 'A California roll. Tuna roll and 6 pcs. of nigiri.', 'Sushi Combinations'),
(245, 'Sushi Mori C', '24.00', 'An Eel roll. Salmon skin temaki and 6 pcs. of nigiri.', 'Sushi Combinations'),
(246, 'Sushi Mori D', '24.00', 'A spicy Tuna roll. J.B. temaki and 6 pcs. of nigiri.', 'Sushi Combinations'),
(247, 'Lady Finger\'s', '22.00', 'A Rainbow roll and 5 pcs. of nigiri.', 'Sushi Combinations'),
(248, 'Hosomaki Combo', '21.00', 'A California roll. J.B. roll and Tuna roll.', 'Sushi Combinations'),
(249, 'Vegetable Combo', '20.00', 'A Vegetable roll and 6 pcs. of vegetable nigiri.', 'Sushi Combinations'),
(250, 'Unagidon', '24.00', 'Grilled eel with eel sauce over a bed of sushi rice.', 'Sushi Combinations'),
(251, 'Tuna Don', '22.00', 'Sliced tuna over a bed of sushi rice.', 'Sushi Combinations'),
(252, 'Mini Single', '29.00', 'A Rainbow roll. 5 pcs. of nigiri and 6 pcs. of sashimi.', 'Sushi & Sashimi Combinations'),
(253, 'Single - for one', '32.00', 'A California roll. 6 pcs. of nigiri and 9 pcs. of sashimi.', 'Sushi & Sashimi Combinations'),
(254, 'Double for two', '62.00', 'A California roll. J.B. roll. 12 pcs of nigiri and 16 pcs. of sashimi.', 'Sushi & Sashimi Combinations'),
(255, 'Boat Chu for three', '99.99', 'A California roll. J.B. roll. Spicy Tuna roll. 18 pcs of nigiri and 18 pcs. of sashimi.', 'Sushi & Sashimi Combinations'),
(256, 'Boat Dai- for four', '99.99', 'A California roll. J.B. roll. Spicy Tuna roll. Shrimp Tempura roll. 24 pcs. of nigiri and 24 pcs. of sashimi.', 'Sushi & Sashimi Combinations'),
(257, 'Sashimi Appetizer', '17.00', '9 pcs. of sliced raw fish (chef\'s choice).', 'Sashimi'),
(258, 'Sashimi Dinner', '25.00', '16 pcs. of raw fish. Served with soup and steamed white rice ($2 extra for sushi rice).', 'Sashimi'),
(259, 'Chirashi', '26.00', 'A work of art! A variety of toppings arranged on a bed of rice. Served with miso soup.', 'Sashimi'),
(260, 'Tuna Usuzukuri', '15.00', 'Thinly sliced tuna with a side of ponzu sauce.', 'Sashimi'),
(261, 'Salmon Usuzukuri', '15.00', 'Thinly sliced salmon with a side of ponzu sauce.', 'Sashimi'),
(262, 'Hamachi Usuzukuri', '16.00', 'Thinly sliced hamachi with a side of ponzu sauce.', 'Sashimi'),
(263, 'Spicy Tuna Basket', '4.50', 'Spicy Tuna Basket', 'Sushi Baskets'),
(264, 'Spicy Octopus Basket', '4.50', 'Spicy Octopus Basket', 'Sushi Baskets'),
(265, 'Spicy Crab Basket', '4.50', 'Spicy Crab Basket', 'Sushi Baskets'),
(266, 'Spicy Conch Basket', '4.50', 'Spicy Conch Basket', 'Sushi Baskets'),
(267, 'Spicy Scallop Basket', '6.00', 'Spicy Scallop Basket', 'Sushi Baskets'),
(268, 'Spicy Yellowtail Basket', '5.50', 'Spicy Yellowtail Basket', 'Sushi Baskets'),
(269, 'Ikura Basket', '6.00', 'Ikura Basket', 'Sushi Baskets'),
(270, 'Masago with Quail Egg Basket', '6.00', 'Masago with Quail Egg Basket', 'Sushi Baskets'),
(271, 'Avocado', '2.00', 'Avocado', 'Sashimi or Nigiri a La Carte'),
(272, 'Asparagus', '2.00', 'Asparagus', 'Sashimi or Nigiri a La Carte'),
(273, 'Spinach', '2.00', 'Spinach', 'Sashimi or Nigiri a La Carte'),
(274, 'Tamago (Egg)', '2.00', 'Tamago (Egg)', 'Sashimi or Nigiri a La Carte'),
(275, 'Inari (Fried Bean Curd)', '2.00', 'Inari (Fried Bean Curd)', 'Sashimi or Nigiri a La Carte'),
(276, 'Saba (mackerel)', '3.00', 'Saba (mackerel)', 'Sashimi or Nigiri a La Carte'),
(277, 'Ebi (Shrimp)', '3.00', 'Ebi (Shrimp)', 'Sashimi or Nigiri a La Carte'),
(278, 'Crab', '3.00', 'Crab', 'Sashimi or Nigiri a La Carte'),
(279, 'Tuna', '3.50', 'Tuna', 'Sashimi or Nigiri a La Carte'),
(280, 'Salmon', '3.50', 'Salmon', 'Sashimi or Nigiri a La Carte'),
(281, 'Escolar', '3.50', 'Escolar', 'Sashimi or Nigiri a La Carte'),
(282, 'Albacore', '3.50', 'Albacore', 'Sashimi or Nigiri a La Carte'),
(283, 'Scallop', '6.00', 'Scallop', 'Sashimi or Nigiri a La Carte'),
(284, 'Conch', '3.50', 'Conch', 'Sashimi or Nigiri a La Carte'),
(285, 'Hokkigai (Surf Clam)', '3.50', 'Hokkigai (Surf Clam)', 'Sashimi or Nigiri a La Carte'),
(286, 'Unagi (Eel)', '3.50', 'Unagi (Eel)', 'Sashimi or Nigiri a La Carte'),
(287, 'Octopus', '3.50', 'Octopus', 'Sashimi or Nigiri a La Carte'),
(288, 'Squid', '3.50', 'Squid', 'Sashimi or Nigiri a La Carte'),
(289, 'Hamachi (Yellowtail)', '3.50', 'Hamachi (Yellowtail)', 'Sashimi or Nigiri a La Carte'),
(290, 'Ama Ebi (Sweet Shrimp)', '6.00', 'Ama Ebi (Sweet Shrimp)', 'Sashimi or Nigiri a La Carte'),
(291, 'Toro (Seasonal)', '40.00', 'Toro (Seasonal)', 'Sashimi or Nigiri a La Carte'),
(292, 'Uni (Seasonal)', '40.00', 'Uni (Seasonal)', 'Sashimi or Nigiri a La Carte'),
(293, 'Quail Egg', '1.00', 'Quail Egg', 'Sashimi or Nigiri a La Carte'),
(294, 'Masago', '5.00', 'Masago', 'Sashimi or Nigiri a La Carte'),
(295, 'Tobiko', '5.00', 'Tobiko', 'Sashimi or Nigiri a La Carte'),
(296, 'Bowl of White Rice', '2.00', 'Bowl of White Rice', 'Extra Charges'),
(297, 'Bowl of Brown Rice', '3.00', 'Bowl of Brown Rice', 'Extra Charges'),
(298, 'Asparagus. Cucumber', '1.00', 'Asparagus. Cucumber', 'Extra Charges'),
(299, 'Avocado', '2.00', 'Avocado', 'Extra Charges'),
(300, 'Bowl of Sushi Rice', '3.00', 'Bowl of Sushi Rice', 'Extra Charges'),
(301, 'Brown Rice per Sushi', '0.25', 'Brown Rice per Sushi', 'Extra Charges'),
(302, 'Cream Cheese', '1.00', 'Cream Cheese', 'Extra Charges'),
(303, 'Brown Rice per Roll', '2.00', 'Brown Rice per Roll', 'Extra Charges'),
(304, 'Tempura the Whole Roll', '2.00', 'Tempura the Whole Roll', 'Extra Charges'),
(305, 'Soy Paper', '2.00', 'Soy Paper', 'Extra Charges'),
(306, 'Side Sauce', '0.50', 'Side Sauce', 'Extra Charges'),
(307, 'Chicken Fingers', '9.00', 'Battered and fried chicken strips.', 'Children\'s Menu'),
(308, 'Steak Teriyaki', '9.00', 'Grilled streak topped with teriyaki sauce.', 'Children\'s Menu'),
(309, 'Chicken Katsu', '9.00', 'Lightly battered and fried chicken.', 'Children\'s Menu'),
(310, 'Shrimp Katsu', '9.00', 'Lightly battered and fried shrimp.', 'Children\'s Menu'),
(311, 'Chicken Teriyaki', '9.00', 'Grilled chicken topped with teriyaki sauce.', 'Children\'s Menu'),
(312, 'Green Tea Ice Cream', '5.00', 'Green Tea Ice Cream', 'Desserts'),
(313, 'Banana Tempura with Ice Cream', '7.00', 'Banana Tempura with Ice Cream', 'Desserts'),
(314, 'Cheesecake Tempura with Ice Cream', '7.00', 'Cheesecake Tempura with Ice Cream', 'Desserts'),
(315, 'Red Azuki Bean Ice Cream', '5.00', 'Red Azuki Bean Ice Cream', 'Desserts'),
(316, 'Ice Cream Tempura', '6.00', 'Ice Cream Tempura', 'Desserts'),
(317, 'Thai Donuts', '6.00', 'Thai Donuts', 'Desserts'),
(318, 'Mochí Ice Cream', '6.00', 'Mochí Ice Cream', 'Desserts'),
(319, 'Sweet Sticky Rice with Mango', '7.00', 'Sweet Sticky Rice with Mango', 'Desserts');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
