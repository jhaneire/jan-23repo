<?php  
session_start(); //to ensure you are using same session
session_destroy(); //destroy the session
 
?>
<script>
window.location="indexs.php";
</script>
<?php
//to redirect back to "index.html" after logging out
  exit;
?>