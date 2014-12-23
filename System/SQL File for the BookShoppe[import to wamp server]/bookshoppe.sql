-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 10, 2014 at 01:40 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bookshoppe`
--
CREATE DATABASE IF NOT EXISTS `bookshoppe` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `bookshoppe`;

-- --------------------------------------------------------

--
-- Table structure for table `admin_booksell`
--

CREATE TABLE IF NOT EXISTS `admin_booksell` (
  `Admin_Id` int(10) NOT NULL AUTO_INCREMENT,
  `Book_name` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ISBN` int(255) NOT NULL,
  `Book_Descrption` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `Author` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Quantity` int(10) NOT NULL,
  `Published_Date` date NOT NULL,
  `Price` decimal(50,2) NOT NULL,
  `Category_Id` int(10) NOT NULL,
  PRIMARY KEY (`Admin_Id`),
  KEY `Category_Id` (`Category_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `admin_booksell`
--

INSERT INTO `admin_booksell` (`Admin_Id`, `Book_name`, `ISBN`, `Book_Descrption`, `Author`, `Quantity`, `Published_Date`, `Price`, `Category_Id`) VALUES
(1, 'The Book of Life ', 1670025596, 'The highly anticipated finale to the #1 New York Times bestselling trilogy that began with A Discovery of Witches   After traveling through time in Shadow of Night, the second book in Deborah Harkness’s enchanting series, historian and witch Diana Bishop and vampire scientist Matthew Clairmont return to the present to face new crises and old enemies. At Matthew’s ancestral home at Sept-Tours, they reunite with the cast of characters', 'Deborah Harkness', 50, '2014-07-15', '17.84', 1),
(2, 'The Closer', 2147483647, ' The greatest relief pitcher of all time shares his extraordinary story of survival, love, and baseball. Mariano Rivera, the man who intimidated thousands of batters merely by opening a bullpen door, began his incredible journey as the son of a poor Panamanian fisherman. When first scouted by the Yankees, he didn''t even own his own glove. He thought he might make a good mechanic. When discovered, he had never flown in an airplane, had never heard of Babe Ruth, spoke no English', 'Mariano Rivera, Wayne Coffey', 65, '2014-06-03', '16.25', 6),
(3, 'The Yogi Book', 2147483647, ' "It''s déjà vu all over again"—only better. The Yogi Book, the New York Times bestseller, now has a fresh new design throughout, new photographs, a career timeline, and all-new appreciations by some of his greatest fans, including Billy Crystal. And it''s timed to coincide with the 85th birthday of this American legend who''s more beloved than ever. As for the quotes, well, Yogi Berra''s gift for saying the smartest things in the funniest, most memorable ways has made him a legend.', 'Yogi Berra', 54, '2010-09-15', '9.65', 3);

-- --------------------------------------------------------

--
-- Table structure for table `book_details`
--

