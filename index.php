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

  <h1>The First Law</h1>
  <h2>The men of the north</h2>

  <p>In the first law book series Joe Abercrombie writes from shifting perscpectives, giving the reader a chance to see the same situation from entirely different perspectives. By very far the perspective that I related to and enjoyed the most was that of the men of the north. Specifically Logan Ninefingers and his crew. But pretty much any of the north men I found most relatable and honorable, despite being terrible monsters (black dow). </p>


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
    <tr>
      <td></td>
      <th class="heading">Name</th>
      <th class="heading">Quote</th>
      <th class="heading">Bio</th>
      <th class="heading">Pic</th>
    </tr>

<?php

  foreach (getHeroes() as $hero) {

    echo "<tr>";    
    echo "<td>" . $hero['id'] . "</td>";
    echo "<td>" . $hero['name'] . "</td>";
    echo "<td>" . $hero['quote'] . "</td>";
    echo "<td>" . $hero['biography'] . "</td>";
    echo "<td>" . $hero['image_url'] . "</td>";
    echo "</tr>\n";

  }

?>

</table>

</body>
</html>