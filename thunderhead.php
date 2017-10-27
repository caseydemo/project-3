<!DOCTYPE html>
<html>
<head>
  <title>Tul Duru Thunderhead</title>

  <!-- bootstrap 4 css -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">

  <!-- local css stylesheet -->
  <link rel="stylesheet" href="/style.css">

  <!-- google font - Amatic handwriting font -->
  <link href="https://fonts.googleapis.com/css?family=Amatic+SC|Raleway" rel="stylesheet">



</head>
<body class="container">




    <a class="nav_link" href="/">
      <h1>First Law-Hub</h1>
    </a>

    <h2>Tul Duru Thunderhead</h3>


  <?php
  foreach (getHeroes() as $hero) {
    echo "<tr>";   
    echo "<td>" . $hero['quote'] . "</td>";
    echo "</tr>\n";
  }

?>

  

 <!--  <p>In the first law book series Joe Abercrombie writes from shifting perscpectives, giving the reader a chance to see the same situation from entirely different perspectives. By very far the perspective that I related to and enjoyed the most was that of the men of the north. Specifically Logan Ninefingers and his crew. But pretty much any of the north men I found most relatable and honorable, despite being terrible monsters (black dow). </p> -->


<?php

  function getDb() {

    if (file_exists('.env')) {
      require __DIR__ . '/vendor/autoload.php';
      $dotenv = new Dotenv\Dotenv(__DIR__);
      $dotenv->load();
    }

    $url = parse_url(getenv("DATABASE_URL"));

    // var_dump($url);

    $db_port = $url['port'];
    $db_host = $url['host'];
    $db_user = $url['user'];
    $db_pass = $url['pass'];
    $db_name = substr($url['path'], 1);

    $db = pg_connect(
      "host=" . $db_host .
      " port=" . $db_port .
      " dbname=" . $db_name .
      " user=" . $db_user .
      " password=" . $db_pass);
    return $db;
  }

  function getHeroes() {
    $request = pg_query(getDb(), "
        SELECT *
        FROM heroes
        WHERE name='Tul Duru Thunderhead';
    ");
    return pg_fetch_all($request);
  }

?>

  

  <div style="padding: 10px;"></div>

  <table class="table">
<!--     <tr>
      <td></td>
      
      <th class="heading">Quote</th>
      <th class="heading">Bio</th>
      
    </tr> -->

<?php

  foreach (getHeroes() as $hero) {

    echo "<p>" . $hero['image_large'] . "</p>";
    echo "<p>" . $hero['biography'] . "</p>";

  }

?>

</table>

</body>
</html>