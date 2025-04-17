-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2024 at 07:40 AM
-- Server version: 8.0.37
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinefoodphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adm_id` int NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(1, 'admin', 'CAC29D7A34687EB14B37068EE4708E7B', 'eng22am0010.dsu.edu.in', '', '2024-05-04 16:16:22');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `d_id` int NOT NULL,
  `rs_id` int NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(1, 1, 'IDLI', 'idli is paired with sambar and coconut chutney, it can be eaten on its own or even topped with a natural sweetener like coconut sugar. ', 60.00, '6636f4da3ca1b.jpg'),
(2, 4, 'PAYASAM', 'Featuring cardamom, toasted raisins, and nutty cashews, Payasam is a very popular culinary accompaniment during celebrations and festivals.', 120.00, '6636f46d35c42.jpg'),
(3, 1, 'DOSA', 'One of the most popular forms is a Masala dosa. These are savory, crispy, fried crepes filled with a delectable spicy potato mash.', 80.00, '6636ede6910c2.jpg'),
(4, 7, 'Aloo Bonda ', 'Aloo bonda is the South Indian version of mashed potato chops, made with a filling of onions, curry leaves, spices, and a mixture of gram and rice flour before they’re tossed into a deep pan.', 70.00, '6636ef18e90cb.jpg'),
(5, 4, 'Gongura Mutton Curry', ' the mutton is cooked with gongura leaves—although the recipe is quite simple, what makes this dish unique is the earthy, herbaceous taste that lowers the spice levels. ', 300.00, '6636ef2fbfa33.jpg'),
(6, 2, 'Ambur Biryani', 'this variant uses short grain rice called jeera samba and is cooked over a wood fire with red chili paste and whole spices like cloves, cinnamon, and cardamom. It also uses fresh herbs like mint and coriander and is served', 350.00, '6636f1122115d.jpg'),
(7, 2, ' Chicken 65', 'This deep-fried chicken dish is attributed to be a brainchild of AM Buhari of Hotel Buhari in Chennai, where it is served as an entrée. The dish derives its flavour from red chillies which also gives this food its colour.', 300.00, '6636f0fddc429.jpg'),
(8, 1, 'Tomato bath', 'Tomato bath is a savory, tangy and flavorful rice-based dish made with a ground paste of tomatoes, coconut, spices and herbs. The addition of this ground masala paste takes this dish to another level.', 150.00, '6636f37430c82.jpg'),
(9, 1, 'Puri and Chole Masala', 'curry made with white chickpeas, freshly powdered spices, onions, tomatoes and herbs. Naturally vegan and packed with healthy minerals, protein and fiber, this delicious Chole Recipe can be ready in just 45 minutes minus t', 250.00, '6636f353cacec.jpg'),
(10, 3, 'Yorkshire Lamb Patties', 'Lamb patties which melt in your mouth, and are quick and easy to make. Served hot with a crisp salad.', 250.00, '62908867a48e4.jpg'),
(11, 5, 'Lobster Thermidor', 'Lobster Thermidor is a French dish of lobster meat cooked in a rich wine sauce, stuffed back into a lobster shell, and browned.', 250.00, '629089fee52b9.jpg'),
(12, 3, 'Chicken Madeira', 'Chicken Madeira, like Chicken Marsala, is made with chicken, mushrooms, and a special fortified wine. But, the wines are different;', 250.00, '62908bdf2f581.jpg'),
(13, 5, 'Stuffed Jacket Potatoes', 'Deep fry whole potatoes in oil for 8-10 minutes or coat each potato with little oil. Mix the onions, garlic, tomatoes and mushrooms. Add yoghurt, ginger, garlic, chillies, coriander', 250.00, '62908d393465b.jpg'),
(14, 3, 'Pink Spaghetti Gamberoni', 'Spaghetti with prawns in a fresh tomato sauce. This dish originates from Southern Italy and with the combination of prawns, garlic, chilli and pasta. Garnish each with remaining tablespoon parsley.', 250.00, '606d7491a9d13.jpg'),
(15, 5, 'Cheesy Mashed Potato', 'Deliciously Cheesy Mashed Potato. The ultimate mash for your Thanksgiving table or the perfect accompaniment to vegan sausage casserole. Everyone will love it\'s fluffy, cheesy.', 250.00, '606d74c416da5.jpg'),
(16, 3, 'Crispy Chicken Strips', 'Fried chicken strips, served with special honey mustard sauce.', 250.00, '606d74f6ecbbb.jpg'),
(18, 5, 'Lemon Grilled Chicken And Pasta', 'Marinated rosemary grilled chicken breast served with mashed potatoes and your choice of pasta.', 250.00, '606d752a209c3.jpg'),
(19, 3, 'Vegetable Fried Rice', 'Chinese rice wok with cabbage, beans, carrots, and spring onions.', 250.00, '606d7575798fb.jpg'),
(20, 3, 'Prawn Crackers', '12 pieces deep-fried prawn crackers', 250.00, '606d75a7e21ec.jpg'),
(21, 3, 'Spring Rolls', 'Lightly seasoned shredded cabbage, onion and carrots, wrapped in house made spring roll wrappers, deep fried to golden brown.', 250.00, '606d75ce105d0.jpg'),
(22, 3, 'Manchurian Chicken', 'Chicken pieces slow cooked with spring onions in our house made manchurian style sauce.', 250.00, '606d7600dc54c.jpg'),
(23, 5, ' Buffalo Wings', 'Fried chicken wings tossed in spicy Buffalo sauce served with crisp celery sticks and Blue cheese dip.', 250.00, '606d765f69a19.jpg'),
(24, 5, 'Mac N Cheese Bites', 'Served with our traditional spicy queso and marinara sauce.', 250.00, '606d768a1b2a1.jpg'),
(25, 5, 'Signature Potato Twisters', 'Spiral sliced potatoes, topped with our traditional spicy queso, Monterey Jack cheese, pico de gallo, sour cream and fresh cilantro.', 250.00, '606d76ad0c0cb.jpg'),
(26, 5, 'Meatballs Penne Pasta', 'Garlic-herb beef meatballs tossed in our house-made marinara sauce and penne pasta topped with fresh parsley.', 250.00, '606d76eedbb99.jpg'),
(27, 7, 'Gol Gappas', 'filling of mashed potato and boiled chickpeas dipped into the coriander water and tamarind paste would taste so heavenly.', 50.00, '66371951cf3ab.jpg'),
(28, 6, 'Vada Pao', 'Vada Pao is served with different chutneys, coriander being the most common one.', 100.00, '6637190c04697.jpg'),
(29, 6, 'Momos', ' Adding the twists of masalas and stuffings, a massive variety of momos are sold in the state', 100.00, '663719672a135.jpg'),
(30, 7, 'Mirchi Bajji', 'A burst of spices served with onion and lemon', 50.00, '66371983ca665.jpg'),
(31, 6, 'Pav Bhaji', ' With a pinch of lemon and onions beside makes it completely dreamy', 100.00, '6637199f173d3.jpg'),
(32, 7, 'Bhelpuri', ' It is prepared from puffed rice that are mixed well with tangy spices, chutneys, finely chopped onions, and tomatoes.', 100.00, '663719b5bfbaf.jpg'),
(48, 7, 'panipuri', 'food of crispy, hollow, fried dough balls (puri) stuffed with boiled potatoes or steamed moong sprouts or boiled chickpeas or white peas curry (also known as ragda) together with spicy tangy water and a sweet chutney.', 80.00, '663719caed148.jpg'),
(49, 7, 'Gobi Manchurian', 'Gobi Manchurian is coated in a chilli garlic sauce with spring onions. The sauce is rich and thick enough to coat the crispy cauliflower. Served with noodles or eggs fried rice as a main course', 150.00, '66371a0091223.jpg'),
(50, 6, 'Noodles', 'Noodles are commonly used to add body and flavour to broth soups', 90.00, '66371a1612ddf.jpg'),
(51, 8, 'Gulab Jamuns', 'The good old delight made with khoya, fried golden and finally dipped in saffron induced sugar syrup', 150.00, '66371a2ca746e.jpg'),
(52, 8, 'Modak', 'Sweet flour dumplings stuffed with coconut, jaggery, nutmeg and saffron. Steamed to perfection', 200.00, '66371a40c53b7.jpg'),
(53, 8, 'Kulfi', 'A popular frozen dessert that is sinfully rich, dense and creamy. Reduced milk flavoured with saffron, cardamom, pistachio and almonds, served chilled. ', 90.00, '66371a5684228.jpg'),
(54, 9, 'Hummingbird Cake', 'Whether you\'re in the mood for our classic Hummingbird Cake, easy Brown Butter Chocolate Chip Cookies, ', 400.00, ''),
(55, 9, 'Chocolate Cobbler', 'A simple list of ingredients that you probably almost always have on hand in your pantry is used to create a decadent chocolate dessert that can be described as a mix of cake and pudding.', 350.00, '66371a930af3e.jpg'),
(56, 9, 'Chewy Chocolate-Peanut Butter Bars', 'Bite-sized and nutty, these bars are great for tucking into lunch boxes or for sweet and indulgent after-dinner treats', 350.00, '66371aa4486bb.jpg'),
(57, 9, 'Classic Chocolate Pound Cake', 'This moist, classic chocolate cake is dusted with powdered sugar to create a slice that chocolate lovers will dream of for days.', 400.00, '66371ab60e73d.jpg'),
(58, 9, 'Red Velvet Brownies', 'brownies are a bite-size version of the classic cake.', 200.00, '66371aca55ec5.jpg'),
(59, 8, 'Ice Cream Sandwich Cake', 'Is an ice cream sandwich your go-to summertime dessert? Then it\'s time to give your typical ice cream sandwich an upgrade', 300.00, ''),
(60, 9, 'Georgia Pecan Double-Decker Brownies', 'They are thick and fudgy—hence the double-decker in its name—with an accessible, comfortable depth of flavor.', 400.00, '6637175f6745f.jpg'),
(61, 8, 'Chocolate Delight', 'this chocolate dessert with layers of pudding and whipped topping is sure to delight.', 350.00, '6637174c11a2b.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

CREATE TABLE `remark` (
  `id` int NOT NULL,
  `frm_id` int NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `remark`
--

INSERT INTO `remark` (`id`, `frm_id`, `status`, `remark`, `remarkDate`) VALUES
(1, 2, 'in process', 'none', '2022-05-01 05:17:49'),
(2, 3, 'in process', 'none', '2022-05-27 11:01:30'),
(3, 2, 'closed', 'thank you for your order!', '2022-05-27 11:11:41'),
(4, 3, 'closed', 'none', '2022-05-27 11:42:35'),
(5, 4, 'in process', 'none', '2022-05-27 11:42:55'),
(6, 1, 'rejected', 'none', '2022-05-27 11:43:26'),
(7, 7, 'in process', 'none', '2022-05-27 13:03:24'),
(8, 8, 'in process', 'none', '2022-05-27 13:03:38'),
(9, 9, 'rejected', 'thank you', '2022-05-27 13:03:53'),
(10, 7, 'closed', 'thank you for your ordering with us', '2022-05-27 13:04:33'),
(11, 8, 'closed', 'thanks ', '2022-05-27 13:05:24'),
(12, 5, 'closed', 'none', '2022-05-27 13:18:03');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `rs_id` int NOT NULL,
  `c_id` int NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(1, 1, 'Srinidhi Upachar', 'srinidiupachar@gmail.com', '919591234674', 'https://zomato.com/bangalore/srinidhi-upachar-bommasandra', '8am', '8pm', 'mon-sat', ' Neralur Panchayat Office, Hosur Main Road, Anekal Taluk, Bommasandra, Bangalore', '663653fb05b34.jpg', '2024-05-05 03:18:30'),
(2, 1, 'Thalairaj Biryani', 'ThalairajBiryanigmail.com', '918047192229', 'https://www.zomato.com/bangalore/thalairaj-biryani-indiranagar-bangalore', '8am', '10pm', 'Mon-Sat', '23, Indiranagar Double Road, Stage 2, Indiranagar, Bangalore', '66365520b1ed9.jpg', '2024-05-05 03:18:36'),
(3, 2, 'Long Boat Brewing Co.', 'LongBoatBrewingCo@gmail.com', '918047192229', 'https://www.zomato.com/bangalore/long-boat-brewing-co-marathahalli-bangalore/info?contextual_menu_params=eyJkaXNoX3NlYXJjaCI6eyJ0aXRsZSI6IkJlc3QgaW4gU291dGggSW5kaWFuIiwiZGlzaF9pZHMiOltdLCJjdWlzaW5lX2lkcyI6WyI4NSJdfX0%3D', '6am', '3am', '24hr-x7', '110, 1st Main, MSR Layout, Marathahalli, Bangalore', '663656a70f00d.jpg', '2024-05-05 03:18:51'),
(4, 1, 'United Telugu Kitchens', 'UnitedTeluguKitchens@gmail.com', '919459986666', 'https://www.zomato.com/bangalore/united-telugu-kitchens-kumaraswamy-layout-bangalore', '12pm', '12am', 'Mon-Sat', 'Kanakapura Road, Anjanadri Layout, Konanakunte, Kumaraswamy Layout, Bangalore', '663657859f77c.jpg', '2024-05-05 03:19:00'),
(5, 2, 'Nusa', 'nusa@gmail.com', '919916555499', 'https://www.zomato.com/bangalore/nusa-varthur-main-road-whitefield-bangalore/info?contextual_menu_params=eyJkaXNoX3NlYXJjaCI6eyJ0aXRsZSI6IkJlc3QgaW4gU291dGggSW5kaWFuIiwiZGlzaF9pZHMiOltdLCJjdWlzaW5lX2lkcyI6WyI4NSJdfX0%3D', '6am', '12am', 'Mon-Sat', 'A23, Chaitanya Sharan, Gunjur, Mahadevapura, B.B.M.P East, Varthur Main Road, Whitefield, Bangalore', '66365870940d9.jpg', '2024-05-05 03:19:05'),
(6, 3, 'Karnataka Chats', 'KarnatakaChats@gmail.com', '919900693237', 'https://www.zomato.com/bangalore/karnataka-chats-majestic', '12pm', '10pm', 'Mon-Sat', '199/200, Balaji Complex, RT Street, Majestic, Bangalore', '663659ab1aac4.jpg', '2024-05-05 03:19:11'),
(7, 3, 'Bengaluru Chats', 'BengaluruChats@gmail.com', '919148700444', 'https://www.zomato.com/bangalore/bengaluru-chats-yelahanka-bangalore', '12pm', '10pm', 'Mon-Sat', '4th Main Road, Canara Bank Layout, Rajiv Gandhi Nagar, Kodigehalli, Yelahanka, Bangalore', '66365ab00cdd9.jpg', '2024-05-05 03:19:16'),
(8, 4, 'Milano Ice Cream', 'MilanoIceCream@gamil.com', '918041256483', 'https://www.zomato.com/bangalore/milano-ice-cream-indiranagar/info?contextual_menu_params=eyJkaXNoX3NlYXJjaCI6eyJ0aXRsZSI6IkJlc3QgaW4gRGVzc2VydHMiLCJkaXNoX2lkcyI6W10sImN1aXNpbmVfaWRzIjpbIjEwMCJdfX0%3D', '7am', '11pm', 'Mon-Sat', '460, 2nd Cross, Krishna Temple Road, Indiranagar, Bangalore', '66365bacee85b.jpg', '2024-05-05 03:19:22'),
(9, 4, 'Dumont', 'Dumont@gmail.com', '916366441861', 'https://www.zomato.com/bangalore/dumont-church-street-bangalore/info?contextual_menu_params=eyJkaXNoX3NlYXJjaCI6eyJ0aXRsZSI6IkJlc3QgaW4gRGVzc2VydHMiLCJkaXNoX2lkcyI6W10sImN1aXNpbmVfaWRzIjpbIjEwMCJdfX0%3D', '11am', '12am', 'Mon-Sat', '13, Museum Road, Ashok Nagar, Church Street, Bangalore', '66365caf47080.jpg', '2024-05-05 03:19:28');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
(1, 'South Indian', '2024-05-04 07:38:39'),
(2, 'North Indian', '2024-05-04 07:39:12'),
(3, 'Chats', '2024-05-04 07:39:31'),
(4, 'Desserts', '2024-05-04 07:40:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
(1, 'deeksha', 'Deekshitha ', 'M', 'imdeekshitham@gmail.com', '9591091367', 'de23e07e110b69100864aa335d14d1b3', 'marsur agrahara', 1, '2024-05-04 16:13:33');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int NOT NULL,
  `u_id` int NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
(10, 7, 'Yorkshire Lamb Patties', 1, 14.00, NULL, '2024-05-04 04:05:41'),
(11, 8, 'Stuffed Jacket Potatoes', 1, 8.00, NULL, '2024-05-04 16:17:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indexes for table `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `d_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `rs_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
