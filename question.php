<!DOCTYPE html>
<html>
        <head>
            <title></title>
            <meta charset='utf-8'>
            <link rel="stylesheet" href="assets/stylesheets/main.css">
            <script type="text/javascript" src="submission_api.js">
            </script>
        </head>

        <script type="text/javascript" src="assets/scripts/getTemplate.js">    </script>

    	<body onload="getTemplate()">

    		<!-- Header -->

            <header id="header" class="container group">        </header>

            <section class="row">
              <div class="grid">

                <!-- Question -->

                <section class="col-2-3">

                    <!-- script to fetch the question list -->

                    <?php
                        $con = pg_connect(getenv("DATABASE_URL"));

                        if($con->connect_error)
                        {
                            // echo "<h1>failed<h1>";
                            die("Failed to connect to database! ".$con->connect_error);
                        }

                        echo "<h1>Connected to database successfully</h1><br>";
                        // echo "Query successful";

                        $color = "color: #000;";
                        $div = "//background: #f8f9f9;
                                //border: 1px solid #000;
                                padding: 30px;
                                box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2),
                                            0 6px 20px 0 rgba(0,0,0,0.2);
                                ";

                        // $con->set_charset("utf8");
                        $sql = "select * from questions";
                        $result = $con->query($sql);
                        echo "Query successful<br>";

                        $row = $result->fetch_assoc();

                        echo "<div style = '$div'>";
                        echo "<h1 style = '$color'>".$row["name"]."</h1>";
                        echo "<p style = '$color'>".$row["description"]."</p>";

                        echo "<h2 style = '$color'>Input</h2>";
                        echo "<p style = '$color'>".$row["inputFormat"]."</p>";

                        echo "<h2 style = '$color'>Output</h2>";
                        echo "<p style = '$color'>".$row["outputFormat"]."</p>";

                        echo "<h2 style = '$color'>Constraints</h2>";
                        echo "<p style = '$color'>".nl2br($row["constraints"])."</p>";

                        echo "<h2 style = '$color'>Example</h2>";
                        echo "<h3 style = '$color'>Input</h3>";
                        echo "<p style = '$color'>".nl2br($row["exampleIn"])."</p>";
                        echo "<h3 style = '$color'>Output</h3>";
                        echo "<p style = '$color'>".nl2br($row["exampleOut"])."</p>";
                        echo "</div>";

                        $con->close();
                        echo "Closing Connection!";
                    ?>
                    <!-- </div> -->
                </section><!--

                Submit

                --><section class="col-1-3">

                  <div>
                    <h2>Submit</h2>
                    <input type="file" id="solution">
                    <select id="fileType">
                        <option>C++</option>
                        <option>Java</option>
                    </select>

                    <a class="btn btn-default" onclick="submit()">Submit</a>
                </div>

                </section>
              </div>
            </section>

            <!-- Footer -->

    		<footer id="footer" class="primary-footer container group">        </footer>

        </body>
</html>