CREATE TABLE IF NOT EXISTS `book_details` (
  `Book_Id` int(10) NOT NULL AUTO_INCREMENT,
  `Book_Name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `ISBN` int(255) NOT NULL,
  `Book_Description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `Author` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Availability` int(10) NOT NULL,
  `Published_Year` date NOT NULL,
  `Price` decimal(50,2) NOT NULL,
  `Image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Category_Id` int(20) NOT NULL,
  PRIMARY KEY (`Book_Id`),
  KEY `Category_Id` (`Category_Id`),
  KEY `Category_Id_2` (`Category_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=38 ;

--
-- Dumping data for table `book_details`
--

INSERT INTO `book_details` (`Book_Id`, `Book_Name`, `ISBN`, `Book_Description`, `Author`, `Availability`, `Published_Year`, `Price`, `Image`, `Category_Id`) VALUES
(2, 'Bewolf A new verse', 2147483545, 'Composed toward the end of the first millennium of our era, Beowulf is the elegiac narrative of the adventures of Beowulf, a Scandinavian hero who saves the Danes from the seemingly invincible monster Grendel and, later, from Grendel''s mother. He then returns to his own country and dies in old age ', 'Seamus Heaney (Translator)', 20, '2001-02-28', '11.60', 'imagesli02', 2),
(3, 'City of Heavenly Fire', 2142416895, 'Shadowhunters and demons square off for the final showdown in the spellbinding, seductive conclusion to the #1 New York Times bestselling Mortal Instruments series. Darkness has descended on the Shadowhunter world. Chaos and destruction overwhelm the Nephilim as Clary, Jace, Simon, and their friends band together to fight the greatest evil they have ever faced', 'Cassandra Clare', 15, '2014-05-27', '10.67', 'imagesli03', 1),
(4, 'Face the Music ', 2142114044, 'People say I was brave to write such a revealing book, but I wrote it because I needed to personally reflect on my own life. I know everyone will see themselves somewhere in this book, and where my story might take them is why I''m sharing it." Well known for his onstage persona, the "Starchild," Paul Stanley has written a memoir with a gripping blend of personal revelations', 'Paul Stanley', 40, '2014-04-08', '18.84', 'imagesli04', 3),
(5, 'Fire and Smoke', 2112283647, 'Grill like a pro with the expert recipes and tips in Fire and Smoke.   World champion pitmaster Chris Lilly combines the speed of grilling with the smoky flavors of low-and-slow barbecue for great meals any night of the week, no fancy equipment required. Cook trout in a cast-iron skillet nestled right in smoldering coals for a crispy yet tender and flaky finish', 'Chris Lilly', 20, '2014-04-22', '16.50', 'imagesli05', 7),
(6, 'If I Stay', 2147147647, 'A critically acclaimed novel that will change the way you look at life, love, and family. In the blink of an eye everything changes. Seventeen ?year-old Mia has no memory of the accident; she can only recall what happened afterwards, watching her own damaged body being taken from the wreck', 'Gayle Forman', 35, '2010-06-04', '7.25', 'imagesli06', 1),
(7, 'The Day Kennedy Died', 2147483647, 'Fifty years ago on November 22, 1963, in Dallas''s Dealey Plaza, John Fitzgerald Kennedy, the 35th President of the United States, was assassinated while traveling in a motorcade with his wife, Jacqueline. LIFE magazine, the weekly pictorial chronicle of events in America and throughout the world, was quickly on the scene. The Kennedys had been our story', 'The Editors of LIFE', 5, '2013-10-15', '34.55', 'imagesli07', 7),
(8, 'Lone Survivor', 2147213647, ' A hardcover edition of Lone Survivor with the dramatic movie tie-in cover design ? available exclusively at Barnes and Noble. Four US Navy SEALS departed one clear night in early July, 2005 for the mountainous Afghanistan-Pakistan border for a reconnaissance mission.', 'Marcus Luttrell', 14, '2014-05-20', '10.25', 'imagesli08', 7),
(9, 'The Matchmaker', 2147400647, 'A touching new novel from bestselling author Elin Hilderbrand in which a woman sets out to find love for those closest to her - before it''s too late. 48-year-old Nantucketer Dabney Kimball Beech has always had a gift for matchmaking. Some call her ability mystical, while others - like her husband, celebrated economist John Boxmiller Beech, and her daughter, Agnes, who is clearly engaged to the wrong man - call it meddlesome, but there''s no arguing with her results.', 'Elin Hilderbrand', 25, '2014-05-19', '16.55', 'imagef01', 1),
(10, 'I Could Pee on This', 1452110585, 'Cat lovers will laugh out loud at the quirkiness of their feline friends with these insightful and curious poems from the singular minds of housecats. In this hilarious book of tongue-in-cheek poetry, the author of the internationally syndicated comic strip Sally Forth helps cats unlock their creative potential and explain their odd behavior to ignorant humans. With titles like "Who Is That on Your Lap?," "This Is My Chair," "Kneel Before Me," "Nudge," and "Some of My Best Friends Are Dogs," the', 'Francesco Marciuliano', 31, '2012-08-15', '10.55', 'imagep01', 2),
(11, 'All The Songs', 1579129521, 'Every album and every song ever released by the Beatles—from "Please Please Me" (U.S. 1963) to "The Long and Winding Road" (U.S. 1970)—is dissected, discussed, and analyzed by two music historians in this lively and fully illustrated work.All the Songs delves deep into the history and origins of the Beatles and their music. This first-of-its-kind book draws upon decades of research, as music historians Margotin and Guesdon recount the circumstance', 'Philippe Margotin', 5, '2013-10-22', '37.60', 'imagem01', 3),
(12, 'Instinct', 1455554041, 'Modern life can seem like being lost in a jungle. With distractions and dangers emerging from every direction, it''s easy to lose focus. Over time, we lose touch with one of our most powerful, purposeful, God-given attributes--the desire to be fruitful and multiply, what Bishop T. D. Jakes calls our "instinct for increase.', 'T. D. Jakes', 25, '2014-05-06', '15.30', 'imager01', 4),
(13, 'Teach Like a Champion', 2147483647, 'Teach Like a Champion offers effective teaching techniques to help teachers, especially those in their first few years, become champions in the classroom. These powerful techniques are concrete, specific, and are easy to put into action the very next day. Training activities at the end of each chapter help the reader further their understanding through reflection and application of the ideas to their own practice.', 'Doug Lemov', 16, '2010-04-26', '17.10', 'imaged01', 5),
(14, 'Michael Jordan: The Life', 2127483647, 'Overview\r\n"It''s not every day that I''m blown away by a book about a sports figure. But MICHAEL JORDAN: THE LIFE, by Roland Lazenby, ranks up there with the very best: The Boys of Summer by Roger Kahn, Friday Night Lights by Buzz Bissinger, and Joe DiMaggio by Richard Ben Cramer. The depth of reporting, his frequent ascent into poetry, and his intelligent analysis of the life of this complicated, fascinating American icon deserve Pulitzer Prize consideration. For the first time I understand what ', 'Roland Lazenby', 10, '2014-06-23', '18.50', 'images01', 6),
(15, 'Hard Choices', 2147483403, 'Hillary Rodham Clinton’s inside account of the crises, choices, and challenges she faced during her four years as America’s 67th Secretary of State, and how those experiences drive her view of the future. “All of us face hard choices in our lives,” Hillary Rodham Clinton writes at the start of this personal chronicle of years at the center of world events. “Life is about making such choices. Our choices and how we handle them shape the people we become.', 'Hillary Rodham Clinton', 5, '2014-06-10', '21.00', 'imageh01', 7),
(16, 'Skin Game', 2147481457, 'Butcher is the dean of contemporary urban fantasy.”—Booklist Harry Dresden, Chicago''s only professional wizard, is about to have a very bad day Because as Winter Knight to the Queen of Air and Darkness, Harry never knows what the scheming Mab might want him to do. Usually, it’s something awful. .  He doesn’t know the half of it Mab', 'Jim Butcher', 14, '2014-05-27', '15.05', 'imagef02', 1),
(17, 'Crush', 1803001078, 'Richard Siken’s Crush, selected as the 2004 winner of the Yale Younger Poets prize, is a powerful collection of poems driven by obsession and love. Siken writes with ferocity, and his reader hurtles unstoppably with him. His poetry is confessional, gay, savage, and charged with violent eroticism. In the world of American poetry, Siken''s voice is striking.\r\nIn her introduction to the book, competition judge Louise Glück hails the “cumulative, driving, apocalyptic power, [and] purgatorial reckless', 'Richard Siken, Louise Glück', 40, '2005-03-11', '12.90', 'imagep02', 2),
(18, 'Simple Dreams', 2147483647, 'In this memoir, iconic singer Linda Ronstadt weaves together a captivating story of her origins in Tucson, Arizona, and her rise to stardom in the Southern California music scene of the 1960s and ‘70s. Tracing the timeline of her remarkable life, Linda Ronstadt, whose forty-five year career has encompassed a wide array of musical styles, weaves together a captivating story of her origins in Tucson, Arizona, and her rise to stardom in the', ' Linda Ronstadt', 32, '2013-09-17', '19.45', 'imagem02', 3),
(19, 'When Day Breaks', 1042526378, 'HE ALL-NEW KGI NOVEL BY NEW YORK TIMES BESTSELING AUTHOR AUTHOR MAYA BANKS The Kelly Group International (KGI): A super-elite, top secret, family-run business. Qualifications: High intelligence, rock-hard body, military background. Mission: Hostage/kidnap victim recovery. Intelligence gathering. Handling jobs the U.S. government can’t Eden is said to be one of the most beautiful women in the world. Her face has graced countless magazines and', 'Maya Banks', 50, '2014-06-24', '5.21', 'imagef03', 1),
(20, 'I Am the Beggar of the World', 2147483647, 'n eye-opening collection of clandestine poems by Afghan women Because my love’s American, blisters blossom on my heart. Afghans revere poetry, particularly the high literary forms that derive from Persian or Arabic. But the poem above is a folk couplet—a landay, an ancient oral and anonymous form created by and for mostly illiterate people: the more than 20 million Pashtun women who span the border ', ' Eliza Griswold (Translator)', 60, '2013-12-04', '18.36', 'imagep03', 2),
(21, '101 Great American Poems', 1486401584, 'Rich treasury of verse from the 19th and 20th centuries, selected for popularity and literary quality, includes Poe''s "The Raven," Whitman''s "I Hear America Singing," as well as poems by Robert Frost, Langston Hughes, Emily Dickinson, T. S. Eliot, Marianne Moore, and many other notables. Includes 13 selections from the Common Core State Standards Initiative: "Casey at the Bat," "Fog," "The New Colossus," "Chicago," "I, Too, Sing America," "O Captain! My Captain!," "Paul Revere''s Ride," "The Road', 'Andrew Carroll ', 20, '1998-06-03', '3.55', 'imagep04', 2),
(22, 'Scar Tissue', 1401307455, 's lead singer and songwriter for the Red Hot Chili Peppers, Anthony Kiedis has lived life on the razor''s edge. So much has been written about him, but until now, we''ve only had Kiedis''s songs as clues to his experience from the inside. In Scar Tissue, Kiedis proves himself to be as compelling a memoirist as he is a lyricist, giving us a searingly honest account of the life from which his music has evolved. Now in Scar Tissue, Anthony Kiedis defies the rock star clichs. In his ', 'Anthony Kiedis', 50, '2005-10-16', '10.54', 'imagem03', 3),
(23, 'Dirty Rocker Boys', 2147483647, 'n uncensored Hollywood tell-all filled with explicit tales of love, sex, and revenge from the video vixen made famous by Warrant?s rock anthem ?Cherry Pie.? Since the dawn of music videos, scantily clad girls have captured viewers? attention, but only a handful have become bona fide video vixens like Bobbie Brown?the star of Warrant?s infamous ?Cherry Pie? music video. When Bobbie and Warrant?s lead singer Jani Lane married in 1991, after he proposed live on the Howard Stern', 'Bobbie Brown ', 40, '2013-11-26', '18.64', 'imagem04', 3),
(24, 'Jesus Calling', 124154415, ' After many years of writing her own words in her prayer journal, missionary Sarah Young decided to be more attentive to the Savior''s voice and begin listening for what He was saying. So with pen in hand, she embarked on a journey that forever changed her—and many others around the world. In these powerful pages are the words and Scriptures Jesus lovingly laid on her heart. Words of reassurance, comfort, and hope. Words that have made her', 'Sarah Young', 60, '2004-10-12', '11.22', 'imager02', 4),
(25, 'The 5 Love Languages', 1421014587, 'Marriage should be based on love, right? But does it seem as though you and your spouse are speaking two different languages? #1 New York Times bestselling author Dr. Gary Chapman guides couples in identifying, understanding, and speaking their spouse''s primary love language-quality time, words of affirmation, gifts, acts of service, or physical touch. By learning the five love languages, you and your spouse will discover your unique love languages and learn practical steps in', 'Gary Chapman', 50, '2009-12-28', '9.28', 'imager03', 4),
(26, 'One Thousand Gifts', 2141021458, ' Just like you, Ann Voskamp hungers to live her one life well. Forget the bucket lists that have us escaping our everyday lives for exotic experiences. ?How,? Ann wondered, ?do we find joy in the midst of deadlines, debt, drama, and daily duties? What does the Christ-life really look like when your days are gritty, long---and sometimes even dark? How is God even here?? In One Thousand Gifts, Ann invites you to embrace everyday blessings and embark on the transformative spiritual ', 'Ann Voskamp', 40, '2011-01-27', '9.15', 'imager04', 4),
(27, 'Change Your Thoughts', 2111458741, 've hundred years before the birth of Jesus, a God-realized being named Lao-tzu in ancient China dictated 81 verses, which are regarded by many as the ultimate commentary on the nature of our existence. The classic text of these 81 verses, called the Tao Te Ching or the Great Way, offers advice and guidance that is balanced, moral, spiritual, and always concerned with working for the good. In this book, Dr. Wayne W. Dyer has reviewed hundreds of translations of the Tao Te Ching.', 'Wayne W. Dyer', 67, '2007-07-03', '18.14', 'imager05', 4),
(28, 'Teach Like a Pirate', 2147483647, ' Based on Dave Burgess''s popular "Outrageous Teaching" and "Teach Like a PIRATE" seminars, this book offers inspiration, practical techniques, and innovative ideas that will help you to increase student engagement, boost your creativity, and transform your life as an educator. You''ll learn how to: • Tap into and dramatically increase', 'Dave Burgess', 45, '2012-09-03', '20.31', 'imaged02', 5),
(29, 'Notice and Note', 2147483647, 'Just as rigor does not reside in the barbell but in the act of lifting it, rigor in reading is not an attribute of a text but rather of a reader''s behavior-engaged, observant, responsive, questioning, analytical. The close reading strategies in Notice and Note will help you cultivate those critical reading habits that will make your students more attentive, thoughtful, independent readers." -Kylene Beers and Robert E. Probst In Notice and Note', 'Kylene Beers, Robert E Probst', 70, '2012-11-17', '30.58', 'imaged03', 5),
(30, 'Kaplan Anatomy Coloring Book', 2147483647, 'Learning anatomy and systems of the body is often a difficult task for students at any educational level. One effective method students often use to retain complex information is to practice the kinesthetic learning method. Students of all types—medical school students, physical therapists, art students, and even yoga instructors—use anatomical coloring guides to help supplement their training. With the Kaplan Medical Anatomy Coloring Book, students will benefit from realistic illustrations, key', ' Eric Wise, Stephanie Mccann (Illustrator)', 75, '2011-06-03', '21.06', 'imaged04', 5),
(31, 'Barron''s AP Psychology', 2147483647, 'his updated manual offers detailed preparation for the AP Psychology exam and includes: Updated content and test questions based on the most recent version of the AP Psychology course objectives Three full-length exams--one diagnostic test and two full-length practice tests All test questions answered and explained A review of all AP test', 'Allyson J. Weseley Ed.D., Robert McEntarffer', 35, '2014-01-23', '10.45', 'imaged05', 5),
(32, 'Undisputed Truth', 1001247895, 'He was the undisputed heavyweight champion at twenty; a convicted rapist at twenty-five; a Boxing Hall of Famer who was bankrupt by 2003 despite having earned nearly a third of a billion dollars during his multiple careers. In his new autobiography, Mike Tyson talks candidly about his early life; his controversial bouts; his troubles, marital, financial, legal, and otherwise; his problems with depression and alcohol; and his dreams of getting back on track for his family.', 'Mike Tyson, Larry Sloman', 30, '2013-11-12', '18.85', 'images02', 6),
(33, 'WWE Encyclopedia', 2147483647, 'ith more than one thousand superstars on four hundred packed pages, and covering all eras from the sixties to today''s superstars, the WWE Encyclopedia is the ultimate definitive guide to World Wrestling Entertainment. Now updated and expanded, this dynamic companion to the WWE covers it all — from the WWE''s thrilling showcase events and Pay-Per-Views, to the Survivor Series and the grand spectacle of WrestleMania. With more than sixteen million people tuning in to WWE', 'Brian Shields, Kevin Sullivan', 25, '2014-11-09', '28.34', 'images03', 6),
(34, 'The Sports Gene', 1541548751, 'ow a New York Times Bestseller! In high school, I wondered whether the Jamaican Americans who made our track team so successful might carry some special speed gene from their tiny island. In college, I ran against Kenyans, and wondered whether endurance genes might have traveled with them from East Africa. At the same time, I began to notice that a training group on my team could consist of five men who run next to one another, stride for', 'David Epstein', 50, '2013-01-03', '18.45', 'images04', 6),
(35, 'Seabiscuit: An American Legend', 1002111254, 'Seabiscuit was an unlikely champion: a roughhewn, undersized horse with a sad little tail and knees that wouldn''t straighten all the way. But, thanks to the efforts of three men, Seabiscuit became one of the most spectacular performers in sports history. The rags-to-riches horse emerged as an American cultural icon, drawing an immense following and becoming the single biggest newsmaker of 1938 -- receiving more coverage than FDR or Hitler. Laura Hillenbrand beautifully renders this story of one ', 'Laura Hillenbrand', 91, '2002-03-28', '9.87', 'images05', 6),
(36, 'Killing Patton', 1039555478, 'Readers around the world have thrilled to Killing Lincoln, Killing Kennedy, and Killing Jesus?riveting works of nonfiction that journey into the heart of the most famous murders in history. Now from Bill O?Reilly, anchor of The O?Reilly Factor, comes the most epic book of all in this multimillion-selling series: Killing Patton. General George S. Patton, Jr. died under mysterious circumstances in the months following the end of World War II. For almost seventy years, there has', 'Bill O''Reilly, Martin Dugard', 46, '2014-06-03', '20.34', 'imageh02', 7),
(37, 'The Daily 5', 1571109743, 'he Daily 5, Second Edition retains the core literacy components that made the first edition one of the most widely read books in education and enhances these practices based on years of further experience in classrooms and compelling new brain research. The Daily 5 provides a way for any teacher to structure literacy (and now math) time to increase student independence and allow for individualized attention in small groups and one-on-one', 'Gail Boushey, Joan Moser', 55, '2014-02-28', '22.40', 'imaged06', 5);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `Category_Id` int(5) NOT NULL,
  `Category` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Category_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`Category_Id`, `Category`) VALUES
