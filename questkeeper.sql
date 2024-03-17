-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 17, 2024 at 08:29 PM
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
-- Database: `questkeeper`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `userID` varchar(30) NOT NULL,
  `username` varchar(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`userID`, `username`, `email`, `password`) VALUES
('65d7b9d4a5885', 'test123', 'test2321S@test.nl', '$2y$10$ql.fDci7d3edndWxkmRbH.ntw2rmYyVM2Eg0Oz6Tgj5gdoMIL1joi'),
('65dba4b181cd9', '123test', '123test@a.n;l', '$2y$10$uykwNiZ1M8GccpHjfPTsVePt5a6oQgdSqYa4Tk4FZnhVoWzjdZa5K'),
('65df9ec7f02b4', '', '', '$2y$10$SHHsnTJx8TGv.CdxiixNduVJOKrWmA7rRJWtMAsKbZRcCzFrT4C1u'),
('65e76a18e87dd', 'QK_Admin', '123123@gkahs.com', '$2y$10$lKqGXbSzX9HqDuekLXAk3e3xBu28Q1fC.TLGATlRS21qiIi/nPNFW'),
('65f09eee1eb85', 'midas', 'midas@gmail.com', '$2y$10$iaRz8p4Y7/NJthkoWEBpyOyKdy6348LkcT6KfDc0elr2vWtk3w4NO'),
('65f0a4cc6ba07', 'asda', 'asdas', '$2y$10$rpudOSsS1SPppgCYoTMwf.Q4kEF7bJwXkKfLJCnq72EpnHN8tq57m'),
('65f0a8c0de685', 'dasfsdf', 'sdffs', '$2y$10$g2TQ7OJftlOjhNAnil6r8eW5QfmMQ7lEZ4FbMtquqSxDW0mvR8DEi'),
('65f0a9fd8a86a', 'asd', 'asdasd', '$2y$10$VM9WqW6kWn9DoEK5Z3z3wuzW9rfqAIgoB63VX4S5uAPAd73rs6V92'),
('65f0e56a85246', '123', '123', '$2y$10$2/5YqQasJglW4yv/cZJ6dewZ3xz1Ai8l1ACe6jJiAMXx8YqCif9pK'),
('65f0e72e004ef', '1232', '1232', '$2y$10$LfthG/h9RPn5o0UhPU069OLRTJwZvRmfPGHrSEpgl07CiWPUhgiBC'),
('65f0e8452ff3f', '1232321231', '12321231231231', '$2y$10$31fbNZ9TVLe7uWLnTUKRG.9mETQ5i1gar.Gm9il3FWm8IAjg5cwNC'),
('65f0e8b0ed04e', '1232321231', '123212312312311', '$2y$10$NrjBxZNI2S8OVH1qphni4e3Gm/vAvqCz8G4xwz35rSZd6P0CIkkcu'),
('65f0e8df30296', '123245', '123123', '$2y$10$N3zSy/u8CsHgCEGCK2uiv.T6azix7i6W78bZISEg2MedqlBm5D.Ia'),
('65f0e933a331f', 'hallsaodha', 'asdhgasidha', '$2y$10$HP3vwbw0fjdFM9DVe81nT.P6b8LIr2Se6u2YezuMh5XPwwhEg9EWi'),
('65f6efa170ba1', '1234', '1234', '$2y$10$F3Z/hkOBRPtMyuw1Fu9ZxODTMX5m68o2xuQWiBppBLqMlwFdS7t46');

-- --------------------------------------------------------

--
-- Table structure for table `todo`
--

