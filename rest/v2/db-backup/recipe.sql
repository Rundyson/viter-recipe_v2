-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2024 at 12:48 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `recipe_v1`
--

-- --------------------------------------------------------

--
-- Table structure for table `recipe`
--

CREATE TABLE `recipe` (
  `recipe_aid` int(11) NOT NULL,
  `recipe_title` varchar(50) NOT NULL,
  `recipe_category` varchar(20) NOT NULL,
  `recipe_level` varchar(10) NOT NULL,
  `recipe_serving` int(10) NOT NULL,
  `recipe_prep_time` varchar(20) NOT NULL,
  `recipe_image` varchar(20) NOT NULL,
  `recipe_ingredients` text NOT NULL,
  `recipe_description` text NOT NULL,
  `recipe_instruction` text NOT NULL,
  `recipe_is_active` tinyint(1) NOT NULL,
  `recipe_datetime` varchar(20) NOT NULL,
  `recipe_created` varchar(20) NOT NULL,
  `blog_date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recipe`
--

INSERT INTO `recipe` (`recipe_aid`, `recipe_title`, `recipe_category`, `recipe_level`, `recipe_serving`, `recipe_prep_time`, `recipe_image`, `recipe_ingredients`, `recipe_description`, `recipe_instruction`, `recipe_is_active`, `recipe_datetime`, `recipe_created`, `blog_date`) VALUES
(8, 'The Best Lentil Soup', 'chicken', 'easy', 4, '1 hr 30 min', 'Soup-1.webp', '[{\"ingredients\":\"Olive Oil\",\"amount\":\"3\",\"unit\":\"tb\"},{\"ingredients\":\"Medium Carrots\",\"amount\":\"3\",\"unit\":\"1\\/4 inch cut\"},{\"ingredients\":\"Large Celery stalk\",\"amount\":\"1\",\"unit\":\"1\\/4 inch cut\"},{\"ingredients\":\"Kosher salt\",\"amount\":\"1\",\"unit\":\"oz\"},{\"ingredients\":\"Tomato Paste\",\"amount\":\"2\",\"unit\":\"tb\"},{\"ingredients\":\"Garlic\",\"amount\":\"1\",\"unit\":\"glove(minced)\"},{\"ingredients\":\"Dried Brown Lentils\",\"amount\":\"1 1\\/2\",\"unit\":\"cups\"},{\"ingredients\":\"Vegetable Stock\",\"amount\":\"4\",\"unit\":\"cups\"},{\"ingredients\":\"\",\"amount\":\"\",\"unit\":\"\"}]', 'Brown lentils are the star of this dish. To boost flavor, we used a classic mirepoix—onion, celery and carrot – as well as thyme, bay and oregano for an herby finish. We found the fresh lemon juice and parsley at the end brightened up the soup and added a nice pop of color.', 'Heat the oil in a large heavy-bottom pot over medium-high heat. Add the carrot, onion, celery and 1 teaspoon salt and cook, stirring occasionally, until the vegetables are starting to caramelize and take on a dark brown color, 8 to 10 minutes (this step is important as it will add tons of flavor to your soup!).\n\nStir in the tomato paste and garlic and cook, scraping up the brown bits, until the garlic is fragrant and slightly softened, 1 to 2 minutes. Add in the lentils, stock, 4 cups water, thyme, bay leaf, oregano, red pepper flakes, lemon zest, 2 teaspoons salt and a generous amount of black pepper and stir to combine. Bring to a boil then reduce the heat to low. Cover and cook until the lentils are softened with just a bit of bite, 25 to 30 minutes.  \n\nRemove the bay leaf. Puree 2 1/2 cups of the soup in a blender until smooth then stir back into the pot. Stir in the lemon juice and parsley. Ladle into bowls and garnish with more parsley.', 1, '2024-12-04 13:08:28', '2024-12-01 12:56:23', ''),
(9, 'Roman Style Chicken', 'chicken', 'easy', 6, '1 hr', 'Roman Chicken.webp', '[{\"ingredients\":\"salt\",\"amount\":\"1\\/2\",\"unit\":\"ts\"},{\"ingredients\":\"olive oil\",\"amount\":\"1\\/4 \",\"unit\":\"cup\"},{\"ingredients\":\"garlic\",\"amount\":\"2\",\"unit\":\"clvs\"}]', 'Juicy braised chicken thighs, prosciutto, capers, and Hunt Stewed Tomatoes with Basil, Garlic and Oregano come together to make this Roman-style chicken recipe! Make a dinner your family is sure to love!', '##### Step 1\nSeason the chicken with 1/2 teaspoon salt and 1/2 teaspoon pepper. In a heavy, large skillet, heat the olive oil over medium heat. When the oil is hot, cook the chicken until browned on both sides. Remove from the pan and set aside.\n\n##### Step 2\nKeeping the same pan over medium heat, add the peppers and prosciutto and cook until the peppers have browned and the prosciutto is crisp, about 5 minutes. Add the garlic and cook for 1 minute. Add the tomatoes, wine, and herbs. Using a wooden spoon, scrape the browned bits off the bottom of the pan. Return the chicken to the pan, add the stock, and bring the mixture to a boil. Reduce the heat and simmer, covered, until the chicken is cooked through, about 20 to 30 minutes.\n\n##### Step 3\nIf serving immediately, add the capers and the parsley. Stir to combine and serve. If making ahead of time, transfer the chicken and sauce to a storage container, cool, and refrigerate. The next day, reheat the chicken to a simmer over medium heat. Stir in the capers and the parsley and serve.\n\n![Tux, the Linux mascot](https://phcorner.net/attachments/captain-sid-e2-80-99s-butong-pakwan-gif.1207828/)', 1, '2024-12-04 15:01:22', '2024-12-09 13:03:30', ''),
(10, 'test1', 'chicken', 'moderate', 12, '12', 'chickenjoy.jpg', '[{\"ingredients\":\"test\",\"amount\":\"1\",\"unit\":\"2\"}]', 'haha', 'hahahha', 1, '2024-12-06 07:38:38', '2024-12-06 07:38:38', ''),
(11, 'try', 'pasta', 'moderate', 4, '34', 'spag.png', '[{\"ingredients\":\"pasta\",\"amount\":\"1\",\"unit\":\"2\"}]', 'rere', 'rere', 1, '2024-12-09 07:42:46', '2024-12-06 07:49:36', ''),
(12, 'tesst', 'pasta', 'easy', 0, 'sf', 'Roman Chicken.webp', '[{\"ingredients\":\"fs\",\"amount\":\"ff\",\"unit\":\"sfs\"}]', 'sfs', 'sffs', 1, '2024-12-06 08:12:42', '2024-12-06 08:12:42', ''),
(13, 'manok', 'chicken', 'moderate', 4, '32 mins', 'chickenjoy.jpg', '[{\"ingredients\":\"manok\",\"amount\":\"1\",\"unit\":\"2\"}]', 'gagagag', 'gegegege', 1, '2024-12-09 07:24:14', '2024-12-09 07:24:14', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `recipe`
--
ALTER TABLE `recipe`
  ADD PRIMARY KEY (`recipe_aid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `recipe`
--
ALTER TABLE `recipe`
  MODIFY `recipe_aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
