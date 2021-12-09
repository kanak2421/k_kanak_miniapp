<?php
   require_once('includes.php');

  //get all records
  function getAll($conn) {
        $sql = "SELECT * FROM mini_car";
        $stm = $conn->query($sql);

        while($row = $stm->fetchAll(PDO::FETCH_ASSOC)) {
            $result = $row;
        }
        return $result;
    }
 
 //get one records from ID
 function getOne($conn, $id) {
        $sql = "SELECT * FROM mini_car WHERE ID=" . $id . "";
        $stm = $conn->query($sql);
        while($row = $stm->fetchAll(PDO::FETCH_ASSOC)) {
            $result = $row;
        }
        return $result;
}
