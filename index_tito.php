<html>
<head>
   <title>Consumir JSON del API de Emex desde PHP</title>
   <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
   <meta http-equiv="Content-Language" content="ca" />
</head>

<body>

<?php

require('./librerias.php'); 

$hall = hall_of_fame(10);
$hall2 = municipos_mas_conocidos(5);
$juego = new_game('coco13');
$pregunta = get_pregunta(1, $juego);
//decimos que es el juego 10
$pregunta[0] = 271;
$game_status = add_result_ok($pregunta,1);
list($game_st, $nick_st, $preguntes_st, $correctes_st, $nota_st) = $game_status;
$nota_st = $nota_st . "%";
echo "<b>game: </b>" . $game_st . "<b> nick: </b>" . $nick_st . "  <b> num_preguntes: </b>" . $preguntes_st . " <b> correctes: </b>" . $correctes_st . " <b> nota: </b>" . $nota_st . "<BR>";
$game_status = add_result_ok($pregunta,1);
list($game_st, $nick_st, $preguntes_st, $correctes_st, $nota_st) = $game_status;
$nota_st = $nota_st . "%";
echo "<b>game: </b>" . $game_st . "<b> nick: </b>" . $nick_st . "  <b> num_preguntes: </b>" . $preguntes_st . " <b> correctes: </b>" . $correctes_st . " <b> nota: </b>" . $nota_st . "<BR>";
$game_status = add_result_ko($pregunta,2);
list($game_st, $nick_st, $preguntes_st, $correctes_st, $nota_st) = $game_status;
$nota_st = $nota_st . "%";
echo "<b>game: </b>" . $game_st . "<b> nick: </b>" . $nick_st . "  <b> num_preguntes: </b>" . $preguntes_st . " <b> correctes: </b>" . $correctes_st . " <b> nota: </b>" . $nota_st . "<BR>";
$game_status = add_result_ok($pregunta,2);
list($game_st, $nick_st, $preguntes_st, $correctes_st, $nota_st) = $game_status;
$nota_st = $nota_st . "%";
echo "<b>game: </b>" . $game_st . "<b> nick: </b>" . $nick_st . "  <b> num_preguntes: </b>" . $preguntes_st . " <b> correctes: </b>" . $correctes_st . " <b> nota: </b>" . $nota_st . "<BR>";
$game = $pregunta[0];
$info1 = $pregunta[1];
$info2 = $pregunta[2];
echo "Game: " . $game . '<BR>';
list($poblacion, $idpoblacion, $comarca, $concepto, $valor) = $info1;
echo "<b>poblacion: </b>" . $poblacion . " <b>id: </b>" . $idpoblacion . " <b>comarca: </b>" . $comarca . " <b>concepto: </b>" . $concepto . " <b>valor: </b>" . $valor . "<BR>";
list($poblacion, $idpoblacion, $comarca, $concepto, $valor) = $info2;
echo "<b>poblacion: </b>" . $poblacion . " <b>id: </b>" . $idpoblacion . " <b>comarca: </b>" . $comarca . " <b>concepto: </b>" . $concepto . " <b>valor: </b>" . $valor . "<BR>";

/*

echo random_row('municipis', 'id') . '<BR>';
echo random_row('municipis', 'id') . '<BR>';
echo random_row('municipis', 'id') . '<BR>';
echo random_row('municipis', 'id') . '<BR>';
echo 'get_dato_item: 080018,f171:<BR>';
$info = get_dato_item('080018','f171');
list($poblacion, $idpoblacion, $comarca, $concepto, $valor) = $info;
echo "<b>poblacion: </b>" . $poblacion . " <b>id: </b>" . $idpoblacion . " <b>comarca: </b>" . $comarca . " <b>concepto: </b>" . $concepto . " <b>valor: </b>" . $valor . "<BR>";
echo '<BR>get_dato_item: 080018,f167:<BR>';
$info = get_dato_item('080018','f167');
list($poblacion, $idpoblacion, $comarca, $concepto, $valor) = $info;
echo "<b>poblacion: </b>" . $poblacion . " <b>id: </b>" . $idpoblacion . " <b>comarca: </b>" . $comarca . " <b>concepto: </b>" . $concepto . " <b>valor: </b>" . $valor . "<BR>";
echo '<BR>get_dato_item: 080018,f89:<BR>';
$info = get_dato_item('080018','f89');
list($poblacion, $idpoblacion, $comarca, $concepto, $valor) = $info;
echo "<b>poblacion: </b>" . $poblacion . " <b>id: </b>" . $idpoblacion . " <b>comarca: </b>" . $comarca . " <b>concepto: </b>" . $concepto . " <b>valor: </b>" . $valor . "<BR>";
echo '<BR>get_dato_item: 080018,f111:<BR>';
$info = get_dato_item('080018','f111');
list($poblacion, $idpoblacion, $comarca, $concepto, $valor) = $info;
echo "<b>poblacion: </b>" . $poblacion . " <b>id: </b>" . $idpoblacion . " <b>comarca: </b>" . $comarca . " <b>concepto: </b>" . $concepto . " <b>valor: </b>" . $valor . "<BR>";
echo new_game('coco1');
echo '<BR>';
echo new_game('coco2');
echo '<BR>';
echo new_game('coco3');
echo '<BR>';

*/

?>
</body>
</html>