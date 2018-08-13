<?php
include "../config/database.php";
function anti_injection($data){
        $filter = mysql_real_escape_string(stripslashes(strip_tags(htmlspecialchars($data,ENT_QUOTES))));
        return $filter;
}
$username = ($_POST['username']);
$pass     = ($_POST['password']);

// pastikan username dan password adalah berupa huruf atau angka.
if (!ctype_alnum($username) OR !ctype_alnum($pass)){
  echo header("location:../index.php");
}
else{
$login=mysql_query("SELECT * FROM users WHERE
                    LEVEL_ID='admin'
                    AND USERNAME='$username' AND PASSWORD='$pass'                     
                    AND BLOKIR='0'
                    ");
$ketemu=mysql_num_rows($login);
$r=mysql_fetch_array($login);

// Apabila username dan password ditemukan
if ($ketemu > 0){
  session_start();
  include "../timeout.php";

  $_SESSION[namauser]     = $r[USERNAME];
  $_SESSION[namalengkap]  = $r[NAMA_LENGKAP];
  $_SESSION[passuser]     = $r[PASSWORD];
  $_SESSION[user_id]     = $r[USER_ID];
  $_SESSION[leveluser]    = 'admin';
  $_SESSION[session_id]    = $r[session_id];
  
  // session timeout
  $_SESSION[login] = 1;
  timer();

	$id_lama = session_id();
	
	session_regenerate_id();

	$id_baru = session_id();

  mysql_query("UPDATE users SET ID_SESSION='$id_baru' WHERE USERNAME='$username'");
  header('location:../system.php?link=home');
}
else{
  header('location:../home.php?link=loginAdmin');
}
}
?>
