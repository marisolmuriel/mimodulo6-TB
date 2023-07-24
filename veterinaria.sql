-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-07-2023 a las 04:10:20
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `veterinaria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `api_especie`
--

CREATE TABLE `api_especie` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `api_especie`
--

INSERT INTO `api_especie` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Canino', '2023-07-21 18:02:32.476614', '2023-07-21 18:02:32.476614'),
(2, 'Felino', '2023-07-21 18:02:39.762821', '2023-07-21 18:02:39.762821');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `api_mascota`
--

CREATE TABLE `api_mascota` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `raza` varchar(50) NOT NULL,
  `color` varchar(50) NOT NULL,
  `edad` int(11) NOT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `especie_id` bigint(20) NOT NULL,
  `propietario_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `api_mascota`
--

INSERT INTO `api_mascota` (`id`, `nombre`, `raza`, `color`, `edad`, `foto`, `created_at`, `updated_at`, `especie_id`, `propietario_id`) VALUES
(1, 'Chato', 'Criollo', 'Amarillo', 5, 'mascotas/avatar1.png', '2023-07-21 18:04:20.988684', '2023-07-21 18:04:20.988684', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `api_propietario`
--

CREATE TABLE `api_propietario` (
  `id` bigint(20) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `ci` varchar(15) NOT NULL,
  `direccion` longtext DEFAULT NULL,
  `contacto` int(11) NOT NULL,
  `correo` varchar(254) NOT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `api_propietario`
--

INSERT INTO `api_propietario` (`id`, `nombres`, `apellidos`, `ci`, `direccion`, `contacto`, `correo`, `foto`, `created_at`, `updated_at`) VALUES
(1, 'Mario', 'Chungara Lopez', '111', 'av españa1234', 72315369, 'mario@gmail.com', NULL, '2023-07-19 03:20:50.674993', '2023-07-19 03:25:49.426875'),
(2, 'Juan Carlos', 'Lopez Perez', '222', 'Velasco galvarro y sucre 256', 71125879, 'carlos@gmail.com', NULL, '2023-07-19 03:23:41.089706', '2023-07-19 03:23:41.090738'),
(3, 'Willma Laury', 'Ayma Villarte', '333', 'Av. civica 789', 72357489, 'willma@gmail.com', NULL, '2023-07-20 23:36:34.300078', '2023-07-20 23:36:34.300078'),
(4, 'Armando', 'Rosas Cosme', '4444', 'socavon 123', 7265478, 'armando@gmail.com', NULL, '2023-07-20 23:42:25.055156', '2023-07-20 23:42:25.055156'),
(5, 'Maritza', 'Salguero Mamani', '123456', 'Velasco galvarro 500', 7236547, 'maritza@gmail.com', NULL, '2023-07-21 01:14:38.871154', '2023-07-21 02:44:11.201915'),
(6, 'Marco', 'Aurelio', '56546', 'pagador 123', 654654, 'marco@gmail.com', NULL, '2023-07-21 13:47:29.978345', '2023-07-21 15:52:48.412164'),
(7, 'Gabriel', 'Perez Mendieta', '123465', 'Av heroes del chaco123', 1234659, 'gabriel@gmail.com', NULL, '2023-07-21 13:51:49.698402', '2023-07-21 15:56:00.494174'),
(8, 'maria', 'perez gonzales', '56798867', 'velasco123', 72315479, 'mary@gmail.com', NULL, '2023-07-21 15:53:47.779394', '2023-07-21 15:54:09.984982'),
(9, 'mari rene', 'soliz', '8976', 'desconocido', 687897, 'mariarene@gmail.com', '', '2023-07-22 01:57:24.508879', '2023-07-22 01:57:56.557490'),
(10, 'elba', 'loza', '00001', 'desconocido', 721564789, 'elba@gmail.com', 'propietarios/avatar2_jqulAY9.png', '2023-07-22 02:01:13.140371', '2023-07-22 02:01:13.141499'),
(11, 'yesenia', 'condori', '6871231', 'norteña', 98448989, 'chiti@gmail.com', 'propietarios/avatar1_6XGz8eB.png', '2023-07-22 02:03:13.413825', '2023-07-22 02:03:13.413825');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add especie', 7, 'add_especie'),
(26, 'Can change especie', 7, 'change_especie'),
(27, 'Can delete especie', 7, 'delete_especie'),
(28, 'Can view especie', 7, 'view_especie'),
(29, 'Can add propietario', 8, 'add_propietario'),
(30, 'Can change propietario', 8, 'change_propietario'),
(31, 'Can delete propietario', 8, 'delete_propietario'),
(32, 'Can view propietario', 8, 'view_propietario'),
(33, 'Can add mascota', 9, 'add_mascota'),
(34, 'Can change mascota', 9, 'change_mascota'),
(35, 'Can delete mascota', 9, 'delete_mascota'),
(36, 'Can view mascota', 9, 'view_mascota');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$nwekbzWCa0IP4jPu7He73L$M9l41RPtPAHhknAycoKIrGOo2G2NSvuu/kmVdi4CVCo=', '2023-07-21 01:12:29.256569', 1, 'vet007', '', '', 'vet@gmail.com', 1, 1, '2023-07-19 03:09:28.228577');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-07-19 03:20:50.675991', '1', 'Propietario object (1)', 1, '[{\"added\": {}}]', 8, 1),
(2, '2023-07-19 03:23:41.091526', '2', 'Propietario object (2)', 1, '[{\"added\": {}}]', 8, 1),
(3, '2023-07-19 03:25:49.437109', '1', 'Propietario object (1)', 2, '[{\"changed\": {\"fields\": [\"Direccion\"]}}]', 8, 1),
(4, '2023-07-21 01:14:38.874359', '5', 'Propietario object (5)', 1, '[{\"added\": {}}]', 8, 1),
(5, '2023-07-21 02:43:17.796327', '5', 'Propietario object (5)', 2, '[{\"changed\": {\"fields\": [\"Foto\"]}}]', 8, 1),
(6, '2023-07-21 02:44:11.202913', '5', 'Propietario object (5)', 2, '[{\"changed\": {\"fields\": [\"Foto\"]}}]', 8, 1),
(7, '2023-07-21 18:02:32.478319', '1', 'Especie object (1)', 1, '[{\"added\": {}}]', 7, 1),
(8, '2023-07-21 18:02:39.763819', '2', 'Especie object (2)', 1, '[{\"added\": {}}]', 7, 1),
(9, '2023-07-21 18:04:20.989994', '1', 'Mascota object (1)', 1, '[{\"added\": {}}]', 9, 1),
(10, '2023-07-22 02:01:13.142442', '10', 'Propietario object (10)', 1, '[{\"added\": {}}]', 8, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(7, 'api', 'especie'),
(9, 'api', 'mascota'),
(8, 'api', 'propietario'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-07-19 03:07:14.944928'),
(2, 'auth', '0001_initial', '2023-07-19 03:07:15.471607'),
(3, 'admin', '0001_initial', '2023-07-19 03:07:15.551866'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-07-19 03:07:15.558956'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-07-19 03:07:15.563855'),
(6, 'api', '0001_initial', '2023-07-19 03:07:15.672343'),
(7, 'contenttypes', '0002_remove_content_type_name', '2023-07-19 03:07:15.726294'),
(8, 'auth', '0002_alter_permission_name_max_length', '2023-07-19 03:07:15.763901'),
(9, 'auth', '0003_alter_user_email_max_length', '2023-07-19 03:07:15.803774'),
(10, 'auth', '0004_alter_user_username_opts', '2023-07-19 03:07:15.809755'),
(11, 'auth', '0005_alter_user_last_login_null', '2023-07-19 03:07:15.843864'),
(12, 'auth', '0006_require_contenttypes_0002', '2023-07-19 03:07:15.845854'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2023-07-19 03:07:15.852835'),
(14, 'auth', '0008_alter_user_username_max_length', '2023-07-19 03:07:15.868793'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2023-07-19 03:07:15.885750'),
(16, 'auth', '0010_alter_group_name_max_length', '2023-07-19 03:07:15.925377'),
(17, 'auth', '0011_update_proxy_permissions', '2023-07-19 03:07:15.932392'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2023-07-19 03:07:15.949311'),
(19, 'sessions', '0001_initial', '2023-07-19 03:07:15.976300'),
(20, 'api', '0002_alter_mascota_foto_alter_propietario_foto', '2023-07-21 01:07:08.440636');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0nnnykamgq5ue7wxxiea6sgr6qyb1j53', '.eJxVjMsOwiAUBf-FtSFwCy116d5vIPdBpWogKe3K-O_apAvdnpk5LxVxW3PcWlriLOqsrDr9boT8SGUHcsdyq5prWZeZ9K7ogzZ9rZKel8P9O8jY8rfuOiBjgCboTSALBBOiFxl4tJbZh25wBi2J8ezZBgCmkYmDwx6coHp_ANnUN_4:1qLxbY:mhAF3MjkvHLQ8VDocFFHIaf1Md3NV6NgnPQG0hjSCpk', '2023-08-02 03:11:56.458600'),
('59yqlvaay4fg77qjt0uxtjysq8tz2kwk', '.eJxVjMsOwiAUBf-FtSFwCy116d5vIPdBpWogKe3K-O_apAvdnpk5LxVxW3PcWlriLOqsrDr9boT8SGUHcsdyq5prWZeZ9K7ogzZ9rZKel8P9O8jY8rfuOiBjgCboTSALBBOiFxl4tJbZh25wBi2J8ezZBgCmkYmDwx6coHp_ANnUN_4:1qMeh3:Yl3j9fAgkIyiuRDfwPQq334wpmzJ6sUhIcvGXRQ5WUw', '2023-08-04 01:12:29.259560');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `api_especie`
--
ALTER TABLE `api_especie`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `api_mascota`
--
ALTER TABLE `api_mascota`
  ADD PRIMARY KEY (`id`),
  ADD KEY `api_mascota_especie_id_76ff385f_fk_api_especie_id` (`especie_id`),
  ADD KEY `api_mascota_propietario_id_0819f4c7_fk_api_propietario_id` (`propietario_id`);

--
-- Indices de la tabla `api_propietario`
--
ALTER TABLE `api_propietario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ci` (`ci`);

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `api_especie`
--
ALTER TABLE `api_especie`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `api_mascota`
--
ALTER TABLE `api_mascota`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `api_propietario`
--
ALTER TABLE `api_propietario`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `api_mascota`
--
ALTER TABLE `api_mascota`
  ADD CONSTRAINT `api_mascota_especie_id_76ff385f_fk_api_especie_id` FOREIGN KEY (`especie_id`) REFERENCES `api_especie` (`id`),
  ADD CONSTRAINT `api_mascota_propietario_id_0819f4c7_fk_api_propietario_id` FOREIGN KEY (`propietario_id`) REFERENCES `api_propietario` (`id`);

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
