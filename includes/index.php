<?php
    include("functions.php");
    $result = array();
    $id = isset($_GET['id']) ? $_GET['id'] : "";
    if($id!="") {      
        $result=getOne($pdo, $id);
    } else {
		$result=getAll($pdo);
    }

	if(!isset($result)||empty($result)){
		echo json_encode(array("code"=>0,"msg"=>"there has no data!!"));
		exit;
	}else{
        echo json_encode(array("code"=>1,"msg"=>"there has data!!","data"=>$result));
        //echo json_encode($result);
    }
?>