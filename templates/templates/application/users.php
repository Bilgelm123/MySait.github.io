<?php
session_start();
include ("db.php");

// Проверка на успешное подключение к базе данных
if ($conn === null) {
    die("Ошибка подключения к базе данных");
}

// Если форма была отправлена
if (isset($_POST['button-reg'])) {

    // Получение данных из формы
    $us_name = $_POST['us_name'];
    $age = $_POST['age'];
    $telefon = $_POST['telefon'];

    // Подготовка SQL-запроса
    $sql = "INSERT INTO users (us_name, age, telefon) VALUES (?, ?, ?)";
    $stmt = $conn->prepare($sql);

    // Проверка на успешное выполнение метода prepare()
    if ($stmt === false) {
        die("Ошибка при подготовке SQL-запроса: " . $conn->error);
    }

    // Привязка значений к параметрам запроса
    $stmt->bind_param("ssi", $us_name, $age, $telefon);

    // Выполнение запроса
    $stmt->execute();

    // Закрытие подготовленного запроса
    $stmt->close();

    // Сообщение об успешной отправке данных
    $message = "Мы вам позвоним!";
}

// Закрытие соединения с базой данных
$conn = null;
?>