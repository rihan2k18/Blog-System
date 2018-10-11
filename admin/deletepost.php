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
    if(!isset($_GET['delpostid']) || $_GET['delpostid'] == NULL){
        echo "<script>window.location= 'postlist.php';</script>";
    }else{
        $postid = $_GET['delpostid'];
        $query= "select * from tbl_post where id='$postid' ";
        $getdata=$db->select($query);

        if($getdata){
        	while ($delimg=$getdata->fetch_assoc()) {
        		$dellink = $delimg['image'];
        		uniqid($dellink);
        	}
        }

        $delquery="delete from tbl_post where id= '$postid'";
        $deldata=$db->delete($delquery);

        if($deldata){
        	echo "<script>
        			alert('Data Deleted Successfully !!');
        		 </script>";
        		  echo "<script>window.location= 'postlist.php';</script>";
        }else{

        	echo "<script>
        			alert('Data  Not Deleted Successfully !!');
        		 </script>";
        		  echo "<script>window.location= 'postlist.php';</script>";
        }
    }


?>