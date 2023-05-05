-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: togetherapp
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activities`
--

DROP TABLE IF EXISTS `activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` decimal(10,8) DEFAULT NULL,
  `longitude` decimal(11,8) DEFAULT NULL,
  `start_time` datetime NOT NULL,
  `duration` time NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_participants` int NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nbr_participants` int unsigned DEFAULT '0',
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'rue Saint Martin 25',
  `postcode` int unsigned NOT NULL DEFAULT '4020',
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DefaultCity',
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Belgique',
  PRIMARY KEY (`id`),
  KEY `activities_category_id_foreign` (`category_id`),
  KEY `activities_user_id_foreign` (`user_id`),
  CONSTRAINT `activities_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `activities_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activities`
--

LOCK TABLES `activities` WRITE;
/*!40000 ALTER TABLE `activities` DISABLE KEYS */;
INSERT INTO `activities` VALUES (1,'Ab numquam aliquam praesentium autem.',50.59998400,5.57843800,'2023-06-10 07:30:00','11:03:00','corporis labore amet explicabo aut et voluptatum deserunt aut aliquam',4,3,9,'2023-04-12 19:16:50','2023-04-16 20:52:21',3,'route du Condroz 22',4031,'Liège','Belgique'),(2,'une belle activité',50.58740360,5.50073660,'2023-07-30 22:36:00','02:22:00','vel et corrupti consequatur ut autem repudiandae distinctio nobis vero',3,3,6,'2023-04-12 19:16:50','2023-04-17 02:31:23',2,'rue de la Justice 46',4100,'Seraing','Belgique'),(3,'Voluptatum consequatur id ea.',50.59898000,5.64142800,'2023-06-17 00:37:07','17:11:36','harum enim qui eius dicta provident repellat aperiam eum qui',6,5,10,'2023-04-12 19:16:50','2023-04-12 19:16:50',0,'Chapelle de l\'Amour Miséricordieux',4051,'Chaudfontaine','Belgique'),(4,'Molestiae qui deserunt iusto reprehenderit distinctio possimus ratione.',50.59938000,5.81198300,'2023-09-25 06:26:33','05:09:52','sunt omnis illo molestiae numquam dolores doloremque sint quibusdam sit',13,5,6,'2023-04-12 19:16:50','2023-04-12 19:16:50',0,'chemin du Nauzaury',4650,'Herve','Belgique'),(5,'Dolores eligendi sint libero labore ex sit.',50.59942000,5.66998300,'2023-10-22 21:50:36','16:20:09','soluta hic asperiores incidunt maiores in similique molestiae impedit omnis',18,5,1,'2023-04-12 19:16:50','2023-04-12 19:16:50',0,'rue du cimetière 35',4624,'Fléron','Belgique'),(6,'Beatae et dolores in nihil quia.',50.59931750,5.64666666,'2023-09-08 16:31:08','15:19:25','voluptatem aspernatur veritatis veniam optio ad accusamus mollitia quos ratione',9,5,6,'2023-04-12 19:16:50','2023-04-12 19:16:50',0,'Chevremont Parking',4051,'Vaux-Sous-Chevremont','Belgique'),(7,'Ut ipsam enim quaerat voluptas consectetur facilis.',50.57848000,5.87500300,'2023-06-05 23:22:49','11:48:36','doloribus unde quisquam tempora inventore dolores qui tenetur omnis et',2,5,8,'2023-04-12 19:16:50','2023-04-12 19:16:50',0,'chemin de Roulheid 25',4802,'Verviers','Belgique'),(8,'Minus eos voluptates nulla voluptatum quis.',50.59938011,5.64154900,'2023-07-21 22:23:20','13:23:35','eaque velit soluta facere ipsam quaerat consectetur assumenda labore quod',5,5,10,'2023-04-12 19:16:50','2023-04-12 19:16:50',0,'rue de Chevremont, 33',4051,'Chaudfontaine','Belgique'),(9,'Maxime suscipit perspiciatis voluptates cum sit qui sit aut.',50.59562000,5.64100000,'2024-05-07 00:37:36','04:31:28','quod quia quo quidem quasi dolorum eum temporibus omnis nulla',18,3,1,'2023-04-12 19:16:50','2023-04-12 19:16:50',0,'rue Fond des Bois 59 ',4050,'Chaudfontaine','Belgique'),(10,'Ratione explicabo et nulla repudiandae fuga.',50.59966600,5.54154300,'2023-11-11 01:09:24','06:09:57','harum libero qui unde animi aperiam reiciendis itaque nostrum et',15,4,7,'2023-04-12 19:16:50','2023-04-12 19:16:50',0,'Thier Laly 27',4102,'Seraing','Belgique'),(13,'titre',NULL,NULL,'2023-05-04 18:36:00','01:36:00','sfvd',7,4,11,'2023-05-03 13:36:42','2023-05-03 13:36:42',0,'rue Saint Donat 30',4161,'Anthisnes','Belgique'),(14,'refgv',50.50140050,5.50862965,'2023-05-18 19:27:00','01:27:00','dfqvs<c',7,3,11,'2023-05-03 15:27:30','2023-05-03 15:27:30',0,'rue Saint Donat 30',4161,'Anthisnes','Belgique'),(15,'Mon activité',50.60253280,5.51654870,'2023-05-27 05:45:00','02:45:00','Blabla',6,3,12,'2023-05-05 19:46:58','2023-05-05 19:46:58',0,'rue du Papillon',4100,'Seraing','Belgique');
/*!40000 ALTER TABLE `activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activities_have_participants`
--

DROP TABLE IF EXISTS `activities_have_participants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activities_have_participants` (
  `activity_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `activities_have_participants_activity_id_foreign` (`activity_id`),
  KEY `activities_have_participants_user_id_foreign` (`user_id`),
  CONSTRAINT `activities_have_participants_activity_id_foreign` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`),
  CONSTRAINT `activities_have_participants_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activities_have_participants`
--

LOCK TABLES `activities_have_participants` WRITE;
/*!40000 ALTER TABLE `activities_have_participants` DISABLE KEYS */;
INSERT INTO `activities_have_participants` VALUES (1,2,'2023-04-16 16:04:45','2023-04-16 16:04:45'),(1,3,'2023-04-16 16:05:00','2023-04-16 16:05:00'),(1,1,'2023-04-16 16:05:12','2023-04-16 16:05:12'),(2,3,'2023-04-16 16:05:18','2023-04-16 16:05:18'),(2,5,'2023-04-16 16:05:23','2023-04-16 16:05:23');
/*!40000 ALTER TABLE `activities_have_participants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookmarks`
--

DROP TABLE IF EXISTS `bookmarks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookmarks` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `activity_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bookmarks_user_id_foreign` (`user_id`),
  KEY `bookmarks_activity_id_foreign` (`activity_id`),
  CONSTRAINT `bookmarks_activity_id_foreign` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`),
  CONSTRAINT `bookmarks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookmarks`
--

LOCK TABLES `bookmarks` WRITE;
/*!40000 ALTER TABLE `bookmarks` DISABLE KEYS */;
INSERT INTO `bookmarks` VALUES (73,11,2,'2023-04-18 17:43:56','2023-04-18 17:43:56'),(77,11,14,'2023-05-03 19:32:12','2023-05-03 19:32:12'),(81,12,15,'2023-05-05 19:47:41','2023-05-05 19:47:41');
/*!40000 ALTER TABLE `bookmarks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'ut','2023-04-12 19:16:50','2023-04-12 19:16:50','pexels-karolina-grabowska-4226881.jpg'),(2,'aut','2023-04-12 19:16:50','2023-04-12 19:16:50','pexels-tomas-anunziata-695207.jpg'),(3,'autem','2023-04-12 19:16:50','2023-04-12 19:16:50','pexels-karolina-grabowska-4041268.jpg'),(4,'nihil','2023-04-12 19:16:50','2023-04-12 19:16:50','pexels-cottonbro-studio-9818645.jpg'),(5,'fugit','2023-04-12 19:16:50','2023-04-12 19:16:50','pexels-adrien-olichon-4237148.jpg');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `images` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activity_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `images_activity_id_foreign` (`activity_id`),
  CONSTRAINT `images_activity_id_foreign` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (1,'font-1.jpg',1,'2023-04-12 19:16:50','2023-04-12 19:16:50'),(3,'font-3.jpg',3,'2023-04-12 19:16:50','2023-04-12 19:16:50'),(4,'font-4.jpg',4,'2023-04-12 19:16:50','2023-04-12 19:16:50'),(5,'font-5.jpg',5,'2023-04-12 19:16:50','2023-04-12 19:16:50'),(6,'font-6.jpg',6,'2023-04-12 19:16:50','2023-04-12 19:16:50'),(7,'ai-1.jpg',7,'2023-04-12 19:16:50','2023-04-12 19:16:50'),(8,'ai-2.jpg',8,'2023-04-12 19:16:50','2023-04-12 19:16:50'),(9,'bed2.jpg',9,'2023-04-12 19:16:50','2023-04-12 19:16:50'),(10,'font-3.jpg',10,'2023-04-12 19:16:50','2023-04-12 19:16:50'),(25,'Planet9_Wallpaper_5000x2813.jpg',2,'2023-04-17 02:31:05','2023-04-17 02:31:05'),(28,'272002634_4573774419336515_5963782127732872543_n.jpg',13,'2023-05-03 13:36:42','2023-05-03 13:36:42'),(29,'272002634_4573774419336515_5963782127732872543_n.jpg',14,'2023-05-03 15:27:30','2023-05-03 15:27:30'),(30,'exotic.jpeg',15,'2023-05-05 19:46:58','2023-05-05 19:46:58');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=377 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (363,'2014_10_12_000000_create_users_table',1),(364,'2014_10_12_100000_create_password_reset_tokens_table',1),(365,'2014_10_12_200000_add_two_factor_columns_to_users_table',1),(366,'2019_08_19_000000_create_failed_jobs_table',1),(367,'2019_12_14_000001_create_personal_access_tokens_table',1),(368,'2023_03_04_073011_create_categories_table',1),(369,'2023_03_28_130428_create_sessions_table',1),(370,'2023_04_04_065917_create_activities_table',1),(371,'2023_04_04_090741_create_users_have_categories_table',1),(372,'2023_04_04_093150_create_images_table',1),(373,'2023_04_04_102456_create_users_have_followers_table',1),(374,'2023_04_04_112846_create_activities_have_categories_table',1),(375,'2023_04_13_014512_activities_have_participants',2),(376,'2023_04_17_173238_bookmarks',3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('uNmy1VJTBxKoiehPuNykz7KKAUWPBlunwmtgMnhE',11,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36','YTo1OntzOjY6Il90b2tlbiI7czo0MDoiUUtFdnBOSmNVbkhNOWJweUNGNUxoTThUb3ZDWE11YVpkbUJ2OXNtYSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTE7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkeTZJcW1pZTdjNTJlY1NwVjBpdU1zT3daTHEyUGJ6dGZyeTROVVRzQWZPMzJLSUo1a0dPVEMiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM0OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvdXNlci9wcm9maWxlIjt9fQ==',1683325089);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pseudo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int DEFAULT NULL,
  `birth_date` date NOT NULL,
  `photo` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `intro` tinytext COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint unsigned DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT 'user1.jpg',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Arianna Huel','Jayde Adams','Mrs. Ernestina Casper PhD',2,'1986-02-16','avatar.jpg','Marcellaport','Kyrgyz Republic','est placeat minima dolores','numquam non a perspiciatis nostrum eaque et earum qui magnam','qkshlerin@example.org','2023-04-12 19:16:50','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'gnFvLW6Gpg',NULL,'user1.jpg','2023-04-12 19:16:50','2023-04-12 19:16:50'),(2,'Zack Ondricka','Lauryn Muller','Dr. Ernie Lubowitz',3,'2018-11-23','avatar.jpg','Port Cecileland','Turkmenistan','vero aut consequatur rerum','explicabo provident sit eaque animi earum nulla illum iste est','gislason.clinton@example.com','2023-04-12 19:16:50','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'WIxG1Qtxku',NULL,'user1.jpg','2023-04-12 19:16:50','2023-04-12 19:16:50'),(3,'Prof. Nona Thompson DVM','Yadira Balistreri','Mr. Rollin Dibbert',3,'2008-08-08','avatar.jpg','Lake Ivy','Anguilla','eum occaecati nulla et','ducimus sed facere et ducimus aut ut eum quae aut','lula.haley@example.com','2023-04-12 19:16:50','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'D17VHTOt7x',NULL,'user1.jpg','2023-04-12 19:16:50','2023-04-12 19:16:50'),(4,'Llewellyn Kulas','Anya Stark','Martin Doyle',4,'2015-06-26','avatar.jpg','Vicentahaven','Moldova','reprehenderit omnis qui non','eaque vel recusandae earum ea magni assumenda laboriosam et aut','alessia60@example.net','2023-04-12 19:16:50','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'yJX50hIxI7',NULL,'user1.jpg','2023-04-12 19:16:50','2023-04-12 19:16:50'),(5,'Daron Crist','Prof. Jeffrey Lakin IV','Tito Bednar',2,'1971-08-01','avatar.jpg','Port Eldred','Lithuania','amet tempore totam voluptatem','exercitationem ut labore ab culpa inventore porro blanditiis maiores maxime','clint.little@example.net','2023-04-12 19:16:50','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'L5mKLwf2Pi',NULL,'user1.jpg','2023-04-12 19:16:50','2023-04-12 19:16:50'),(6,'Jasen Lynch','Dr. Deondre Frami','Mrs. Janice Cormier',3,'2022-05-01','avatar.jpg','Jaskolskibury','Eritrea','nulla dolor nesciunt earum','possimus expedita tenetur qui rem sequi libero sit est hic','oerdman@example.org','2023-04-12 19:16:50','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'YtWBVvScdl',NULL,'user1.jpg','2023-04-12 19:16:50','2023-04-12 19:16:50'),(7,'Nikita Erdman PhD','Meredith Marks Sr.','Sylvan Reinger',5,'2004-09-11','avatar.jpg','East Josefafort','Mayotte','officia dolor est magnam','qui repudiandae voluptas velit assumenda id labore est tenetur et','lblock@example.com','2023-04-12 19:16:50','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'vAyiw6umOk',NULL,'user1.jpg','2023-04-12 19:16:50','2023-04-12 19:16:50'),(8,'Buck Kuphal PhD','Pauline Feil','Flo Wyman',1,'1996-07-25','avatar.jpg','New Sherwood','Georgia','et consequatur non est','maiores sed aut nostrum cupiditate et quod voluptates aut harum','stokes.christ@example.net','2023-04-12 19:16:50','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'6UethxTKcS',NULL,'user1.jpg','2023-04-12 19:16:50','2023-04-12 19:16:50'),(9,'Prof. Roy Yost','Marcelle Kemmer','Dr. Eldred Senger DDS',3,'2017-06-09','avatar.jpg','Lake Amirahaven','Cook Islands','enim at deserunt id','vero enim ex expedita consequatur eius et quaerat facere qui','okeefe.ike@example.com','2023-04-12 19:16:50','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'x5h9fqzocL',NULL,'user1.jpg','2023-04-12 19:16:50','2023-04-12 19:16:50'),(10,'Molly Moen','Earline Gerlach','Vern Zieme',4,'2001-01-20','avatar.jpg','Lake Meredithfort','Niue','omnis voluptas rerum ab','sed enim facilis ut voluptate consequatur voluptas culpa dolor omnis','dhand@example.net','2023-04-12 19:16:50','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'JkxjKGRsgy',NULL,'user1.jpg','2023-04-12 19:16:50','2023-04-12 19:16:50'),(11,'Morgan','Halin','Momo',NULL,'2023-03-15',NULL,'Liège','Belgique',NULL,NULL,'morgan@gmail.com',NULL,'$2y$10$y6Iqmie7c52ecSpV0iuMsOwZLq2Pbztfry4NUTsAfO32KIJ5kGOTC',NULL,NULL,NULL,NULL,NULL,'user1.jpg','2023-04-12 19:36:18','2023-04-12 19:36:18'),(12,'Martin','Ricard','M',NULL,'1989-08-17',NULL,'Liège','Belgique',NULL,NULL,'m@gmail.com',NULL,'$2y$10$CktHvRSZMbnpQ3tJHa1csemwCSWcDQRdaGMNDYuhTmoON5M2UPEH2',NULL,NULL,NULL,NULL,NULL,'user1.jpg','2023-05-05 17:30:11','2023-05-05 17:30:11');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_have_categories`
--

DROP TABLE IF EXISTS `users_have_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_have_categories` (
  `user_id` bigint unsigned NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `users_have_categories_user_id_foreign` (`user_id`),
  KEY `users_have_categories_category_id_foreign` (`category_id`),
  CONSTRAINT `users_have_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `users_have_categories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_have_categories`
--

LOCK TABLES `users_have_categories` WRITE;
/*!40000 ALTER TABLE `users_have_categories` DISABLE KEYS */;
INSERT INTO `users_have_categories` VALUES (1,2,NULL,NULL),(2,5,NULL,NULL),(3,3,NULL,NULL),(4,2,NULL,NULL),(5,4,NULL,NULL),(6,5,NULL,NULL),(7,5,NULL,NULL),(8,5,NULL,NULL),(9,3,NULL,NULL),(10,4,NULL,NULL);
/*!40000 ALTER TABLE `users_have_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_have_followers`
--

DROP TABLE IF EXISTS `users_have_followers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_have_followers` (
  `user_id` bigint unsigned NOT NULL,
  `follower_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `users_have_followers_user_id_foreign` (`user_id`),
  KEY `users_have_followers_follower_id_foreign` (`follower_id`),
  CONSTRAINT `users_have_followers_follower_id_foreign` FOREIGN KEY (`follower_id`) REFERENCES `users` (`id`),
  CONSTRAINT `users_have_followers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_have_followers`
--

LOCK TABLES `users_have_followers` WRITE;
/*!40000 ALTER TABLE `users_have_followers` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_have_followers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-06  0:19:43
