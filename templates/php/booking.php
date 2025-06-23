<?php
    session_start();

    
    require '../application/db.php';

    $em = false;
    foreach ($_POST as $key => $value) {
        $_SESSION['book'][$key] = $value; 
        if (empty($value)) {
            $em = true;
        } 
    }

    if ($em) {
        $_SESSION['message'] = "Заполните все поля";
        // header('Location: /booking.php');
        exit;
    }

    $us_name = $_POST['us_name'];
    $date = date('Y-m-d', strtotime($_POST['date']));
    $time = $_POST['time'];
    $phone = $_POST['email'];
    $specialist = $_POST['specialist'];

    $request = "INSERT INTO `date`(date, time) VALUES ('$date', '$time')";
    if (!$conn->query($request)) {
        $_SESSION['message'] = 'Не удалось добавить данные';
        header('Location: /booking.php');
        exit;
    }
    $date = $conn->insert_id;

    $sql = "INSERT INTO book(us_name, date, email, specialist) VALUES ('$us_name', '$date', '$phone', '$specialist')";
    if (!$conn->query($sql)) {
        $_SESSION['message'] = 'Не удалось добавить данные';
        echo $conn->error;
        // header('Location: /booking.php');
        exit;
    }

    $_SESSION['message'] = "Мы вам позвоним!";
    unset($_SESSION['book']);

    header('Location: /booking.php');