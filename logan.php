<!DOCTYPE html>
<html>
<head>
  <title>Logan Ninefingers</title>

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
    <h2>Logan Ninefingers - AKA the bloody nine</h3>

  <?php
  foreach (getHeroes() as $hero) {
    echo "<tr>";    
    echo "<td>" . $hero['quote'] . "</td>";
    echo "</tr>\n";
      }
  ?>

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
          WHERE name='Logan Ninefingers';
      ");
      return pg_fetch_all($request);
    }

    function getFriends() {
      $request = pg_query(getDb(), "
          SELECT * FROM buddies WHERE friendgroup=1;
      ");
      return pg_fetch_all($request);
    }

     function getEnemies() {
      $request = pg_query(getDb(), "
          SELECT * FROM buddies WHERE friendgroup!=1;
      ");
      return pg_fetch_all($request);
    }

  ?>
  <div style="padding: 10px;"></div>
  <table class="table">
  <?php

    foreach (getHeroes() as $hero) {
      
      echo "<p>" . $hero['image_large'] . "</p>";
      echo "<p>" . $hero['biography'] . "</p>";
    
    }

  ?>
  <div class="columnl">
    <h3 >Friends</h3>
    <div class="list-group">
      <?php
        foreach (getFriends() as $friend) {
         echo "<ul>" . $friend['link'] . "</ul>";
        }
      ?>
   </div>
  </div>

  <div class="columnr">
  <h3>Enemies</h3>
    <?php
    foreach (getEnemies() as $enemy) {
      echo "<ul>" . $enemy['link'] . "</ul>";
      }
    ?>
  </div>
  </table>

</body>
</html>