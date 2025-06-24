-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2025 at 06:52 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `workshopdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Admin_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(11) NOT NULL,
  `car_owner_name` varchar(100) NOT NULL,
  `car_plate_number` varchar(20) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `car_model` varchar(50) NOT NULL,
  `service_type` enum('Services Car','Maintenance','Tyre and Wheel','Troubleshoot and Problem','AirCond Services') NOT NULL,
  `booking_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `car_owner_name`, `car_plate_number`, `phone`, `car_model`, `service_type`, `booking_date`) VALUES
(1, 'Master Danial', 'JTB2445', '012345', 'TYPE T', 'Services Car', '2025-06-12 08:43:56'),
(2, 'ahmad', 'JTB2445', '012345', 'TYPE T', 'Services Car', '2025-06-12 13:54:21'),
(3, 'ahmad', 'JTB2445', '012345', 'TYPE T', 'Services Car', '2025-06-16 10:50:51');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `part_id` int(11) NOT NULL,
  `part_name` varchar(100) NOT NULL,
  `quantity_in_stock` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `part_type` enum('Tyre','Plug','Engine Oil','Gearbox Oil','AirCond Gas') NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`part_id`, `part_name`, `quantity_in_stock`, `supplier_id`, `price`, `part_type`, `added_date`) VALUES
(1, 'MAXX Engine Oil 10W40', 45, 12, 150.00, 'Plug', '2025-06-12 13:18:47'),
(2, 'MAXX Engine Oil 10W40', 45, 12, 150.00, 'Tyre', '2025-06-12 13:19:34'),
(3, 'MAXX Engine Oil 10W40', 45, 12, 150.00, 'Engine Oil', '2025-06-12 13:59:18'),
(4, 'MAXX Engine Oil 10W40', 45, 12, 150.00, 'Engine Oil', '2025-06-12 13:59:47');

-- --------------------------------------------------------

--
-- Table structure for table `maintenance_records`
--

CREATE TABLE `maintenance_records` (
  `id` int(11) NOT NULL,
  `plate_number` varchar(20) NOT NULL,
  `car_type` enum('4x4','Sedan') NOT NULL,
  `damage_description` text NOT NULL,
  `repair_status` enum('Pending','Repairing','Completed') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `maintenance_records`
--

INSERT INTO `maintenance_records` (`id`, `plate_number`, `car_type`, `damage_description`, `repair_status`, `created_at`) VALUES
(1, 'JTS 2134', '4x4', 'nwfjer', 'Pending', '2025-06-12 09:26:52'),
(2, 'JTS 2134', '4x4', 'cjwbevj', 'Repairing', '2025-06-12 09:28:11'),
(3, 'JTS 2134', '4x4', 'jbncjqe', 'Repairing', '2025-06-12 09:30:04'),
(4, 'JTS 2134', '4x4', 'jsqbcjhqe', 'Completed', '2025-06-12 09:32:28'),
(5, 'BMW 2134', 'Sedan', 'THE ENGINE OIL SEAL HAS CRACK', 'Pending', '2025-06-12 13:08:04'),
(6, 'BMW 2134', '4x4', 'THE TYRE HAS PROBLEM ', 'Completed', '2025-06-12 13:57:23');

-- --------------------------------------------------------

--
-- Table structure for table `receipts`
--

CREATE TABLE `receipts` (
  `receipt_id` int(11) NOT NULL,
  `plate_number` varchar(20) NOT NULL,
  `service_type` enum('Servis Minyak','Servis Brek','Servis Enjin','Servis Transmisi','Servis Penyelenggaraan Umum') NOT NULL,
  `car_type` varchar(50) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `receipt_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `role` enum('admin','customer','mechanic','manager') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `password`, `phone`, `email`, `role`, `created_at`) VALUES
(1, 'USMAN', '989898', '01151198082', 'usman@gmail.com', 'admin', '2025-06-12 08:21:19'),
(2, 'AHMAD', '12345', '01151198087', 'AHMAD@GMAIL.COM', 'admin', '2025-06-12 13:53:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Admin_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`part_id`);

--
-- Indexes for table `maintenance_records`
--
ALTER TABLE `maintenance_records`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receipts`
--
ALTER TABLE `receipts`
  ADD PRIMARY KEY (`receipt_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `Admin_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `part_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `maintenance_records`
--
ALTER TABLE `maintenance_records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `receipts`
--
ALTER TABLE `receipts`
  MODIFY `receipt_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
