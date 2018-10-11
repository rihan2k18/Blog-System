-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 09, 2018 at 06:58 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `name`) VALUES
(17, 'Java'),
(18, 'PHP'),
(19, 'HTML'),
(20, 'CSS');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`id`, `firstname`, `lastname`, `email`, `body`, `status`, `date`) VALUES
(1, 'Rihan', 'Rony', 'rihanronykhan@gmail.com', 'This is our test.....', 0, '2018-08-02 07:16:39'),
(5, 'Rony', '803', 'rihan556@yahoo.com', 'This is a test', 1, '2018-08-02 07:16:39'),
(6, 'Rony', '803', 'rihan556@yahoo.com', 'This is a test', 1, '2018-08-02 07:16:39'),
(7, 'Sajjad', 'Sporsho', 'sajjadsporsho@gmail.com', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s........\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s........', 1, '2018-08-02 19:09:25'),
(9, 'Shah Alom', 'Khan', 'shah@gmail.com', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s........', 1, '2018-08-02 19:57:31');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_footer`
--

CREATE TABLE `tbl_footer` (
  `id` int(11) NOT NULL,
  `note` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_footer`
--

INSERT INTO `tbl_footer` (`id`, `note`) VALUES
(1, 'Rihan Rony Khan and Roznin Tonny Creation');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page`
--

CREATE TABLE `tbl_page` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_page`
--

INSERT INTO `tbl_page` (`id`, `name`, `body`) VALUES
(1, 'About Us', '<p>About Us Page:<span>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the........</span><span>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the........</span></p>'),
(2, 'Privacy ', '<p><span>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the........</span><span>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the........</span></p>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `id` int(11) NOT NULL,
  `cat` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`id`, `cat`, `title`, `body`, `image`, `author`, `tags`, `date`) VALUES
(8, 2, 'Our PHP Title Goes Here', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br />Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br />Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'upload/1a8ce18cce.jpg', 'Admin', 'PHP,Programming', '2018-07-29 20:51:42'),
(9, 4, 'CSS Title Goes Here', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br />Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br />Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'upload/2f7aae2d1b.png', 'RIhan', 'CSS,Programming', '2018-07-29 20:52:15'),
(17, 14, 'Ruby', '<p><strong>Ruby</strong>&nbsp;is a&nbsp;<a title=\"Dynamic programming language\" href=\"https://en.wikipedia.org/wiki/Dynamic_programming_language\">dynamic</a>,&nbsp;<a title=\"Interpreted language\" href=\"https://en.wikipedia.org/wiki/Interpreted_language\">interpreted</a>,&nbsp;<a class=\"mw-redirect\" title=\"Reflection (computer science)\" href=\"https://en.wikipedia.org/wiki/Reflection_(computer_science)\">reflective</a>,&nbsp;<a class=\"mw-redirect\" title=\"Object-oriented programming language\" href=\"https://en.wikipedia.org/wiki/Object-oriented_programming_language\">object-oriented</a>,&nbsp;<a title=\"General-purpose programming language\" href=\"https://en.wikipedia.org/wiki/General-purpose_programming_language\">general-purpose programming language</a>. It was designed and developed in the mid-1990s by&nbsp;<a title=\"Yukihiro Matsumoto\" href=\"https://en.wikipedia.org/wiki/Yukihiro_Matsumoto\">Yukihiro \"Matz\" Matsumoto</a>&nbsp;in&nbsp;<a title=\"Japan\" href=\"https://en.wikipedia.org/wiki/Japan\">Japan</a>.</p>\r\n<p>According to the creator, Ruby was influenced by&nbsp;<a title=\"Perl\" href=\"https://en.wikipedia.org/wiki/Perl\">Perl</a>,&nbsp;<a title=\"Smalltalk\" href=\"https://en.wikipedia.org/wiki/Smalltalk\">Smalltalk</a>,&nbsp;<a title=\"Eiffel (programming language)\" href=\"https://en.wikipedia.org/wiki/Eiffel_(programming_language)\">Eiffel</a>,&nbsp;<a title=\"Ada (programming language)\" href=\"https://en.wikipedia.org/wiki/Ada_(programming_language)\">Ada</a>, and&nbsp;<a title=\"Lisp (programming language)\" href=\"https://en.wikipedia.org/wiki/Lisp_(programming_language)\">Lisp</a>.<sup id=\"cite_ref-12\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Ruby_(programming_language)#cite_note-12\">[12]</a></sup>&nbsp;It supports multiple&nbsp;<a title=\"Programming paradigm\" href=\"https://en.wikipedia.org/wiki/Programming_paradigm\">programming paradigms</a>, including&nbsp;<a title=\"Functional programming\" href=\"https://en.wikipedia.org/wiki/Functional_programming\">functional</a>,&nbsp;<a title=\"Object-oriented programming\" href=\"https://en.wikipedia.org/wiki/Object-oriented_programming\">object-oriented</a>, and&nbsp;<a title=\"Imperative programming\" href=\"https://en.wikipedia.org/wiki/Imperative_programming\">imperative</a>. It also has a&nbsp;<a class=\"mw-redirect\" title=\"Dynamic type\" href=\"https://en.wikipedia.org/wiki/Dynamic_type\">dynamic type</a>&nbsp;system and automatic&nbsp;<a title=\"Memory management\" href=\"https://en.wikipedia.org/wiki/Memory_management\">memory management</a>.</p>', 'upload/ad7687c97e.jpg', 'RIhan', 'Ruby,Programming', '2018-08-03 05:24:14'),
(20, 11, 'Why Java is Best ', '<p><span>CSS facilitates publication of content in multiple presentation formats based on nominal parameters. Nominal parameters include explicit user preferences, different web browsers, the type of device being used to view the content (a desktop computer or mobile Internet device), the geographic location of the user and many other variables.</span></p>', 'upload/e780aa02a5.png', 'Rihan', 'JAVA,Programming,Best', '2018-08-03 05:27:12'),
(21, 13, 'Why u Need to Learn C# and Dot Net', '<p><span>Since the release of C# 2.0 in November 2005, the C# and Java languages have evolved on increasingly divergent trajectories, becoming two very different languages. One of the first major departures came with the addition of&nbsp;</span><a title=\"Generic programming\" href=\"https://en.wikipedia.org/wiki/Generic_programming\">generics</a><span>&nbsp;to both languages, with vastly different implementations. C# makes use of&nbsp;</span><a title=\"Reification (computer science)\" href=\"https://en.wikipedia.org/wiki/Reification_(computer_science)\">reification</a><span>&nbsp;to provide \"first-class\" generic objects that can be used like any other class, with code generation performed at class-load time.</span><sup id=\"cite_ref-27\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/C_Sharp_(programming_language)#cite_note-27\">[25]</a></sup><span>&nbsp;Furthermore, C# has added several major features to accommodate functional-style programming, culminating in the&nbsp;</span><a title=\"Language Integrated Query\" href=\"https://en.wikipedia.org/wiki/Language_Integrated_Query\">LINQ</a><span>&nbsp;extensions released with C# 3.0 and its supporting framework of&nbsp;</span><a class=\"mw-redirect\" title=\"Lambda expressions\" href=\"https://en.wikipedia.org/wiki/Lambda_expressions\">lambda expressions</a><span>,&nbsp;</span><a title=\"Extension method\" href=\"https://en.wikipedia.org/wiki/Extension_method\">extension methods</a><span>, and&nbsp;</span><a title=\"Anonymous type\" href=\"https://en.wikipedia.org/wiki/Anonymous_type\">anonymous types</a><span>.</span><sup id=\"cite_ref-28\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/C_Sharp_(programming_language)#cite_note-28\">[26]</a></sup><span>&nbsp;These features enable C# programmers to use functional programming techniques, such as&nbsp;</span><a class=\"mw-redirect\" title=\"Closure (computer science)\" href=\"https://en.wikipedia.org/wiki/Closure_(computer_science)\">closures</a><span>, when it is advantageous to their application. The LINQ extensions and the functional imports help developers reduce the amount of&nbsp;</span><a title=\"Boilerplate code\" href=\"https://en.wikipedia.org/wiki/Boilerplate_code\">boilerplate code</a><span>&nbsp;that is included in common tasks like querying a database, parsing an xml file, or searching through a data structure, shifting the emphasis onto the actual program logic to help improve readability and maintainability.</span><sup id=\"cite_ref-29\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/C_Sharp_(programming_language)#cite_note-29\">[27]</a></sup></p>', 'upload/6d3890cd8c.jpg', 'Rihan', 'C#,Programming', '2018-08-03 05:28:23'),
(23, 17, 'Java', '<p><strong>Lorem Ipsum</strong><span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic&nbsp;</span></p>', 'upload/79fe2c2db1.png', 'Rihan', 'JAVA,Programming', '2018-08-03 05:48:55'),
(24, 18, 'PHP', '<p><strong>Lorem Ipsum</strong><span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic&nbsp;</span></p>', 'upload/40be29eca7.jpg', 'Roznin', 'PHP,Programming', '2018-08-03 05:49:17'),
(25, 19, 'HTML title goes here', '<p><strong>Lorem Ipsum</strong><span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic&nbsp;</span></p>', 'upload/7a475b9b77.jpg', 'Rihan', 'HTML,Design', '2018-08-03 05:49:42'),
(26, 19, 'HTML title goes here', '<p><strong>Lorem Ipsum</strong><span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic&nbsp;</span></p>', 'upload/b6127282ba.jpg', 'Roznin', 'HTML,Design', '2018-08-03 06:00:02'),
(27, 17, 'Java Title Goes Here', '<p><strong>Lorem Ipsum</strong><span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic&nbsp;</span></p>', 'upload/1b8ba9099e.png', 'Rihan', 'JAVA,Programming', '2018-08-03 06:00:27');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `title`, `image`) VALUES
(1, 'First Title Goes Here', 'upload/Slider/7556b8628a.jpg'),
(2, 'Second Title Goes Here', 'upload/Slider/ab66afb75e.jpg'),
(3, 'Third Title Goes Here', 'upload/Slider/20a39b25ff.jpg'),
(4, 'Fourth Title Goes Here', 'upload/Slider/463442cf25.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social`
--

CREATE TABLE `tbl_social` (
  `id` int(11) NOT NULL,
  `fb` varchar(255) NOT NULL,
  `tw` varchar(255) NOT NULL,
  `ln` varchar(255) NOT NULL,
  `gp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_social`
--

INSERT INTO `tbl_social` (`id`, `fb`, `tw`, `ln`, `gp`) VALUES
(1, 'http://facebook.com/rihanronykhan', 'http://twitter.com/rihanronykhan', 'http://linkedin.com', 'http://google.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_theme`
--

CREATE TABLE `tbl_theme` (
  `id` int(11) NOT NULL,
  `theme` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_theme`
--

INSERT INTO `tbl_theme` (`id`, `theme`) VALUES
(1, 'green');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `name`, `username`, `password`, `email`, `details`, `role`) VALUES
(2, '', 'admin', '202cb962ac59075b964b07152d234b70', '', '', 0),
(3, '', 'author', '202cb962ac59075b964b07152d234b70', '', '', 1),
(4, '', 'editor', '202cb962ac59075b964b07152d234b70', '', '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `title_slogan`
--

CREATE TABLE `title_slogan` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slogan` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `title_slogan`
--

INSERT INTO `title_slogan` (`id`, `title`, `slogan`, `logo`) VALUES
(1, 'IT  Kothon', 'LETS MOVE', 'upload/logo.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_footer`
--
ALTER TABLE `tbl_footer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_page`
--
ALTER TABLE `tbl_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_social`
--
ALTER TABLE `tbl_social`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_theme`
--
ALTER TABLE `tbl_theme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `title_slogan`
--
ALTER TABLE `title_slogan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_footer`
--
ALTER TABLE `tbl_footer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_page`
--
ALTER TABLE `tbl_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_social`
--
ALTER TABLE `tbl_social`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_theme`
--
ALTER TABLE `tbl_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `title_slogan`
--
ALTER TABLE `title_slogan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
