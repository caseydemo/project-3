<!DOCTYPE html>
<html>
<head>
  <title>Project-3</title>

  <!-- bootstrap 4 css -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">

  <!-- local css stylesheet -->
  <link rel="stylesheet" href="/app/style.css">

  <!-- google font - Amatic handwriting font -->
  <link href="https://fonts.googleapis.com/css?family=Amatic+SC|Raleway" rel="stylesheet">



</head>
<body class="container">

  <h1>Project-3</h1>

  <p>One a those days, huh. Wal, a wiser fella than m'self once said, sometimes you eat the bar and sometimes the bar, wal, he eats you. That wasn't her toe. Excuse me! Mark it zero. Next frame. Mind if I smoke a jay? Brandt can't watch though. Or he has to pay a hundred. Sex. The physical act of love. Coitus. Do you like it? Shomer shabbos.</p>


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
      <th>Name</th>
      <th>About Me</th>
      <th>Bio</th>
      <th>Pic</th>
    </tr>

<?php

  foreach (getHeroes() as $hero) {

    echo "<tr>";    
    echo "<td>" . $hero['id'] . "</td>";
    echo "<td>" . $hero['name'] . "</td>";
    echo "<td>" . $hero['about_me'] . "</td>";
    echo "<td>" . $hero['biography'] . "</td>";
    echo "<td>" . $hero['image_url'] . "</td>";
    echo "</tr>\n";

  }

?>

</table>

</body>
</html>