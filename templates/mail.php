<?php

$to = $phone;

$subject = 'Вы записаны на прием';

$message = '
<html>
<head>
  <title>Вы записаны на прием</title>
</head>
<body>
  <p>Вы записаны на прием '.date('d.m.Y', strtotime($_POST['date'])).' 
  в Администрацию Залесовского муниципального округа по адресу с. Залесово, ул. Партизанская, 26. <br />
  Запись можно отменить по <a href="">ссылке</a><br />
  Если у вас возникли вопросы свяжитесь с нами по телефону (38592) 2-23-71 <br />
</p>
</body>
</html>
';

$headers[] = 'MIME-Version: 1.0';
$headers[] = 'Content-type: text/html; charset=utf-8';

$headers[] = 'To: '.$us_name.' <'.$phone.'>';
$headers[] = 'From: Администарция Залесовского округа <email>';

// Отправляем
mail($to, $subject, $message, implode("\r\n", $headers));