CREATE TABLE `todo` (
  `ID` varchar(31) NOT NULL,
  `userID` varchar(31) NOT NULL,
  `naam` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `todo`
--

INSERT INTO `todo` (`ID`, `userID`, `naam`, `status`) VALUES
('65e5eff2d9f6e', '', 'wfuogdsiufgsdf', 0),
('65e60d815ce9f', '', '', 0),
('65e60d82d1339', '', 'asdasd', 0),
('65e60d86a658f', '', '', 0),
('65e6142a2e793', '', 'fdafsad', 0),
('65e61832896a3', '', 'asdasd', 0),
('65e618469988d', '', 'testas', 0),
('65e767862041f', '', 'testluissas', 0),
('65e7678bb11a5', '', 'testluissas', 0),
('65e767c15aa7d', '', 'sussy_kaas_frikandelbroodje', 0),
('65e769453f2c4', '65d7b9d4a5885', 'TESTAS', 0),
('65e76976e192f', '65d7b9d4a5885', 'TESTAS', 0),
('65e7697885021', '65d7b9d4a5885', 'TESTAS', 0),
('65e76abbc3690', '65e76a18e87dd', 'kaas', 0),
('65e8b7747536a', '65d7b9d4a5885', '', 0),
('65e8b78404abd', '65d7b9d4a5885', 'hallo', 0),
('65e8b7ef09eb5', '', '', 0),
('65e8b800657ff', '65d7b9d4a5885', 'TESTAS', 0),
('65e8b9124afbe', '65d7b9d4a5885', 'fsdfsdf', 0),
('65e8b92889a06', '65d7b9d4a5885', 'fsdfsdfdfsdf', 0),
('65e8b943d8d58', '65d7b9d4a5885', 'sdadad', 0),
('65e8b9475a229', '65d7b9d4a5885', 'sdadad', 0),
('65e8b949a87f7', '65d7b9d4a5885', 'sdadadsadasda', 0),
('65e8b9e48e831', '65d7b9d4a5885', 'hallooooooooooooooo', 0),
('65e8b9eb46054', '65d7b9d4a5885', 'hallooooooooooooooo', 0),
('65e8b9ed5555d', '65d7b9d4a5885', 'hallooooooooooooooo', 0),
('65e8b9eec3a70', '65d7b9d4a5885', 'hallooooooooooooooo', 0),
('65e8b9f283c1f', '65d7b9d4a5885', 'hallooooooooooooooo', 0),
('65e8ba7b3063f', '65d7b9d4a5885', 'hallooooooooooooooo', 0),
('65e8ba8195a9c', '65d7b9d4a5885', 'test', 0),
('65e8ba87555f7', '65d7b9d4a5885', '', 0),
('65e8ba8e12b3a', '65d7b9d4a5885', '', 0),
('65e8baf407ae2', '65d7b9d4a5885', 'TESTAS', 0),
('65e8bd5b4ad27', '65d7b9d4a5885', '', 0),
('65e8bd5c36161', '65d7b9d4a5885', 'fdfgsdf', 0),
('65e8bd7e6e5a2', '65d7b9d4a5885', 'sdasd', 0),
('65e8bd8b2cc76', '65d7b9d4a5885', 'asdasdsadasd', 0),
('65e8bda798533', '65d7b9d4a5885', 'hggdc', 0),
('65e8bdc8f2669', '65d7b9d4a5885', 'sdfdsfsdf', 0),
('65e8be06a858d', '65d7b9d4a5885', 'sadasd', 0),
('65e8be101846b', '65d7b9d4a5885', 'ddfdfdsf', 0),
('65e8be144af42', '65d7b9d4a5885', '', 0),
('65e8bfcc485a2', '65d7b9d4a5885', '', 0),
('65e8bfec955ac', '65d7b9d4a5885', 'DADASD', 0),
('65e8bffbcd2c8', '65d7b9d4a5885', 'ASDASSDA', 0),
('65e8c049cdab4', '65d7b9d4a5885', 'sdasd', 0),
('65e8c04d9f3f0', '65d7b9d4a5885', 'sadasdad', 0),
('65e8c07c2d8b5', '65d7b9d4a5885', 'dfasdoihasdopias', 0),
('65e8c13b2465c', '65d7b9d4a5885', 'hallo test', 0),
('65e8f10dc58b8', '65d7b9d4a5885', 'asdiuasgdas', 0),
('65f09ffd28efc', '65f09eee1eb85', 'utrdjk', 0),
('65f0a000cbeed', '65f09eee1eb85', 'asdoiuhdf', 0),
('65f0e57e63982', '65f0e56a85246', '123', 0),
('65f0e5835be0e', '65f0e56a85246', '123', 0),
('65f0e9526516b', '65f0e56a85246', '1232131', 0),
('65f0e967417fb', '65f0e56a85246', '123123', 0),
('65f6efac81c47', '65f6efa170ba1', '123314', 0),
('65f733ec2c042', '65f6efa170ba1', '3210', 0),
('65f73b80c30c4', '65f6efa170ba1', 'SDF', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`userID`);

--
-- Indexes for table `todo`
--
ALTER TABLE `todo`
  ADD PRIMARY KEY (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
