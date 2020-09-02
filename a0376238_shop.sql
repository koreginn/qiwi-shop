-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 10.0.0.129
-- Время создания: Сен 02 2020 г., 22:41
-- Версия сервера: 5.7.26-29
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `a0376238_shop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(49, 15, 'order_id', 'number', 'Номер заказа', 1, 0, 0, 1, 0, 0, '{}', 1),
(50, 15, 'user_id', 'number', 'Номер пользователя', 1, 1, 1, 1, 1, 1, '{}', 2),
(51, 15, 'product_id', 'number', 'Номер продукта', 1, 1, 1, 0, 1, 1, '{}', 3),
(52, 15, 'quantity', 'number', 'Количество', 1, 1, 1, 0, 1, 1, '{}', 4),
(53, 15, 'amount', 'number', 'Итого', 1, 1, 1, 0, 1, 1, '{}', 5),
(54, 15, 'address', 'text', 'Адрес', 1, 1, 1, 0, 1, 1, '{}', 6),
(55, 15, 'status', 'select_dropdown', 'Статус', 1, 1, 1, 1, 1, 1, '{\"default\":\"open\",\"options\":{\"open\":\"\\u0417\\u0430\\u043a\\u0430\\u0437 \\u0441\\u0434\\u0435\\u043b\\u0430\\u043d \\u043d\\u0430 \\u0441\\u0430\\u0439\\u0442\\u0435, \\u043e\\u0436\\u0438\\u0434\\u0430\\u0435\\u0442 \\u043f\\u043e\\u0434\\u0442\\u0432\\u0435\\u0440\\u0436\\u0434\\u0435\\u043d\\u0438\\u0435 \\u043c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440\\u0430\",\"confirmed\":\"\\u0417\\u0430\\u043a\\u0430\\u0437 \\u043f\\u043e\\u0434\\u0442\\u0432\\u0435\\u0440\\u0436\\u0434\\u0435\\u043d, \\u0433\\u043e\\u0442\\u043e\\u0432\\u0438\\u0442\\u0441\\u044f \\u043a \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0435\",\"sent\":\"\\u0417\\u0430\\u043a\\u0430\\u0437 \\u043e\\u0442\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\",\"delivered\":\"\\u0417\\u0430\\u043a\\u0430\\u0437 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043b\\u0435\\u043d\",\"canceled\":\"\\u0417\\u0430\\u043a\\u0430\\u0437 \\u043e\\u0442\\u043c\\u0435\\u043d\\u0435\\u043d\"}}', 7),
(56, 15, 'created_at', 'timestamp', 'Дата создания', 1, 1, 1, 0, 0, 1, '{}', 8),
(57, 15, 'updated_at', 'timestamp', 'Дата обновления', 1, 0, 0, 0, 0, 0, '{}', 9),
(65, 17, 'product_id', 'number', 'Номер продукта', 1, 0, 0, 0, 0, 0, '{}', 1),
(66, 17, 'name', 'text', 'Имя продукта', 1, 1, 1, 1, 1, 1, '{}', 2),
(67, 17, 'info', 'text', 'Описание продукта', 1, 1, 1, 1, 1, 1, '{}', 3),
(68, 17, 'img_url', 'image', 'Изображение продукта', 1, 1, 1, 1, 1, 1, '{}', 4),
(69, 17, 'price', 'number', 'Цена продукта', 1, 1, 1, 1, 1, 1, '{}', 5),
(70, 17, 'created_at', 'timestamp', 'Дата создания', 1, 1, 1, 1, 0, 1, '{}', 6),
(71, 17, 'updated_at', 'timestamp', 'Дата обновления', 1, 0, 0, 0, 0, 0, '{}', 7),
(72, 15, 'bill_id', 'number', 'BillID Номер статуса оплаты', 1, 1, 1, 0, 1, 1, '{}', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2020-09-01 12:28:21', '2020-09-01 12:28:21'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2020-09-01 12:28:21', '2020-09-01 12:28:21'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2020-09-01 12:28:21', '2020-09-01 12:28:21'),
(13, 'status_order', 'status-order', 'Статус заказа', 'Статус заказов', 'voyager-check', 'App\\StatusOrder', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-09-01 14:39:06', '2020-09-01 14:39:06'),
(15, 'orders', 'orders', 'Заказ', 'Заказы', 'voyager-basket', 'App\\Order', NULL, '\\App\\Http\\Controllers\\Voyager\\OrdersController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-09-01 15:01:34', '2020-09-02 16:28:49'),
(17, 'products', 'products', 'Продукт', 'Продукты', 'voyager-categories', 'App\\Product', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-09-01 15:06:41', '2020-09-01 15:06:41');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2020-09-01 12:28:22', '2020-09-01 12:58:52');

-- --------------------------------------------------------

--
-- Структура таблицы `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Главная', '', '_self', 'voyager-boat', '#000000', NULL, 2, '2020-09-01 12:28:22', '2020-09-01 13:08:01', 'voyager.dashboard', 'null'),
(3, 1, 'Пользователи', '', '_self', 'voyager-person', '#000000', NULL, 6, '2020-09-01 12:28:22', '2020-09-01 15:07:54', 'voyager.users.index', 'null'),
(4, 1, 'Роли', '', '_self', 'voyager-lock', '#000000', NULL, 7, '2020-09-01 12:28:22', '2020-09-01 15:07:54', 'voyager.roles.index', 'null'),
(5, 1, 'Инструменты', '', '_self', 'voyager-tools', '#000000', NULL, 9, '2020-09-01 12:28:22', '2020-09-01 15:07:54', NULL, ''),
(6, 1, 'Редактор меню', '', '_self', 'voyager-list', '#000000', 5, 1, '2020-09-01 12:28:22', '2020-09-01 13:08:01', 'voyager.menus.index', 'null'),
(7, 1, 'База Данных', '', '_self', 'voyager-data', '#000000', 5, 2, '2020-09-01 12:28:22', '2020-09-01 13:08:01', 'voyager.database.index', 'null'),
(8, 1, 'Документация', '', '_self', 'voyager-compass', '#000000', 5, 3, '2020-09-01 12:28:22', '2020-09-01 13:08:01', 'voyager.compass.index', 'null'),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2020-09-01 12:28:22', '2020-09-01 13:08:01', 'voyager.bread.index', NULL),
(10, 1, 'Настройки', '', '_self', 'voyager-settings', '#000000', NULL, 10, '2020-09-01 12:28:22', '2020-09-01 15:07:54', 'voyager.settings.index', 'null'),
(11, 1, 'Хуки', '', '_self', 'voyager-hook', '#000000', 5, 5, '2020-09-01 12:28:26', '2020-09-01 13:08:01', 'voyager.hooks', 'null'),
(12, 1, 'Сайт', '/', '_blank', 'voyager-home', '#000000', NULL, 1, '2020-09-01 13:07:54', '2020-09-01 13:08:01', NULL, ''),
(14, 1, 'Каталог', '', '_self', 'voyager-folder', '#000000', NULL, 8, '2020-09-01 13:22:31', '2020-09-01 15:07:54', 'voyager.goods.index', 'null'),
(22, 1, 'Заказы', '', '_self', 'voyager-basket', '#000000', NULL, 4, '2020-09-01 15:01:34', '2020-09-01 15:08:21', 'voyager.orders.index', 'null'),
(24, 1, 'Продукты', '', '_self', 'voyager-categories', NULL, NULL, 3, '2020-09-01 15:06:42', '2020-09-01 15:07:54', 'voyager.products.index', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `order_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `bill_id` int(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `amount` float NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `bill_id`, `product_id`, `quantity`, `amount`, `address`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 178, 148, 1, 1, 'Батайск', 'delivered', '2020-09-02 19:32:39', '2020-09-02 16:32:39'),
(2, 1, 13, 46, 1, 63.88, 'Батайск', 'canceled', '2020-09-02 19:26:27', '2020-09-02 16:26:27'),
(3, 1, 139, 146, 1, 1, 'Батайск 13', 'delivered', '2020-09-02 19:13:41', '2020-09-02 16:13:41'),
(4, 1, 93, 148, 1, 1, 'Батайск', 'open', '2020-09-02 16:33:09', '2020-09-02 16:33:09'),
(5, 1, 93, 148, 1, 1, 'Батайск', 'open', '2020-09-02 16:33:15', '2020-09-02 16:33:15'),
(6, 1, 93, 148, 1, 1, 'Батайск', 'open', '2020-09-02 16:33:16', '2020-09-02 16:33:16'),
(7, 1, 39, 147, 1, 0.1, 'Батайск 23', 'open', '2020-09-02 16:33:29', '2020-09-02 16:33:29'),
(8, 1, 190, 51, 1, 34.2, 'Батайск', 'open', '2020-09-02 16:35:13', '2020-09-02 16:35:13');

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('the.koregin@gmail.com', '$2y$10$nZGX7p0fE/WwrKGC8nhzb.6fT76jtypTu8a4P2izX7RFQtWqJ93LO', '2020-09-02 05:18:16');

-- --------------------------------------------------------

--
-- Структура таблицы `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2020-09-01 12:28:23', '2020-09-01 12:28:23'),
(2, 'browse_bread', NULL, '2020-09-01 12:28:23', '2020-09-01 12:28:23'),
(3, 'browse_database', NULL, '2020-09-01 12:28:23', '2020-09-01 12:28:23'),
(4, 'browse_media', NULL, '2020-09-01 12:28:23', '2020-09-01 12:28:23'),
(5, 'browse_compass', NULL, '2020-09-01 12:28:23', '2020-09-01 12:28:23'),
(6, 'browse_menus', 'menus', '2020-09-01 12:28:23', '2020-09-01 12:28:23'),
(7, 'read_menus', 'menus', '2020-09-01 12:28:23', '2020-09-01 12:28:23'),
(8, 'edit_menus', 'menus', '2020-09-01 12:28:23', '2020-09-01 12:28:23'),
(9, 'add_menus', 'menus', '2020-09-01 12:28:23', '2020-09-01 12:28:23'),
(10, 'delete_menus', 'menus', '2020-09-01 12:28:23', '2020-09-01 12:28:23'),
(11, 'browse_roles', 'roles', '2020-09-01 12:28:23', '2020-09-01 12:28:23'),
(12, 'read_roles', 'roles', '2020-09-01 12:28:23', '2020-09-01 12:28:23'),
(13, 'edit_roles', 'roles', '2020-09-01 12:28:23', '2020-09-01 12:28:23'),
(14, 'add_roles', 'roles', '2020-09-01 12:28:23', '2020-09-01 12:28:23'),
(15, 'delete_roles', 'roles', '2020-09-01 12:28:23', '2020-09-01 12:28:23'),
(16, 'browse_users', 'users', '2020-09-01 12:28:23', '2020-09-01 12:28:23'),
(17, 'read_users', 'users', '2020-09-01 12:28:23', '2020-09-01 12:28:23'),
(18, 'edit_users', 'users', '2020-09-01 12:28:23', '2020-09-01 12:28:23'),
(19, 'add_users', 'users', '2020-09-01 12:28:23', '2020-09-01 12:28:23'),
(20, 'delete_users', 'users', '2020-09-01 12:28:23', '2020-09-01 12:28:23'),
(21, 'browse_settings', 'settings', '2020-09-01 12:28:23', '2020-09-01 12:28:23'),
(22, 'read_settings', 'settings', '2020-09-01 12:28:24', '2020-09-01 12:28:24'),
(23, 'edit_settings', 'settings', '2020-09-01 12:28:24', '2020-09-01 12:28:24'),
(24, 'add_settings', 'settings', '2020-09-01 12:28:24', '2020-09-01 12:28:24'),
(25, 'delete_settings', 'settings', '2020-09-01 12:28:24', '2020-09-01 12:28:24'),
(26, 'browse_hooks', NULL, '2020-09-01 12:28:26', '2020-09-01 12:28:26'),
(57, 'browse_status_order', 'status_order', '2020-09-01 14:39:06', '2020-09-01 14:39:06'),
(58, 'read_status_order', 'status_order', '2020-09-01 14:39:06', '2020-09-01 14:39:06'),
(59, 'edit_status_order', 'status_order', '2020-09-01 14:39:06', '2020-09-01 14:39:06'),
(60, 'add_status_order', 'status_order', '2020-09-01 14:39:06', '2020-09-01 14:39:06'),
(61, 'delete_status_order', 'status_order', '2020-09-01 14:39:06', '2020-09-01 14:39:06'),
(67, 'browse_orders', 'orders', '2020-09-01 15:01:34', '2020-09-01 15:01:34'),
(68, 'read_orders', 'orders', '2020-09-01 15:01:34', '2020-09-01 15:01:34'),
(69, 'edit_orders', 'orders', '2020-09-01 15:01:34', '2020-09-01 15:01:34'),
(70, 'add_orders', 'orders', '2020-09-01 15:01:34', '2020-09-01 15:01:34'),
(71, 'delete_orders', 'orders', '2020-09-01 15:01:34', '2020-09-01 15:01:34'),
(77, 'browse_products', 'products', '2020-09-01 15:06:42', '2020-09-01 15:06:42'),
(78, 'read_products', 'products', '2020-09-01 15:06:42', '2020-09-01 15:06:42'),
(79, 'edit_products', 'products', '2020-09-01 15:06:42', '2020-09-01 15:06:42'),
(80, 'add_products', 'products', '2020-09-01 15:06:42', '2020-09-01 15:06:42'),
(81, 'delete_products', 'products', '2020-09-01 15:06:42', '2020-09-01 15:06:42');

-- --------------------------------------------------------

--
-- Структура таблицы `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `info` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`product_id`, `name`, `info`, `img_url`, `price`, `created_at`, `updated_at`) VALUES
(46, 'Майка 152', 'Лишь стремящиеся вытеснить традиционное производство, нанотехнологии будут превращены в посмешище, хотя само их существование приносит несомненную пользу обществу.', 'products\\September2020\\pXwEIATrX20MgEIQrXEp.webp', 63.88, '2020-09-01 15:57:12', '2020-09-01 15:57:12'),
(47, 'Майка 8678', 'Лишь стремящиеся вытеснить традиционное производство, нанотехнологии будут превращены в посмешище, хотя само их существование приносит несомненную пользу обществу.', 'products\\September2020\\g29asCiP8mpkiAuPeG5S.webp', 56.89, '2020-09-01 15:57:32', '2020-09-01 15:57:32'),
(48, 'Майка 6759', 'В своём стремлении повысить качество жизни, они забывают, что граница обучения кадров выявляет срочную потребность вывода текущих активов.', 'products\\September2020\\louybRL8sj35bF2ljg9p.webp', 908.79, '2020-09-01 15:57:45', '2020-09-01 15:57:45'),
(49, 'Майка 1564', 'В своём стремлении повысить качество жизни, они забывают, что граница обучения кадров выявляет срочную потребность вывода текущих активов.', 'products\\September2020\\PHeDC9FaXfDLYpm1Gv9i.jpg', 14.58, '2020-09-01 15:58:04', '2020-09-01 15:58:04'),
(50, 'Майка 2456', 'Как принято считать, некоторые особенности внутренней политики в равной степени предоставлены сами себе.', 'products\\September2020\\SPmk094B3kAODVqLTvCa.jpg', 4.99, '2020-09-01 15:58:29', '2020-09-01 15:58:29'),
(51, 'Майка 8', 'Лишь стремящиеся вытеснить традиционное производство, нанотехнологии будут превращены в посмешище, хотя само их существование приносит несомненную пользу обществу.', 'products\\September2020\\1Fst4KU5cTVfjm7u516C.jpg', 34.2, '2020-09-01 15:58:57', '2020-09-01 15:58:57'),
(52, 'Майка 63', 'Лишь стремящиеся вытеснить традиционное производство, нанотехнологии будут превращены в посмешище, хотя само их существование приносит несомненную пользу обществу.', 'products\\September2020\\1QcF1bBIS7VoHLWdMLEP.webp', 865.7, '2020-09-01 15:59:15', '2020-09-01 15:59:15'),
(53, 'Майка', 'Имеется спорная точка зрения, гласящая примерно следующее: многие известные личности могут быть призваны к ответу.', 'products\\September2020\\GjnyiKMloTTdFZ5EjCx7.jpg', 23.4, '2020-09-01 15:59:42', '2020-09-01 15:59:42'),
(54, 'Майка 457', 'В своём стремлении повысить качество жизни, они забывают, что граница обучения кадров выявляет срочную потребность вывода текущих активов.', 'products\\September2020\\CMCDizCY6WLsIheruTpE.webp', 10.99, '2020-09-01 15:59:59', '2020-09-01 15:59:59'),
(55, 'Майка Пара', 'В своём стремлении повысить качество жизни, они забывают, что граница обучения кадров выявляет срочную потребность вывода текущих активов.', 'products\\September2020\\3YOSTFQJXLHcQ53mIZws.jpg', 12.59, '2020-09-01 16:00:22', '2020-09-01 16:00:22'),
(56, 'Майка 564', 'В своём стремлении повысить качество жизни, они забывают, что граница обучения кадров выявляет срочную потребность вывода текущих активов.', 'products\\September2020\\x2JecKupvnK0hq45925Q.webp', 46.7, '2020-09-01 16:00:40', '2020-09-01 16:00:40'),
(57, 'Майка Торо', 'Лишь стремящиеся вытеснить традиционное производство, нанотехнологии будут превращены в посмешище, хотя само их существование приносит несомненную пользу обществу.', 'products\\September2020\\J0BSKRYOdlw1uA7ElSUV.webp', 13.8, '2020-09-01 16:01:21', '2020-09-01 16:01:21'),
(58, 'Майка Она', 'Лишь стремящиеся вытеснить традиционное производство, нанотехнологии будут превращены в посмешище, хотя само их существование приносит несомненную пользу обществу.', 'products\\September2020\\g0aDkXnzkTMuu0hnHlaH.webp', 45.9, '2020-09-01 16:01:38', '2020-09-01 16:01:38'),
(59, 'Майка Я', 'В своём стремлении повысить качество жизни, они забывают, что граница обучения кадров выявляет срочную потребность вывода текущих активов.', 'products\\September2020\\lsYh23kCXfAxujt7F0Q9.jpg', 5.9, '2020-09-01 16:01:53', '2020-09-01 16:01:53'),
(60, 'Майка О', 'Имеется спорная точка зрения, гласящая примерно следующее: многие известные личности могут быть призваны к ответу.', 'products\\September2020\\8TPumKxzGFygouhhwVve.webp', 35.13, '2020-09-01 16:02:22', '2020-09-01 16:02:22'),
(61, 'Майка Смайл', 'Лишь стремящиеся вытеснить традиционное производство, нанотехнологии будут превращены в посмешище, хотя само их существование приносит несомненную пользу обществу.', 'products\\September2020\\LJsVtBJX38svqGldMoJb.jpg', 99.99, '2020-09-01 16:02:40', '2020-09-01 16:02:40'),
(62, 'Майка Зёленая', 'Имеется спорная точка зрения, гласящая примерно следующее: многие известные личности могут быть призваны к ответу.', 'products\\September2020\\CcCo4gWMi6OuapVQX11L.jpg', 309.99, '2020-09-01 16:03:01', '2020-09-01 16:03:01'),
(63, 'Майка для розовая', 'Имеется спорная точка зрения, гласящая примерно следующее: многие известные личности могут быть призваны к ответу.', 'products\\September2020\\qkZSo6vzhWnFP58Yxxa2.jpg', 667.99, '2020-09-01 16:03:26', '2020-09-01 16:03:26'),
(64, 'Майка качёк', 'Лишь стремящиеся вытеснить традиционное производство, нанотехнологии будут превращены в посмешище, хотя само их существование приносит несомненную пользу обществу.', 'products\\September2020\\Z2ZP8AGnA2WujcunlM4J.jpg', 666.66, '2020-09-01 16:03:41', '2020-09-01 16:03:41'),
(65, 'Майка полу качёк', 'Как принято считать, некоторые особенности внутренней политики в равной степени предоставлены сами себе.', 'products\\September2020\\J4ucY8JoKTkkc9p8hGOl.webp', 32.1, '2020-09-01 16:04:01', '2020-09-01 16:04:01'),
(66, 'Майка красивая', 'Лишь стремящиеся вытеснить традиционное производство, нанотехнологии будут превращены в посмешище, хотя само их существование приносит несомненную пользу обществу.', 'products\\September2020\\t3mC8WWhwaqNLup9EcyM.jpeg', 13.33, '2020-09-01 16:04:17', '2020-09-01 16:04:17'),
(67, 'Майка жёлтая', 'В своём стремлении повысить качество жизни, они забывают, что граница обучения кадров выявляет срочную потребность вывода текущих активов.', 'products\\September2020\\09A9Abnq4QzCSQNjZ5qw.webp', 90.14, '2020-09-01 16:04:44', '2020-09-01 16:04:44'),
(68, 'Майка полу качёк 2', 'В своём стремлении повысить качество жизни, они забывают, что граница обучения кадров выявляет срочную потребность вывода текущих активов.', 'products\\September2020\\gPt1xC0zuqnfcQL6AXx3.jpg', 21.34, '2020-09-01 16:05:14', '2020-09-01 16:05:14'),
(69, 'Майка цветы', 'В своём стремлении повысить качество жизни, они забывают, что граница обучения кадров выявляет срочную потребность вывода текущих активов.', 'products\\September2020\\ZeNGo9MdfWN4JcSC6cLa.jpg', 16.99, '2020-09-01 16:05:30', '2020-09-01 16:05:30'),
(70, 'Майка чёрная', 'Лишь стремящиеся вытеснить традиционное производство, нанотехнологии будут превращены в посмешище, хотя само их существование приносит несомненную пользу обществу.', 'products\\September2020\\Aa2z2lfT3sSVXRjtsajF.jpg', 3.99, '2020-09-01 16:12:08', '2020-09-01 16:12:08'),
(71, 'Майка цветная', 'Лишь стремящиеся вытеснить традиционное производство, нанотехнологии будут превращены в посмешище, хотя само их существование приносит несомненную пользу обществу.', 'products\\September2020\\hagW40vEJhRBRgsRfc8m.jpg', 28.28, '2020-09-01 16:12:30', '2020-09-01 16:12:30'),
(72, 'Майка спорт', 'Как принято считать, некоторые особенности внутренней политики в равной степени предоставлены сами себе.', 'products\\September2020\\r1oYSJncAAFWROQZvPIa.jpg', 98.45, '2020-09-01 16:13:13', '2020-09-01 16:13:13'),
(73, 'Майка серая', 'Имеется спорная точка зрения, гласящая примерно следующее: многие известные личности могут быть призваны к ответу.', 'products\\September2020\\IyZvLPjfCsOlwTLpLbY2.jpg', 90.12, '2020-09-01 16:13:31', '2020-09-01 16:13:31'),
(74, 'Майка полосатая', 'Как принято считать, некоторые особенности внутренней политики в равной степени предоставлены сами себе.', 'products\\September2020\\DnloZjI1KPFs1kfttTZo.jpg', 22.17, '2020-09-01 16:13:56', '2020-09-01 16:13:56'),
(75, 'Майка ASSR', 'Как принято считать, некоторые особенности внутренней политики в равной степени предоставлены сами себе.', 'products\\September2020\\YEytWVQet14o6qtA31Gp.jpg', 67.34, '2020-09-01 16:14:19', '2020-09-01 16:14:19'),
(76, 'Майка цветная 2', 'Лишь стремящиеся вытеснить традиционное производство, нанотехнологии будут превращены в посмешище, хотя само их существование приносит несомненную пользу обществу.', 'products\\September2020\\1Hp21rzuuAShemN47oce.jpeg', 30.18, '2020-09-01 16:14:39', '2020-09-01 16:14:39'),
(77, 'Майка безрукав', 'Лишь стремящиеся вытеснить традиционное производство, нанотехнологии будут превращены в посмешище, хотя само их существование приносит несомненную пользу обществу.', 'products\\September2020\\7zyVaXFiGyvHZvuo3fPn.jpeg', 90.34, '2020-09-01 16:15:09', '2020-09-01 16:15:09'),
(78, 'Майка розовая 2', 'Имеется спорная точка зрения, гласящая примерно следующее: многие известные личности могут быть призваны к ответу.', 'products\\September2020\\SdsyullyymxYgDNBb80S.jpg', 44.39, '2020-09-01 16:15:27', '2020-09-01 16:15:27'),
(79, 'Майка чёрная 2', 'В своём стремлении повысить качество жизни, они забывают, что граница обучения кадров выявляет срочную потребность вывода текущих активов.', 'products\\September2020\\W7XsXH0jHamsMSC8FGrZ.jpg', 66.66, '2020-09-01 16:15:44', '2020-09-01 16:15:44'),
(80, 'Майка десткая', 'Лишь стремящиеся вытеснить традиционное производство, нанотехнологии будут превращены в посмешище, хотя само их существование приносит несомненную пользу обществу.', 'products\\September2020\\thBb8sF07lLof0TDtbTM.jpg', 345.23, '2020-09-01 16:16:00', '2020-09-01 16:16:00'),
(81, 'Майка бежевая', 'Лишь стремящиеся вытеснить традиционное производство, нанотехнологии будут превращены в посмешище, хотя само их существование приносит несомненную пользу обществу.', 'products\\September2020\\9EZ5Wk8VclJAkQ5Gz6Sf.jpg', 167.56, '2020-09-01 16:16:24', '2020-09-01 16:16:24'),
(82, 'Майка два цвета', 'Лишь стремящиеся вытеснить традиционное производство, нанотехнологии будут превращены в посмешище, хотя само их существование приносит несомненную пользу обществу.', 'products\\September2020\\XTjgEqHZwWnueNupVHbZ.jpg', 343.4, '2020-09-01 16:16:50', '2020-09-01 16:16:50'),
(83, 'Майка цветная 3', 'Имеется спорная точка зрения, гласящая примерно следующее: многие известные личности могут быть призваны к ответу.', 'products\\September2020\\3zT5Sve3cfcdyGmvjkad.jpeg', 565.3, '2020-09-01 16:17:06', '2020-09-01 16:17:06'),
(84, 'Майка белая', 'Как принято считать, некоторые особенности внутренней политики в равной степени предоставлены сами себе.', 'products\\September2020\\4lXOTTWCqDm7GmPZlFhW.jpg', 908.34, '2020-09-01 16:17:23', '2020-09-01 16:17:23'),
(85, 'Майка текст', 'Имеется спорная точка зрения, гласящая примерно следующее: многие известные личности могут быть призваны к ответу.', 'products\\September2020\\3md2MrrBQG7VlclNblUQ.webp', 100.34, '2020-09-01 16:17:53', '2020-09-01 16:17:53'),
(86, 'Майка девочка', 'Имеется спорная точка зрения, гласящая примерно следующее: многие известные личности могут быть призваны к ответу.', 'products\\September2020\\zdRIjA5KLGiIcyQxWIeb.jpg', 324.1, '2020-09-01 16:19:08', '2020-09-01 16:19:08'),
(87, 'Майка с рисунком', 'Имеется спорная точка зрения, гласящая примерно следующее: многие известные личности могут быть призваны к ответу.', 'products\\September2020\\2MQxAA8qVwoRPSvUW33C.jpeg', 905.68, '2020-09-01 16:19:25', '2020-09-01 16:19:25'),
(88, 'Майка с дыркой', 'В своём стремлении повысить качество жизни, они забывают, что граница обучения кадров выявляет срочную потребность вывода текущих активов.', 'products\\September2020\\gM83wtQSIlF7hRwDsCMy.png', 13.83, '2020-09-01 16:19:51', '2020-09-01 16:19:51'),
(89, 'Майка десткая 2', 'Имеется спорная точка зрения, гласящая примерно следующее: многие известные личности могут быть призваны к ответу.', 'products\\September2020\\5A418NP8wClHgvVOpCPb.jpeg', 15.67, '2020-09-01 16:20:09', '2020-09-01 16:20:09'),
(90, 'Майка белая 2', 'В своём стремлении повысить качество жизни, они забывают, что граница обучения кадров выявляет срочную потребность вывода текущих активов.', 'products\\September2020\\S2QOtD0DxQkeeic1c5Gp.jpg', 17.18, '2020-09-01 16:20:29', '2020-09-01 16:20:29'),
(91, 'Майка сереневая', 'Имеется спорная точка зрения, гласящая примерно следующее: многие известные личности могут быть призваны к ответу.', 'products\\September2020\\UMkokIxl0SrDFYkgyzgN.jpg', 12.1, '2020-09-01 16:20:48', '2020-09-01 16:20:48'),
(92, 'Майка чёрная 3', 'Лишь стремящиеся вытеснить традиционное производство, нанотехнологии будут превращены в посмешище, хотя само их существование приносит несомненную пользу обществу.', 'products\\September2020\\DulBSnk888QEf94NEUpT.webp', 170.05, '2020-09-01 16:21:13', '2020-09-01 16:21:13'),
(93, 'Майка медведь', 'Имеется спорная точка зрения, гласящая примерно следующее: многие известные личности могут быть призваны к ответу.', 'products\\September2020\\uEFRqbA0A4Hg1ckh7eBg.jpg', 897.65, '2020-09-01 16:21:29', '2020-09-01 16:21:29'),
(94, 'Майка безрукав 2', 'В своём стремлении повысить качество жизни, они забывают, что граница обучения кадров выявляет срочную потребность вывода текущих активов.', 'products\\September2020\\YGFuiTzODvRMS80hf7Xk.webp', 21.01, '2020-09-01 16:21:49', '2020-09-01 16:21:49'),
(95, 'Майка синяя', 'Имеется спорная точка зрения, гласящая примерно следующее: многие известные личности могут быть призваны к ответу.', 'products\\September2020\\VMSCBx25JvrAaZJDxOBk.jpg', 98.23, '2020-09-01 16:22:11', '2020-09-01 16:22:11'),
(96, 'Майка тёмно-серая', 'Имеется спорная точка зрения, гласящая примерно следующее: многие известные личности могут быть призваны к ответу.', 'products\\September2020\\2yKwUVNQjIzcvrHFDMEq.jpeg', 786.9, '2020-09-01 16:22:42', '2020-09-01 16:22:42'),
(97, 'Майка с фоткой', 'Имеется спорная точка зрения, гласящая примерно следующее: многие известные личности могут быть призваны к ответу.', 'products\\September2020\\fyON2gU4wBoU9YCcMc3o.jpg', 138.37, '2020-09-01 16:23:03', '2020-09-01 16:23:03'),
(98, 'Майка в точку', 'Лишь стремящиеся вытеснить традиционное производство, нанотехнологии будут превращены в посмешище, хотя само их существование приносит несомненную пользу обществу.', 'products\\September2020\\C3S6FbXLbgoA2BmoLDfl.jpg', 19.58, '2020-09-01 16:23:33', '2020-09-01 16:23:33'),
(99, 'Майка 12', 'Как принято считать, некоторые особенности внутренней политики в равной степени предоставлены сами себе.', 'products\\September2020\\ti0aWnmUmhjexisf8j4R.jpg', 12.12, '2020-09-01 16:23:46', '2020-09-01 16:23:46'),
(100, 'Майка с дыркой 2', 'Имеется спорная точка зрения, гласящая примерно следующее: многие известные личности могут быть призваны к ответу.', 'products\\September2020\\XsikiZpkfx0wc3yf0UNs.jpg', 675.79, '2020-09-01 16:24:03', '2020-09-01 16:24:03'),
(101, 'Майка безрукав 3', 'Лишь стремящиеся вытеснить традиционное производство, нанотехнологии будут превращены в посмешище, хотя само их существование приносит несомненную пользу обществу.', 'products\\September2020\\r06gN9nlwia634G5P4Lj.jpg', 17, '2020-09-01 16:24:27', '2020-09-01 16:24:27'),
(102, 'Майка ложка', 'Имеется спорная точка зрения, гласящая примерно следующее: многие известные личности могут быть призваны к ответу.', 'products\\September2020\\NfpmL1zwi7bC4zLPiHR8.jpg', 90.99, '2020-09-01 16:24:43', '2020-09-01 16:24:43'),
(103, 'Майка безрукав 4', 'Как принято считать, некоторые особенности внутренней политики в равной степени предоставлены сами себе.', 'products\\September2020\\ZZarCDNBcWJACGw5w5wz.jpg', 43.12, '2020-09-01 16:25:04', '2020-09-01 16:25:04'),
(104, 'Майка белая 2', 'Имеется спорная точка зрения, гласящая примерно следующее: многие известные личности могут быть призваны к ответу.', 'products\\September2020\\tMpdpN0H5CoSeF0vG73b.jpeg', 198.54, '2020-09-01 16:25:25', '2020-09-01 16:25:25'),
(105, 'Майка с рисунком 2', 'Имеется спорная точка зрения, гласящая примерно следующее: многие известные личности могут быть призваны к ответу.', 'products\\September2020\\CppklVn4zYd6WK50CHTz.webp', 786.39, '2020-09-01 16:25:45', '2020-09-01 16:25:45'),
(106, 'Майка красная', 'В своём стремлении повысить качество жизни, они забывают, что граница обучения кадров выявляет срочную потребность вывода текущих активов.', 'products\\September2020\\0zGDk3Q2dkM0n7JqR2nW.jpg', 32.17, '2020-09-01 16:26:04', '2020-09-01 16:26:04'),
(107, 'Майка десткая 3', 'В своём стремлении повысить качество жизни, они забывают, что граница обучения кадров выявляет срочную потребность вывода текущих активов.', 'products\\September2020\\5jjygQb1SNPOBsEzlxFd.jpg', 657.79, '2020-09-01 16:34:21', '2020-09-01 16:34:21'),
(108, 'Майка ветка', 'Как принято считать, некоторые особенности внутренней политики в равной степени предоставлены сами себе.', 'products\\September2020\\ylpb7Nix4MSVwAjiBio2.jpg', 88.99, '2020-09-01 16:34:55', '2020-09-01 16:34:55'),
(109, 'Майка кружок', 'Как принято считать, некоторые особенности внутренней политики в равной степени предоставлены сами себе.', 'products\\September2020\\UsQqFo8IYpEkneU5lAPK.jpg', 34.78, '2020-09-01 16:35:16', '2020-09-01 16:35:16'),
(110, 'Майка Logo', 'Лишь стремящиеся вытеснить традиционное производство, нанотехнологии будут превращены в посмешище, хотя само их существование приносит несомненную пользу обществу.', 'products\\September2020\\AfQwuHTRMpmeC0I39S1A.jpg', 13.2, '2020-09-01 16:35:36', '2020-09-01 16:35:36'),
(111, 'Майка чёрная 4', 'Имеется спорная точка зрения, гласящая примерно следующее: многие известные личности могут быть призваны к ответу.', 'products\\September2020\\Im5GqTSpQV4Ae7DjEca9.webp', 43.56, '2020-09-01 16:36:01', '2020-09-01 16:36:01'),
(112, 'Майка бэтмен', 'В своём стремлении повысить качество жизни, они забывают, что граница обучения кадров выявляет срочную потребность вывода текущих активов.', 'products\\September2020\\l9TbDtT5uDYXcd8rbShu.jpg', 66.85, '2020-09-01 16:36:34', '2020-09-01 16:36:34'),
(113, 'Майка розовая 3', 'Как принято считать, некоторые особенности внутренней политики в равной степени предоставлены сами себе.', 'products\\September2020\\wowVZFhl87Z2sJ31oj7q.jpg', 85.27, '2020-09-01 16:36:51', '2020-09-01 16:36:51'),
(114, 'Майка белая 5', 'Лишь стремящиеся вытеснить традиционное производство, нанотехнологии будут превращены в посмешище, хотя само их существование приносит несомненную пользу обществу.', 'products\\September2020\\F0InbLP07d4Hhe323vuA.jpg', 45.68, '2020-09-01 16:40:39', '2020-09-01 16:40:39'),
(115, 'Майка с узором', 'Имеется спорная точка зрения, гласящая примерно следующее: многие известные личности могут быть призваны к ответу.', 'products\\September2020\\W6vQehIdVuJcineYwwgY.jpg', 16.2, '2020-09-01 16:41:01', '2020-09-01 16:41:01'),
(116, 'Майка с узором 2', 'В своём стремлении повысить качество жизни, они забывают, что граница обучения кадров выявляет срочную потребность вывода текущих активов.', 'products\\September2020\\AXnEKRXghNCMw7xmroJ3.jpg', 78.9, '2020-09-01 16:41:24', '2020-09-01 16:41:24'),
(117, 'Майка 34.50', 'Лишь стремящиеся вытеснить традиционное производство, нанотехнологии будут превращены в посмешище, хотя само их существование приносит несомненную пользу обществу.', 'products\\September2020\\ZFdxSNree8x2OWsrKLdZ.jpg', 92.11, '2020-09-01 16:41:42', '2020-09-01 16:41:42'),
(118, 'Майка десткая 4', 'Имеется спорная точка зрения, гласящая примерно следующее: многие известные личности могут быть призваны к ответу.', 'products\\September2020\\MMUxnAXwJxhtuC4ecmwX.jpeg', 93.25, '2020-09-01 16:42:07', '2020-09-01 16:42:07'),
(119, 'Две майки', 'Имеется спорная точка зрения, гласящая примерно следующее: многие известные личности могут быть призваны к ответу.', 'products\\September2020\\zJKH3xdY6atAqKpK44ZR.jpg', 34.45, '2020-09-01 16:42:50', '2020-09-01 16:42:50'),
(120, 'Майка с узором 3', 'В своём стремлении повысить качество жизни, они забывают, что граница обучения кадров выявляет срочную потребность вывода текущих активов.', 'products\\September2020\\UTbo3WXWwnSWV5UHTnbN.jpg', 67.73, '2020-09-01 16:43:06', '2020-09-01 16:43:06'),
(121, 'Майка мужская', 'Имеется спорная точка зрения, гласящая примерно следующее: многие известные личности могут быть призваны к ответу.', 'products\\September2020\\JGMXj7ToBUYks0cUz8xM.jpg', 13.45, '2020-09-01 16:43:24', '2020-09-01 16:43:24'),
(122, 'Майка серая', 'Имеется спорная точка зрения, гласящая примерно следующее: многие известные личности могут быть призваны к ответу.', 'products\\September2020\\8Oh0cEZm2SHdu5342VgM.jpg', 89.75, '2020-09-01 16:43:47', '2020-09-01 16:43:47'),
(123, 'Майка лиса', 'Имеется спорная точка зрения, гласящая примерно следующее: многие известные личности могут быть призваны к ответу.', 'products\\September2020\\ou4btPe14Y9vfilvfEzc.jpg', 10.45, '2020-09-01 16:44:01', '2020-09-01 16:44:01'),
(124, 'Майка линия', 'Лишь стремящиеся вытеснить традиционное производство, нанотехнологии будут превращены в посмешище, хотя само их существование приносит несомненную пользу обществу.', 'products\\September2020\\sMpBHpC2lgd1evRDQ2BX.jpg', 37.45, '2020-09-01 16:44:20', '2020-09-01 16:44:20'),
(125, 'Майка с логотипом', 'Лишь стремящиеся вытеснить традиционное производство, нанотехнологии будут превращены в посмешище, хотя само их существование приносит несомненную пользу обществу.', 'products\\September2020\\D82osth9Y7FrstxhMbQz.jpg', 45.78, '2020-09-01 16:44:40', '2020-09-01 16:44:40'),
(126, 'Майка картинка', 'В своём стремлении повысить качество жизни, они забывают, что граница обучения кадров выявляет срочную потребность вывода текущих активов.', 'products\\September2020\\MkwtYmAPmFYDcKsHZLMM.png', 675.79, '2020-09-01 16:44:54', '2020-09-01 16:44:54'),
(127, 'Три майки', 'Как принято считать, некоторые особенности внутренней политики в равной степени предоставлены сами себе.', 'products\\September2020\\53o0JUVJxZbH271ZJpWk.jpg', 892.8, '2020-09-01 16:45:08', '2020-09-01 16:45:08'),
(128, 'Майка платье', 'Лишь стремящиеся вытеснить традиционное производство, нанотехнологии будут превращены в посмешище, хотя само их существование приносит несомненную пользу обществу.', 'products\\September2020\\TNZr4vwmAFv6uTjNc385.jpg', 908.13, '2020-09-01 16:45:25', '2020-09-01 16:45:25'),
(129, 'Две майки 2', 'Имеется спорная точка зрения, гласящая примерно следующее: многие известные личности могут быть призваны к ответу.', 'products\\September2020\\YFKO9W6iIxsY0WrF7HvE.jpg', 453.72, '2020-09-01 16:45:48', '2020-09-01 16:45:48'),
(130, 'Майка волк', 'Лишь стремящиеся вытеснить традиционное производство, нанотехнологии будут превращены в посмешище, хотя само их существование приносит несомненную пользу обществу.', 'products\\September2020\\JzqDzlAJ1wHIzfVnFiv3.jpg', 46.39, '2020-09-01 16:46:01', '2020-09-01 16:46:01'),
(131, 'Майка платье 2', 'Имеется спорная точка зрения, гласящая примерно следующее: многие известные личности могут быть призваны к ответу.', 'products\\September2020\\6jQ0ZCRw9Dx8wjEH2sJ2.jpg', 69.57, '2020-09-01 16:46:15', '2020-09-01 16:46:15'),
(132, 'Майка белая 3', 'Лишь стремящиеся вытеснить традиционное производство, нанотехнологии будут превращены в посмешище, хотя само их существование приносит несомненную пользу обществу.', 'products\\September2020\\WwUObB5el52Z6B97dCHc.jpg', 564.45, '2020-09-01 16:47:03', '2020-09-01 16:47:03'),
(133, 'Майка с узором 4', 'В своём стремлении повысить качество жизни, они забывают, что граница обучения кадров выявляет срочную потребность вывода текущих активов.', 'products\\September2020\\aOhS8xSr6UAskCfRQafy.jpg', 84.2, '2020-09-01 16:47:19', '2020-09-01 16:47:19'),
(134, 'Майка детская 5', 'Как принято считать, некоторые особенности внутренней политики в равной степени предоставлены сами себе.', 'products\\September2020\\0d7KU1MifDaBipfZOxmc.jpg', 56.67, '2020-09-01 16:47:37', '2020-09-01 16:47:37'),
(135, 'Майка платье 3', 'Как принято считать, некоторые особенности внутренней политики в равной степени предоставлены сами себе.', 'products\\September2020\\o2h1Dd0JdhEa8usazHZt.jpg', 546.88, '2020-09-01 16:48:04', '2020-09-01 16:48:04'),
(136, 'Майка белая 4', 'Имеется спорная точка зрения, гласящая примерно следующее: многие известные личности могут быть призваны к ответу.', 'products\\September2020\\apPAAVy8DjBOXRD4GVN2.jpg', 675.67, '2020-09-01 16:48:24', '2020-09-01 16:48:24'),
(137, 'Майка женская', 'В своём стремлении повысить качество жизни, они забывают, что граница обучения кадров выявляет срочную потребность вывода текущих активов.', 'products\\September2020\\VaimEvIq56v1W4NRWaWc.jpg', 890.9, '2020-09-01 16:48:39', '2020-09-01 16:48:39'),
(138, 'Белая тёмно-зелёная', 'Имеется спорная точка зрения, гласящая примерно следующее: многие известные личности могут быть призваны к ответу.', 'products\\September2020\\irvwojnhRvvb7PUUwIGH.jpg', 786, '2020-09-01 16:48:54', '2020-09-01 16:48:54'),
(139, 'Майка пресс', 'В своём стремлении повысить качество жизни, они забывают, что граница обучения кадров выявляет срочную потребность вывода текущих активов.', 'products\\September2020\\6LJQpYReoQv45b3hWnp6.jpg', 138.08, '2020-09-01 16:49:11', '2020-09-01 16:49:11'),
(140, 'Майка надпись', 'Лишь стремящиеся вытеснить традиционное производство, нанотехнологии будут превращены в посмешище, хотя само их существование приносит несомненную пользу обществу.', 'products\\September2020\\gcCymPjEb5vH4gSpIlx6.jpg', 786.97, '2020-09-01 16:49:25', '2020-09-01 16:49:25'),
(141, 'Майка короткая', 'Лишь стремящиеся вытеснить традиционное производство, нанотехнологии будут превращены в посмешище, хотя само их существование приносит несомненную пользу обществу.', 'products\\September2020\\uKcK8CTPiFI2wNTrlCQm.webp', 758.85, '2020-09-01 16:49:42', '2020-09-01 16:49:42'),
(142, 'Майка безрукав 5', 'Лишь стремящиеся вытеснить традиционное производство, нанотехнологии будут превращены в посмешище, хотя само их существование приносит несомненную пользу обществу.', 'products\\September2020\\i4gupB1X5XWrX2uakVO3.jpeg', 675.69, '2020-09-01 16:49:58', '2020-09-01 16:49:58'),
(143, 'Майка безрукав 6', 'Как принято считать, некоторые особенности внутренней политики в равной степени предоставлены сами себе.', 'products\\September2020\\AL7Tnk2qGX4UoMSWINnR.jpg', 89.75, '2020-09-01 16:50:13', '2020-09-01 16:50:13'),
(144, 'Байка бокс', 'Лишь стремящиеся вытеснить традиционное производство, нанотехнологии будут превращены в посмешище, хотя само их существование приносит несомненную пользу обществу.', 'products\\September2020\\26mgOurqZ1reCQuwIoVB.jpg', 67.89, '2020-09-01 16:50:32', '2020-09-01 16:50:32'),
(145, 'Майка женская 7', 'Имеется спорная точка зрения, гласящая примерно следующее: многие известные личности могут быть призваны к ответу.', 'products\\September2020\\Veqx5tbxkb7xaiCkASYh.jpg', 908.87, '2020-09-01 16:50:46', '2020-09-01 16:50:46'),
(146, 'Майка женская 5', 'Как принято считать, некоторые особенности внутренней политики в равной степени предоставлены сами себе.', 'products\\September2020\\WM4TpEt4MOSj2swxpWgD.jpg', 1, '2020-09-01 16:51:00', '2020-09-02 11:31:02'),
(147, 'Четыре майки', 'Имеется спорная точка зрения, гласящая примерно следующее: многие известные личности могут быть призваны к ответу.', 'products\\September2020\\G79bcDLqGAKUKnjIBeiJ.jpg', 0.1, '2020-09-01 16:51:00', '2020-09-02 11:25:04'),
(148, 'Майка война', 'В своём стремлении повысить качество жизни, они забывают, что граница обучения кадров выявляет срочную потребность вывода текущих активов.', 'products\\September2020\\IAYd2Ks8C56kJJDirJb8.jpg', 1, '2020-09-02 14:23:00', '2020-09-02 11:30:02');

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Администратор', '2020-09-01 12:28:22', '2020-09-01 13:24:05'),
(2, 'user', 'Гость', '2020-09-01 12:28:22', '2020-09-01 13:24:14');

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(11, 'site.p2p_key', 'Ключ p2p', '48e7qUxn9T7RyYE1MVZswX1FRSbE6iyCj2gCRwwF3Dnh5XrasNTx3BGPiMsyXQFNKQhvukniQG8RTVhYm3iPvweDnUc67tuwLUDoxKVnXBKAq1zgKG31TyLAw582uyq8KCxr9j5nXfDVC7arQznvBKapsEwzv7jhzSP1VNNMPJfF3Dxb5nbUbCQ6A4XV8', NULL, 'text', 6, 'Site'),
(12, 'site.title', 'Title сайта', 'Qiwi Shop | Интернет-магазин', NULL, 'text', 8, 'Site'),
(13, 'site.meta_description', 'Meta-Description сайта', 'Интернет-магазин Qiwi Shop', NULL, 'text', 9, 'Site'),
(14, 'site.meta_keywords', 'Meta-Keywords сайта', 'Интернет-Магазин, Qiwi, Shop', NULL, 'text', 10, 'Site'),
(15, 'site.secret_key', 'Секретный ключ Qiwi', 'eyJ2ZXJzaW9uIjoiUDJQIiwiZGF0YSI6eyJwYXlpbl9tZXJjaGFudF9zaXRlX3VpZCI6InBiandpOS0wMCIsInVzZXJfaWQiOiI3OTg5NzAzMzA2NCIsInNlY3JldCI6ImIzMjRlMzQwODY5ZDY2OTgzYjRjOWIxZTA0OGIzMGQ4ZmY1OTY1YmM5ZjU2ZjYyZDJjMjU5ZDYxMWY1MzFjYmEifX0=', NULL, 'text', 7, 'Site');

-- --------------------------------------------------------

--
-- Структура таблицы `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Александр Корегин', 'the.koregin@yandex.ru', 'users/default.png', NULL, '$2y$10$sT8g/ZbudTqDp.BbJnevE.KVvG55QlZDY/Czvj7T9RtORAGiJljF.', 'HdAYaxAsKrq3zD3Bj73JGLPgTE1EdtXg5UMnBS72y2eEAlyJYCmfWeiQIZlZ', '{\"locale\":\"ru\"}', '2020-09-01 12:29:45', '2020-09-02 05:30:40'),
(2, 1, 'Михаил', 'the.koregin@gmail.com', 'users/default.png', NULL, '$2y$10$eosNrhnjQhhKKAxIuaVv9evBWa7PpDVCJBAhKE5bFXK7zOUBz8hpe', 'kuTU9uQqbAibW4jjtnDjbjtKB1Gigg9mece854we2GAF9E3QGg7u4uml9glO', '{\"locale\":\"ru\"}', '2020-09-02 05:01:57', '2020-09-02 05:03:20');

-- --------------------------------------------------------

--
-- Структура таблицы `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Индексы таблицы `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Индексы таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `orders_status_index` (`status`),
  ADD KEY `orders_user_id_index` (`user_id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Индексы таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Индексы таблицы `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Индексы таблицы `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT для таблицы `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Ограничения внешнего ключа таблицы `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
