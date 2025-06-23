-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:27017
-- Время создания: Июн 10 2025 г., 10:52
-- Версия сервера: 8.0.30
-- Версия PHP: 8.0.22

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

--
-- Структура таблицы `book`
--

CREATE TABLE `book` (
  `id` int NOT NULL,
  `us_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` int NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `specialist` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `book`
--

INSERT INTO `book` (`id`, `us_name`, `date`, `email`, `specialist`) VALUES
(2, 'F F', 6, 'or@gmail.com', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `candidate`
--

CREATE TABLE `candidate` (
  `id` int NOT NULL,
  `firstname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middlename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int NOT NULL,
  `phone` varchar(17) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `candidate`
--

INSERT INTO `candidate` (`id`, `firstname`, `lastname`, `middlename`, `age`, `phone`, `job_id`) VALUES
(1, 'HHIU', 'Gfhu', 'fhif', 23, '+7 896 534-25-61', 3),
(2, 'ПГВ', 'Авоа', 'арошва', 45, '+7 896 534-25-62', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `date`
--

CREATE TABLE `date` (
  `id` int NOT NULL,
  `date` date NOT NULL,
  `time` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `date`
--

INSERT INTO `date` (`id`, `date`, `time`) VALUES
(1, '2025-06-14', 1),
(4, '2025-06-14', 2),
(5, '2025-06-14', 12),
(6, '2025-06-14', 5),
(7, '2025-06-14', 3),
(8, '2025-06-14', 4),
(9, '2025-06-14', 6),
(10, '2025-06-14', 7),
(11, '2025-06-14', 8),
(12, '2025-06-14', 9),
(13, '2025-06-14', 10),
(14, '2025-06-14', 11),
(15, '2025-06-14', 13),
(16, '2025-06-14', 14),
(17, '2025-06-14', 15),
(18, '2025-06-14', 16),
(19, '2025-06-14', 17),
(20, '2025-06-14', 18);

-- --------------------------------------------------------

--
-- Структура таблицы `job`
--

CREATE TABLE `job` (
  `id` int NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `job`
--

INSERT INTO `job` (`id`, `name`, `image`) VALUES
(1, 'Секретарь сельского совета', 'images/sekretar.jpg'),
(2, 'Специалист земельных отношений', 'images/zemlya.jpg'),
(3, 'Бухгалтер', 'images/buhgalter.jpg'),
(4, 'Юрист', 'images/urist.jpg'),
(5, 'Специалист по социальной работе', 'images/socrabitnik.jpg'),
(6, 'Инженер коммунального хозяйства', 'images/obslrab.jpg'),
(7, 'Специалист природопользования', 'images/pochvo.jpg'),
(8, 'Специалист по культуре и спорту', 'images/sport.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `services`
--

CREATE TABLE `services` (
  `id` int NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `services`
--

INSERT INTO `services` (`id`, `name`, `image`, `description`) VALUES
(1, 'Бухгалтерский учёт', 'images/rezyume.jpg', ' Ведение первичной документации: обработка и учёт всех финансовых операций. <br>\r\nРасчёт заработной платы и налогов: своевременное и точное начисление выплат сотрудникам. <br>\r\nСоставление и сдача отчётности: подготовка всех необходимых отчётов в соответствии с законодательством. <br>\r\nКонсультации по вопросам бухгалтерского учёта: помощь в решении сложных вопросов и разъяснение норм законодательства.'),
(2, 'Финансовый аудит', 'images/sekretar.jpg', ' Проверку достоверности финансовой отчётности: анализ финансовых документов на соответствие законодательству и стандартам. <br>\r\nОценку эффективности использования бюджетных средств: контроль за целевым расходованием ресурсов. <br>\r\nВыявление финансовых рисков: анализ потенциальных угроз и разработка рекомендаций по их минимизации. <br>\r\nКонсультации по вопросам финансового контроля: помощь в улучшении системы внутреннего контроля.'),
(3, 'Налоговое консультирование', 'images/urist.jpg', ' Консультации по вопросам налогового законодательства: разъяснение сложных вопросов и помощь в применении норм. <br>\r\nАнализ налоговых рисков: выявление потенциальных проблем и разработка рекомендаций по их минимизации. <br>\r\nПомощь в подготовке налоговой отчётности: проверка правильности заполнения деклараций и расчётов. <br>\r\nКонсультации по вопросам налогового планирования: помощь в оптимизации налоговых обязательств.');

-- --------------------------------------------------------

--
-- Структура таблицы `time`
--

CREATE TABLE `time` (
  `id` int NOT NULL,
  `time` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `time`
--

INSERT INTO `time` (`id`, `time`) VALUES
(1, '09.00-09.20'),
(2, '09.20-09.40'),
(3, '09.40-10.00'),
(4, '10.00-10.20'),
(5, '10.20-10.40'),
(6, '10.40-11.00'),
(7, '11.00-11.20'),
(8, '11.20-11.40'),
(9, '11.40-12.00'),
(10, '12.00-12.20'),
(11, '12.20-12.40'),
(12, '12.40-13.00'),
(13, '14.00-14.20'),
(14, '14.20-14.40'),
(15, '14.40-15.00'),
(16, '15.00-15.20'),
(17, '15.20-15.40'),
(18, '15.40-16.00');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_ibfk_1` (`specialist`),
  ADD KEY `date` (`date`);

--
-- Индексы таблицы `candidate`
--
ALTER TABLE `candidate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_id` (`job_id`);

--
-- Индексы таблицы `date`
--
ALTER TABLE `date`
  ADD PRIMARY KEY (`id`),
  ADD KEY `time` (`time`);

--
-- Индексы таблицы `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `time`
--
ALTER TABLE `time`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `book`
--
ALTER TABLE `book`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `candidate`
--
ALTER TABLE `candidate`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `date`
--
ALTER TABLE `date`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `job`
--
ALTER TABLE `job`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `services`
--
ALTER TABLE `services`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `time`
--
ALTER TABLE `time`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`specialist`) REFERENCES `job` (`id`),
  ADD CONSTRAINT `book_ibfk_2` FOREIGN KEY (`date`) REFERENCES `date` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `candidate`
--
ALTER TABLE `candidate`
  ADD CONSTRAINT `candidate_ibfk_1` FOREIGN KEY (`job_id`) REFERENCES `job` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `date`
--
ALTER TABLE `date`
  ADD CONSTRAINT `date_ibfk_1` FOREIGN KEY (`time`) REFERENCES `time` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
