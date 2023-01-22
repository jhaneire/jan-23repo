<?php


    $name = $_POST["name"];
    $email = $_POST["email"];
    $message = $_POST["Message"];
    $phone = $_POST["name2"];
    $subject = $_POST["email2"];

    $mailTo = "jcmendez187@gmail.com";
    $headers ="From: ".$email;
    $subject ="Subject: ".$subject;
    $txt = "You have received an e-mail from ".$name.
            ".\n\n Message: ".$message.".\n\n Contact me here: ".$phone;

mail($mailTo,$subject, $txt, $headers) or die ("Error! ");

header("Location: indexs.php?mailsend");



?>