(1, 'Fiction & Fantasy'),
(2, 'Poetry'),
(3, 'Music'),
(4, 'Religious'),
(5, 'Education & Teaching'),
(6, 'Sport & Adventure'),
(7, 'History');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `Name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Subject` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Message` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`Name`, `Email`, `Subject`, `Message`) VALUES
('Kasun', 'upali888@tahoo.com', 'Later Item', 'This question was at your site log  amn i cant get acess ti lonm'),
('Michal', 'machal88@yahoo.com', 'My bad', 'No IAn Going to tel youan about someyhija da '),
('Osanda', 'osanda89@yahoo.com', 'Fiction boooks', 'I should complain about the fiction book category and it does not have enough stock to buy '),
('Saman', 'smamal@hotmail.com', 'Item erre', 'I wamt to kanow about the item you have offer in the name if all the profduichi'),
('Upali', 'upalova@yahoo.com', 'MAke ', 'We  hav getting troube doib the resisrethi once in awhile');

-- --------------------------------------------------------

--
-- Table structure for table `customer_delivery`
--

CREATE TABLE IF NOT EXISTS `customer_delivery` (
  `Email` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `First_Name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Address` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `City` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Telephone` int(10) NOT NULL,
  `Username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer_delivery`
--

INSERT INTO `customer_delivery` (`Email`, `First_Name`, `Address`, `City`, `Telephone`, `Username`) VALUES
('kodithuwa@yahoo.com', 'Upali', 'N0:12,Sumanasara Road', 'Gampaha', 751248752, 'kodi55'),
('osanda89@yahoo.com', 'Osanda', 'No:291,Hakmana road', 'Matara', 771541257, 'od89'),
('premadsa@gmail.com', 'Kasun', 'No:21,galawathth Road', 'Thihagoda', 774124789, 'prem89');

