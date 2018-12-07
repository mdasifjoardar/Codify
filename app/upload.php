<?php

    $name = $_POST["name"];
    $description = $_POST["description"];
    $inputformat = $_POST["inputformat"];
    $outputformat = $_POST["outputformat"];
    $constraints = $_POST["contraints"];
    $examplein = $_POST["examplein"];
    $exampleout = $_POST["exampleout"];
    $inputtest = $_POST["inputtest"];
    $outputtest = $_POST["outputtest"];

    echo $name." ".$description."<br>";

    // $con = pg_connect(getenv("DATABASE_URL"));
    $con = new mysqli("localhost","root","","oj");

    if($con->connect_error)
    {
        die("Failed to connect to database! <br> Error:".$con->connect_error);
    }

    echo "Connected to database successfully<br>";

    $con->set_charset("utf8");

    session_start();

    // start a transaction

    $con->begin_transaction();

    $sql = "insert into questions values('','$name','$description','$inputformat',
    '$outputformat','$constraints','$examplein','$exampleout')";
    $result = $con->query($sql);
    // $result = pg_query($sql);

    $ai = mysqli_insert_id($con);

    // inserted or not

    if($ai)
    {
        $sql = "insert into testcases values('$ai','$inputtest','$outputtest')";
        $result = $con->query($sql);
        // $result = pg_query($sql);

        if(!$result)
        {
            // testcase insert Failed show error

            // can we add functionality to redirect to question upload page
            // with the question info filled in
            $_SESSION["errorMsg"] = 'Question upload failed! Try again!';
        }
        else
        {
            $_SESSION["successMsg"] = 'Question uploaded successfully!';
            $con->commit();
        }

        $con->close();
        header('Location: ../public/practice.php');

    }
?>
