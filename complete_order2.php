<?php
include 'connect.php';
session_start();

$sql =" UPDATE `order` SET `delivery_status`=1 WHERE `id`='".$_GET['id']."'";
$res = $conn->query($sql) ;
 $_SESSION['success']=' Order Successfully completed';
?>
<script>
//alert("Delete Successfully");
window.location = "completed_order.php";
</script>