-- --------------------------------------------------------

--
-- Table structure for table `customer_payment`
--

CREATE TABLE IF NOT EXISTS `customer_payment` (
  `Username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Fullname` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Cardname` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Cardnumber` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Date` date NOT NULL,
  `Verifynumber` int(3) NOT NULL,
  `Total` decimal(50,2) NOT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer_payment`
--

INSERT INTO `customer_payment` (`Username`, `Fullname`, `Cardname`, `Cardnumber`, `Date`, `Verifynumber`, `Total`) VALUES
('Anderson007', 'Michal Anderson', 'M.D. Anderson', '378282248710005', '2015-03-13', 456, '2500.64'),
('kuma77', 'Saman Kumara ', 'S.K. Malapitiya', '412542248710005', '2014-10-16', 748, '400.36'),
('od89', 'Osanda Wedamulla', 'O.D. Wedamulla', '378282246310005', '2015-03-13', 123, '1500.54');

-- --------------------------------------------------------

--
-- Table structure for table `news_letter`
--

CREATE TABLE IF NOT EXISTS `news_letter` (
  `Mail_Id` int(10) NOT NULL AUTO_INCREMENT,
  `Email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Mail_Id`),
  KEY `Email` (`Email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `news_letter`
--

INSERT INTO `news_letter` (`Mail_Id`, `Email`) VALUES
(4, 'Anurudda@hotmailcom'),
(7, 'Dileepa776@gmail.com'),
(6, 'Kasun55@gmail.com'),
(1, 'Osanda1989@gmail.com'),
(2, 'osanda89@yahoo.com'),
(3, 'pasanmet@gmail.com'),
(5, 'Pasas@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE IF NOT EXISTS `register` (
  `First_Name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Last_Name` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `Username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Password` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Confirm_Password` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `City` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Country` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Postal_Code` int(5) NOT NULL,
  `Telephone_Number` int(10) NOT NULL,
  PRIMARY KEY (`First_Name`),
  KEY `Username` (`Username`),
  KEY `Email` (`Email`),
  KEY `Username_2` (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`First_Name`, `Last_Name`, `Username`, `Email`, `Address`, `Password`, `Confirm_Password`, `City`, `Country`, `Postal_Code`, `Telephone_Number`) VALUES
('Buddhika', 'Prasanna ', 'buddhika123', 'prasanna@yahoo.com ', 'No:248,Samagi mawatha', '123456', '123456', 'Embilipitiya', 'Sri Lanka', 87454, 412214574),
('Kasun', 'Premadasa', 'prem89', 'premadsa@gmail.com', 'No:21,galawathth Road', '456', '456', 'Thihagoda', 'Sri Lanka', 98541, 774124789),
('Lahiru', 'Samarasinghe', 'lahiru88', 'lahiru147@yahoo.com', 'No : 123,Katuwana Road,', 'hiru456', 'hiru456', 'Hakmana', 'Sri Lanka', 99987, 774124586),
('Michal', 'Anderson', 'Anderson007', 'machal88@yahoo.com', 'N0: 887, Beruwala Road, Beruwala.', '159', '159', 'Beruwala', 'Sri Lanaka', 88784, 142225478),
('Osanda', 'Wedamulla', 'od89', 'osanda89@yahoo.com', 'No:291,Hakmana road', '123', '123', 'Matara', 'Sri Lanka', 87412, 771541257),
('Saman', 'Kumara', 'kuma77', 'kumanam@yahoo.com', 'No:569,Mathuwalagama Road', 'kuma789', 'kuma789', 'Mathugama', 'Sri Lanka', 98544, 721454789),
('Upali', 'Kodithuwakku', 'kodi55', 'kodithuwa@yahoo.com', 'N0:12,Sumanasara Road', '123456', '123456', 'Gampaha', 'Sri Lanka', 78954, 751248752);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_booksell`
--
ALTER TABLE `admin_booksell`
  ADD CONSTRAINT `admin_booksell_ibfk_1` FOREIGN KEY (`Category_Id`) REFERENCES `category` (`Category_Id`) ON UPDATE CASCADE;

--
-- Constraints for table `book_details`
--
ALTER TABLE `book_details`
  ADD CONSTRAINT `book_details_ibfk_1` FOREIGN KEY (`Category_Id`) REFERENCES `category` (`Category_Id`) ON UPDATE CASCADE;

--
-- Constraints for table `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `contact_ibfk_1` FOREIGN KEY (`Name`) REFERENCES `register` (`First_Name`);

--
-- Constraints for table `customer_delivery`
--
ALTER TABLE `customer_delivery`
  ADD CONSTRAINT `customer_delivery_ibfk_1` FOREIGN KEY (`Email`) REFERENCES `register` (`Email`) ON UPDATE CASCADE;

--
-- Constraints for table `customer_payment`
--
ALTER TABLE `customer_payment`
  ADD CONSTRAINT `customer_payment_ibfk_1` FOREIGN KEY (`Username`) REFERENCES `register` (`Username`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
