-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th2 28, 2024 lúc 09:01 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shop_phamhai`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `pty` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `carts`
--

INSERT INTO `carts` (`id`, `customer_id`, `product_id`, `pty`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 21, 4, 64, NULL, NULL),
(2, 2, 13, 1, 75, NULL, NULL),
(3, 3, 21, 2, 64, NULL, NULL),
(4, 4, 21, 1, 64, NULL, NULL),
(5, 5, 20, 1, 30, NULL, NULL),
(6, 6, 7, 1, 14, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id`, `name`, `phone`, `address`, `email`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Công ty TNHH giải pháp IOT Việt', '0933364435', '16 Đ. Số 35, Bình An, Quận 2, Thành phố Hồ Chí Minh, Việt Nam', 'iotsolutionvietnam@gmail.com', 'hello', '2024-02-22 06:10:52', '2024-02-22 06:10:52'),
(2, 'Công ty TNHH giải pháp IOT Việt', '0933364435', '16 Đ. Số 35, Bình An, Quận 2, Thành phố Hồ Chí Minh, Việt Nam', 'iotsolutionvietnam@gmail.com', 'heksdnf', '2024-02-22 06:39:44', '2024-02-22 06:39:44'),
(3, 'Công ty TNHH giải pháp IOT Việt', '0933364435', '16 Đ. Số 35, Bình An, Quận 2, Thành phố Hồ Chí Minh, Việt Nam', 'iotsolutionvietnam@gmail.com', 'dsfsdf', '2024-02-23 01:51:34', '2024-02-23 01:51:34'),
(4, 'Công ty TNHH giải pháp IOT Việt', '0933364435', '16 Đ. Số 35, Bình An, Quận 2, Thành phố Hồ Chí Minh, Việt Nam', 'iotsolutiontnam@gmail.com', 'dsfssdf', '2024-02-23 02:00:42', '2024-02-23 02:00:42'),
(5, 'Công ty TNHH giải pháp IOT Việt', '0933364435', '16 Đ. Số 35, Bình An, Quận 2, Thành phố Hồ Chí Minh, Việt Nam', 'iotsolutionvietnam@gmail.com', 'kjk', '2024-02-23 02:10:52', '2024-02-23 02:10:52'),
(6, 'Công ty TNHH giải pháp IOT Việt', '0933364435', '16 Đ. Số 35, Bình An, Quận 2, Thành phố Hồ Chí Minh, Việt Nam', 'iotsolutionvietnam@gmail.com', 'hbhb', '2024-02-23 02:13:25', '2024-02-23 02:13:25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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

--
-- Đang đổ dữ liệu cho bảng `failed_jobs`
--

INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(1, 'c1e07510-7826-40dc-915b-fa27abb8519f', 'database', 'default', '{\"uuid\":\"c1e07510-7826-40dc-915b-fa27abb8519f\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":2:{s:8:\\\"\\u0000*\\u0000email\\\";s:28:\\\"iotsolutionvietnam@gmail.com\\\";s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2024-02-22 13:39:46.998491\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}\"}}', 'InvalidArgumentException: View [view.name] not found. in /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/View/FileViewFinder.php:137\nStack trace:\n#0 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/View/FileViewFinder.php(79): Illuminate\\View\\FileViewFinder->findInPaths(\'view.name\', Array)\n#1 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/View/Factory.php(137): Illuminate\\View\\FileViewFinder->find(\'view.name\')\n#2 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(433): Illuminate\\View\\Factory->make(\'view.name\', Array)\n#3 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(408): Illuminate\\Mail\\Mailer->renderView(\'view.name\', Array)\n#4 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(320): Illuminate\\Mail\\Mailer->addContent(Object(Illuminate\\Mail\\Message), \'view.name\', NULL, NULL, Array)\n#5 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(205): Illuminate\\Mail\\Mailer->send(\'view.name\', Array, Object(Closure))\n#6 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Support/Traits/Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#7 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(198): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#8 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(357): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\Mailer))\n#9 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(301): Illuminate\\Mail\\Mailer->sendMailable(Object(App\\Mail\\OrderShipped))\n#10 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Mail/PendingMail.php(124): Illuminate\\Mail\\Mailer->send(Object(App\\Mail\\OrderShipped))\n#11 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/app/Jobs/SendMail.php(36): Illuminate\\Mail\\PendingMail->send(Object(App\\Mail\\OrderShipped))\n#12 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): App\\Jobs\\SendMail->handle()\n#13 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#14 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#15 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#16 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Container/Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#17 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#18 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendMail))\n#19 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendMail))\n#20 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#21 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendMail), false)\n#22 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendMail))\n#23 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendMail))\n#24 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#25 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendMail))\n#26 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#27 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#28 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(389): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#29 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(176): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#30 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(137): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#31 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(120): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#32 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#33 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#34 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#35 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#36 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Container/Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#37 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Console/Command.php(211): Illuminate\\Container\\Container->call(Array)\n#38 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/symfony/console/Command/Command.php(326): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#39 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Console/Command.php(180): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#40 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/symfony/console/Application.php(1096): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/symfony/console/Application.php(324): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/symfony/console/Application.php(175): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(201): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 {main}', '2024-02-22 06:39:47'),
(2, 'a98e163e-359c-4086-b40c-8dd346b4f253', 'database', 'default', '{\"uuid\":\"a98e163e-359c-4086-b40c-8dd346b4f253\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":2:{s:8:\\\"\\u0000*\\u0000email\\\";s:28:\\\"iotsolutionvietnam@gmail.com\\\";s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2024-02-23 08:51:36.959546\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}\"}}', 'InvalidArgumentException: View [view.name] not found. in /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/View/FileViewFinder.php:137\nStack trace:\n#0 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/View/FileViewFinder.php(79): Illuminate\\View\\FileViewFinder->findInPaths(\'view.name\', Array)\n#1 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/View/Factory.php(137): Illuminate\\View\\FileViewFinder->find(\'view.name\')\n#2 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(433): Illuminate\\View\\Factory->make(\'view.name\', Array)\n#3 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(408): Illuminate\\Mail\\Mailer->renderView(\'view.name\', Array)\n#4 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(320): Illuminate\\Mail\\Mailer->addContent(Object(Illuminate\\Mail\\Message), \'view.name\', NULL, NULL, Array)\n#5 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(205): Illuminate\\Mail\\Mailer->send(\'view.name\', Array, Object(Closure))\n#6 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Support/Traits/Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#7 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(198): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#8 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(357): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\Mailer))\n#9 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(301): Illuminate\\Mail\\Mailer->sendMailable(Object(App\\Mail\\OrderShipped))\n#10 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Mail/PendingMail.php(124): Illuminate\\Mail\\Mailer->send(Object(App\\Mail\\OrderShipped))\n#11 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/app/Jobs/SendMail.php(36): Illuminate\\Mail\\PendingMail->send(Object(App\\Mail\\OrderShipped))\n#12 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): App\\Jobs\\SendMail->handle()\n#13 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#14 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#15 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#16 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Container/Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#17 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#18 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendMail))\n#19 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendMail))\n#20 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#21 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendMail), false)\n#22 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendMail))\n#23 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendMail))\n#24 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#25 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendMail))\n#26 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#27 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#28 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(389): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#29 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(176): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#30 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(137): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#31 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(120): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#32 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#33 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#34 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#35 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#36 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Container/Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#37 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Console/Command.php(211): Illuminate\\Container\\Container->call(Array)\n#38 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/symfony/console/Command/Command.php(326): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#39 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Console/Command.php(180): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#40 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/symfony/console/Application.php(1096): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/symfony/console/Application.php(324): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/symfony/console/Application.php(175): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(201): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 {main}', '2024-02-23 01:51:38'),
(3, '85021293-a351-4715-9cfa-4f004e29b68a', 'database', 'default', '{\"uuid\":\"85021293-a351-4715-9cfa-4f004e29b68a\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":2:{s:8:\\\"\\u0000*\\u0000email\\\";s:25:\\\"iotsolutiontnam@gmail.com\\\";s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2024-02-23 09:00:44.291184\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}\"}}', 'InvalidArgumentException: View [view.name] not found. in /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/View/FileViewFinder.php:137\nStack trace:\n#0 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/View/FileViewFinder.php(79): Illuminate\\View\\FileViewFinder->findInPaths(\'view.name\', Array)\n#1 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/View/Factory.php(137): Illuminate\\View\\FileViewFinder->find(\'view.name\')\n#2 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(433): Illuminate\\View\\Factory->make(\'view.name\', Array)\n#3 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(408): Illuminate\\Mail\\Mailer->renderView(\'view.name\', Array)\n#4 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(320): Illuminate\\Mail\\Mailer->addContent(Object(Illuminate\\Mail\\Message), \'view.name\', NULL, NULL, Array)\n#5 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(205): Illuminate\\Mail\\Mailer->send(\'view.name\', Array, Object(Closure))\n#6 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Support/Traits/Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#7 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(198): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#8 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(357): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\Mailer))\n#9 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(301): Illuminate\\Mail\\Mailer->sendMailable(Object(App\\Mail\\OrderShipped))\n#10 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Mail/PendingMail.php(124): Illuminate\\Mail\\Mailer->send(Object(App\\Mail\\OrderShipped))\n#11 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/app/Jobs/SendMail.php(36): Illuminate\\Mail\\PendingMail->send(Object(App\\Mail\\OrderShipped))\n#12 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): App\\Jobs\\SendMail->handle()\n#13 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#14 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#15 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#16 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Container/Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#17 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#18 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendMail))\n#19 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendMail))\n#20 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#21 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendMail), false)\n#22 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendMail))\n#23 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendMail))\n#24 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#25 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendMail))\n#26 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#27 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#28 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(389): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#29 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(176): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#30 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(137): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#31 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(120): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#32 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#33 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#34 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#35 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#36 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Container/Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#37 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Console/Command.php(211): Illuminate\\Container\\Container->call(Array)\n#38 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/symfony/console/Command/Command.php(326): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#39 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Console/Command.php(180): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#40 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/symfony/console/Application.php(1096): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/symfony/console/Application.php(324): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/symfony/console/Application.php(175): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(201): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 {main}', '2024-02-23 02:00:45'),
(4, '2e8277c3-0639-48a2-bcce-d24ba69987a0', 'database', 'default', '{\"uuid\":\"2e8277c3-0639-48a2-bcce-d24ba69987a0\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":2:{s:8:\\\"\\u0000*\\u0000email\\\";s:28:\\\"iotsolutionvietnam@gmail.com\\\";s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2024-02-23 09:13:27.954061\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}\"}}', 'InvalidArgumentException: View [view.name] not found. in /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/View/FileViewFinder.php:137\nStack trace:\n#0 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/View/FileViewFinder.php(79): Illuminate\\View\\FileViewFinder->findInPaths(\'view.name\', Array)\n#1 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/View/Factory.php(137): Illuminate\\View\\FileViewFinder->find(\'view.name\')\n#2 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(433): Illuminate\\View\\Factory->make(\'view.name\', Array)\n#3 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(408): Illuminate\\Mail\\Mailer->renderView(\'view.name\', Array)\n#4 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(320): Illuminate\\Mail\\Mailer->addContent(Object(Illuminate\\Mail\\Message), \'view.name\', NULL, NULL, Array)\n#5 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(205): Illuminate\\Mail\\Mailer->send(\'view.name\', Array, Object(Closure))\n#6 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Support/Traits/Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#7 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(198): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#8 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(357): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\Mailer))\n#9 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(301): Illuminate\\Mail\\Mailer->sendMailable(Object(App\\Mail\\OrderShipped))\n#10 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Mail/PendingMail.php(124): Illuminate\\Mail\\Mailer->send(Object(App\\Mail\\OrderShipped))\n#11 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/app/Jobs/SendMail.php(36): Illuminate\\Mail\\PendingMail->send(Object(App\\Mail\\OrderShipped))\n#12 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): App\\Jobs\\SendMail->handle()\n#13 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#14 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#15 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#16 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Container/Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#17 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#18 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendMail))\n#19 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendMail))\n#20 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#21 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendMail), false)\n#22 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendMail))\n#23 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendMail))\n#24 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#25 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendMail))\n#26 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#27 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#28 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(389): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#29 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(176): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#30 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(137): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#31 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(120): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#32 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#33 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#34 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#35 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#36 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Container/Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#37 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Console/Command.php(211): Illuminate\\Container\\Container->call(Array)\n#38 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/symfony/console/Command/Command.php(326): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#39 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Console/Command.php(180): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#40 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/symfony/console/Application.php(1096): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/symfony/console/Application.php(324): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/symfony/console/Application.php(175): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(201): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 /Applications/XAMPP/xamppfiles/htdocs/shop_phamhai/shopbanhang/artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 {main}', '2024-02-23 02:13:29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `content` longtext NOT NULL,
  `slug` varchar(255) NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `name`, `parent_id`, `description`, `content`, `slug`, `active`, `created_at`, `updated_at`) VALUES
(2, 'Dành Cho Nữ', 0, 'Dành Cho Nữ', 'Dành Cho Nữ', 'nuoc-hoa-nam', 1, '2024-01-23 06:32:20', '2024-02-03 01:19:55'),
(4, 'Dành Cho Nam', 0, 'Sản phẩm dành cho nam giới', 'Sản phẩm dành cho nam giới', 'nuoc-hoa-nu', 1, '2024-01-23 07:45:35', '2024-02-03 01:19:40'),
(5, 'Nước hoa dior', 2, 'sáda', 'sada', 'nuoc-hoa-dior-2', 1, '2024-01-25 01:29:20', '2024-01-29 01:56:57'),
(6, 'Nước hoa channels', 4, '', '', 'nuoc-hoa-channels', 1, '2024-01-29 01:57:22', '2024-01-29 02:06:55'),
(7, 'Phụ Kiện', 0, 'Phụ Kiện', 'Phụ Kiện', 'phu-kien', 1, '2024-02-03 01:20:09', '2024-02-03 01:20:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_01_22_080750_create_menus_table', 2),
(6, '2024_01_29_141952_create_products_table', 3),
(7, '2024_01_29_142916_update_table_product', 4),
(8, '2024_02_01_065611_create_sliders_table', 5),
(9, '2024_02_21_142411_create_customers_table', 6),
(10, '2024_02_21_142434_create_carts_table', 6),
(11, '2024_02_22_092004_create_customers_table', 7),
(12, '2024_02_22_092009_create_carts_table', 7),
(13, '2024_02_22_133800_create_jobs_table', 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
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
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `content` longtext NOT NULL,
  `menu_id` int(11) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `price_sale` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `thumb` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `content`, `menu_id`, `price`, `price_sale`, `active`, `created_at`, `updated_at`, `thumb`) VALUES
(5, 'Esprit Ruffle Shirt', 'Esprit Ruffle Shirt', 'Esprit Ruffle Shirt', 2, 16, 14, 1, '2024-02-06 01:37:55', '2024-02-06 01:37:55', '/storage/uploads/2024/02/06/product-01.jpeg'),
(6, 'Herschel supply', 'Herschel supply', 'Herschel supply', 2, 17, 15, 1, '2024-02-06 01:38:25', '2024-02-06 01:38:25', '/storage/uploads/2024/02/06/product-02.jpeg'),
(7, 'Only Check Trouser', 'Only Check Trouser', 'Only Check Trouser', 4, 15, 14, 1, '2024-02-06 01:38:50', '2024-02-06 01:38:50', '/storage/uploads/2024/02/06/product-03.jpeg'),
(8, 'Classic Trench Coat', 'Classic Trench Coat', 'Classic Trench Coat', 2, 75, 70, 1, '2024-02-06 01:39:12', '2024-02-06 01:39:12', '/storage/uploads/2024/02/06/product-04.jpeg'),
(9, 'Vintage Inspired Classic', 'Vintage Inspired Classic', 'Vintage Inspired Classic', 7, 93, 88, 1, '2024-02-06 01:39:43', '2024-02-06 01:39:43', '/storage/uploads/2024/02/06/product-06.jpeg'),
(10, 'Front Pocket Jumper', 'Front Pocket Jumper', 'Front Pocket Jumper', 2, 34, NULL, 1, '2024-02-06 01:46:53', '2024-02-06 01:46:53', '/storage/uploads/2024/02/06/product-05.jpeg'),
(11, 'Shirt in Stretch Cotton', 'Shirt in Stretch Cotton', 'Shirt in Stretch Cotton', 2, 52, NULL, 1, '2024-02-06 01:47:11', '2024-02-06 01:47:11', '/storage/uploads/2024/02/06/product-07.jpeg'),
(12, 'Pieces Metallic Printed', 'Pieces Metallic Printed', 'Pieces Metallic Printed', 2, 19, NULL, 1, '2024-02-06 01:47:32', '2024-02-06 01:47:32', '/storage/uploads/2024/02/06/product-08.jpeg'),
(13, 'Converse All Star Hi Plimsolls', 'Converse All Star Hi Plimsolls', 'Converse All Star Hi Plimsolls', 2, 75, NULL, 1, '2024-02-06 01:49:05', '2024-02-06 01:49:05', '/storage/uploads/2024/02/06/product-09.jpeg'),
(14, 'Femme T-Shirt In Stripe', 'Femme T-Shirt In Stripe', 'Femme T-Shirt In Stripe', 2, 26, NULL, 1, '2024-02-06 01:49:23', '2024-02-06 01:49:23', '/storage/uploads/2024/02/06/product-10.jpeg'),
(15, 'Herschel supply', 'Herschel supply', 'Herschel supply', 4, 63, NULL, 1, '2024-02-06 01:49:46', '2024-02-06 01:49:46', '/storage/uploads/2024/02/06/product-11.jpeg'),
(16, 'Herschel supply', 'Herschel supply', 'Herschel supply', 7, 35, NULL, 1, '2024-02-06 01:50:05', '2024-02-06 01:50:05', '/storage/uploads/2024/02/06/product-12.jpeg'),
(17, 'T-Shirt with Sleeve', 'T-Shirt with Sleeve', 'T-Shirt with Sleeve', 2, 18, NULL, 1, '2024-02-06 01:50:26', '2024-02-06 01:50:26', '/storage/uploads/2024/02/06/product-13.jpeg'),
(18, 'Pretty Little Thing', 'Pretty Little Thing', 'Pretty Little Thing', 2, 54, NULL, 1, '2024-02-06 01:50:45', '2024-02-06 01:50:45', '/storage/uploads/2024/02/06/product-14.jpeg'),
(19, 'Mini Silver Mesh Watch', 'Mini Silver Mesh Watch', 'Mini Silver Mesh Watch', 7, 83, NULL, 1, '2024-02-06 01:51:19', '2024-02-06 01:51:19', '/storage/uploads/2024/02/06/product-15.jpeg'),
(20, 'Square Neck Back', 'Square Neck Back', 'Square Neck Back', 2, 30, NULL, 1, '2024-02-06 01:51:37', '2024-02-06 01:51:37', '/storage/uploads/2024/02/06/product-16.jpeg'),
(21, 'Only Check Nailson', 'Only Check Nailson', 'Only Check Nailson', 4, 67, 64, 1, '2024-02-17 01:37:28', '2024-02-17 01:37:28', '/storage/uploads/2024/02/17/maison.webp'),
(22, 'Couple X', 'Áo Polo Nam Bo Sọc Kiểu Hai Màu MPO 1043. Mẫu áo polo trẻ trung, năng động, phù hợp với mọi phong cách và là sản phẩm tuyệt vời để đi làm hay kể cả đi chơi. Chất liệu thoáng mát, mềm mịn.\r\n\r\nChất liệu: 57% Cotton + 38% Polyester + 5% Spandex – 230 GSM.\r\nForm: Regular\r\nMàu sắc: Trắng, Hồng Nhạt, Xanh Navy\r\nSản xuất: Việt Nam', 'Áo Polo Nam Bo Sọc Kiểu Hai Màu MPO 1043. Mẫu áo polo trẻ trung, năng động, phù hợp với mọi phong cách và là sản phẩm tuyệt vời để đi làm hay kể cả đi chơi. Chất liệu thoáng mát, mềm mịn.\r\n\r\nChất liệu: 57% Cotton + 38% Polyester + 5% Spandex – 230 GSM.\r\nForm: Regular\r\nMàu sắc: Trắng, Hồng Nhạt, Xanh Navy\r\nSản xuất: Việt Nam', 4, 45, NULL, 1, '2024-02-17 01:37:58', '2024-02-20 01:41:35', '/storage/uploads/2024/02/17/product-11.jpeg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) NOT NULL,
  `sort_by` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sliders`
--

INSERT INTO `sliders` (`id`, `name`, `url`, `thumb`, `sort_by`, `active`, `created_at`, `updated_at`) VALUES
(2, 'Áo Nam', '#', '/storage/uploads/2024/02/03/slide-02.jpg', 1, 1, '2024-02-03 01:01:42', '2024-02-03 01:01:42'),
(3, 'Áo Nữ', '#', '/storage/uploads/2024/02/03/slide-01.jpg', 1, 1, '2024-02-03 01:01:59', '2024-02-03 01:01:59'),
(4, 'Bộ sưu tập mùa đông', '#', '/storage/uploads/2024/02/03/slide-03.jpg', 1, 1, '2024-02-03 01:02:19', '2024-02-03 01:14:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin123@localhost.com', NULL, '$2y$12$b/.wSfeWHqvGTqY57213Mec7AywNfbyswzVq4y4cQaKJJzcqgAK52', 'IKp0zCQNR0OqefhGM0JyIrIQrXB8Xim5fT3KwbTKgox6deEgMkA5HfxghCaj', '2024-01-17 07:49:41', '2024-01-18 07:49:41'),
(5, 'Phạm Hưng', 'hung.pham@gmail.com', NULL, '$2y$12$DoHtmsuI0vlzGlcDBVt4Fe5ZAmzGZCvHfUSSOqM7D.qL30IhrWfXy', 'lgy2roGfVMEZxvBa2YjaPZ4Bg0QuoBoliWvnw3zkrRz3QAegds4vBfgpCHXo', '2024-02-26 02:27:53', '2024-02-27 01:11:29'),
(6, 'Phạm Văn Hải', 'phamhaig281@gmail.com', NULL, '$2y$12$mEqMqcAq1SG4Y6f99QIXKedjOsN/GexuQ2slzI49AMxWIT.s46lTu', NULL, '2024-02-26 02:31:36', '2024-02-27 01:11:00'),
(7, 'Nguyễn Long', 'longhung.nguyen@gmail.com', NULL, '$2y$12$bn4mKDqNrZMVpG3U7AwHX.NDycZfkTAhJdpapmNBmeDkhgkWRBfYC', NULL, '2024-02-27 01:12:08', '2024-02-27 01:12:08'),
(8, 'Huyền Thanh', 'huyenthanh.pham@gmail.com', NULL, '$2y$12$6SAOitu5YCWQB23A0YqUUeS2SXpAe3CWCcVn/ueTKgAl1ad2P2vd6', NULL, '2024-02-27 01:13:06', '2024-02-27 01:13:06');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_customer_id_foreign` (`customer_id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
