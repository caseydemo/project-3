<!DOCTYPE html>
<html>
<head>
  <title>First Law Heros</title>

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
          FROM heroes;
      ");
      return pg_fetch_all($request);
    }

  ?>
  <div style="padding: 10px;"></div>
    <table class="table">
    <?php
      foreach (getHeroes() as $hero) {
        echo "<tr>";    
        echo "<td>" . $hero['image_url'] . "</td>";
        echo "<td>" . $hero['link'] . "</td>";
        echo "<td>" . $hero['quote'] . "</td>";
        echo "</tr>\n";
      }
    ?>
  </div>

  </table>

</body>
</html>