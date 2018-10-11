<?php

    include('../lib/Session.php');
    Session::checkSession();

?>
<?php
    include('../config/config.php');
    include('../lib/Database.php');
  
?>


<?php
    $db=new Database();

?>

<?php
    if(!isset($_GET['delpage']) || $_GET['delpage'] == NULL){
        echo "<script>window.location= 'index.php';</script>";
    }else{
        $pageid = $_GET['delpage'];
       
        

        $delquery="delete from tbl_page where id= '$pageid'";
        $deldata=$db->delete($delquery);

        if($deldata){
        	echo "<script>
        			alert('Page Deleted Successfully !!');
        		 </script>";
        		  echo "<script>window.location= 'index.php';</script>";
        }else{

        	echo "<script>
        			alert('Page  Not Deleted Successfully !!');
        		 </script>";
        		  echo "<script>window.location= 'index.php';</script>";
        }
    }


?>