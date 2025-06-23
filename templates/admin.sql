-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 27 2024 г., 10:22
-- Версия сервера: 8.0.30
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `admin`
--

-- --------------------------------------------------------

CREATE DATABASE `admin`;
use `admin`;

--
-- Структура таблицы `job`
--

CREATE TABLE `job` (
  `id` int NOT NULL,
  `name` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `job`
--

INSERT INTO `job` (`id`, `name`, `image`, `url`) VALUES
(1, 'Секретарь сельского совета', 'images/sekretar.jpg', 'form.php'),
(2, 'Специалист земельных отношений', 'images/zemlya.jpg', 'form.php'),
(3, 'Бухгалтер', 'images/buhgalter.jpg', 'form.php'),
(4, 'Юрист', 'images/urist.jpg', 'form.php'),
(5, 'Специалист по социальной работе', 'images/socrabitnik.jpg', 'form.php'),
(6, 'Инженер коммунального хозяйства', 'images/obslrab.jpg', 'form.php'),
(7, 'Специалист природопользования', 'images/pochvo.jpg', 'form.php'),
(8, 'Специалист по культуре и спорту', 'images/sport.jpg', 'form.php');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `us_name` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `phone` varchar(20) NOT NULL, 
  `specialist` int NOT NULL,
  FOREIGN KEY (`specialist`) REFERENCES `job`(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



CREATE TABLE `services` (
  `id` int NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO `services` (`id`, `name`, `image`, `description`) VALUES
(1, 'Бухгалтерский учёт', 'images/rezyume.jpg', ' Ведение первичной документации: обработка и учёт всех финансовых операций. <br>\r\nРасчёт заработной платы и налогов: своевременное и точное начисление выплат сотрудникам. <br>\r\nСоставление и сдача отчётности: подготовка всех необходимых отчётов в соответствии с законодательством. <br>\r\nКонсультации по вопросам бухгалтерского учёта: помощь в решении сложных вопросов и разъяснение норм законодательства.'),
(2, 'Финансовый аудит', 'images/sekretar.jpg', ' Проверку достоверности финансовой отчётности: анализ финансовых документов на соответствие законодательству и стандартам. <br>\r\nОценку эффективности использования бюджетных средств: контроль за целевым расходованием ресурсов. <br>\r\nВыявление финансовых рисков: анализ потенциальных угроз и разработка рекомендаций по их минимизации. <br>\r\nКонсультации по вопросам финансового контроля: помощь в улучшении системы внутреннего контроля.'),
(3, 'Налоговое консультирование', 'images/urist.jpg', ' Консультации по вопросам налогового законодательства: разъяснение сложных вопросов и помощь в применении норм. <br>\r\nАнализ налоговых рисков: выявление потенциальных проблем и разработка рекомендаций по их минимизации. <br>\r\nПомощь в подготовке налоговой отчётности: проверка правильности заполнения деклараций и расчётов. <br>\r\nКонсультации по вопросам налогового планирования: помощь в оптимизации налоговых обязательств.');


ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `job`
--
ALTER TABLE `job`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

ALTER TABLE `services`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
