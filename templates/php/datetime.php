<?php

    require '../application/db.php';

    $date = date('Y-m-d', strtotime($_POST['date']));

    $result = $conn->query("SELECT * FROM `date` WHERE `date` = '$date'");

    if ($result->num_rows < 18) {
        $time_busy = [];
        while ($row = $result->fetch_assoc()) {
            array_push($time_busy, $row['time']);
        }
        if ($time_busy != []) {
            $time_busy = implode("', '", $time_busy);
            $request = "SELECT * FROM `time` WHERE id not in ('$time_busy')";
        } else {
            $request = "SELECT * FROM `time`";
        }
        echo $request;
        $time = $conn->query($request);
        $options = "";
        while ($row = $time->fetch_assoc()) {
            $options .= '<option value="'.$row['id'].'">'.$row['time'].'</oprion>';
        }
        echo $options;
        exit;
    } 
    echo "null";