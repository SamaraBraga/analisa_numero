<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./estilo/estilo2.css">
    <title>Resultado</title>
</head>
<body>
    <?php
    $numero= $_GET['n'];
    if ($numero>=0) {
        echo "Este número é positivo!<br>";
    }else{
        echo "Este número é negativo!<br>";
    }
    if ($numero%2==0) {
        echo "Este número é par!<br>";
    }else{
        echo "Este número é impar!<br>";
    }
    ?>
</body>
</html>
