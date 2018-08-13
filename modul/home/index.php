<?php
  include "../../config/database.php";
  
  $w=mysql_fetch_array(mysql_query("select alamat_website from identitas"));
  
  header("location:http://$w[alamat_website]");
?>
