<?php
require('./config.php');  

/*
CONSUMIR JSON (funcion interna)

ENTRADA: una URL
=======
SALIDA: el texto tal y como lo devuelve el servicio
=======
*/

function leer_contenido_completo($url){
   $fichero_url = fopen ($url, "r");
   $texto = "";
   while ($trozo = fgets($fichero_url, 1024)){
      $texto .= $trozo;
   }
   return $texto;
}

/*
A partir de un item, como por ejemplo f271, se devuelve la información

ENTRADA: un ITEM
=======

SALIDA: array con la información del item: $poblacion_salida, $idpoblacion_salida, $comarca_salida, $concepto_salida, $dato_salida
=======
ATENCION: para algunos municipios no hay datos y la función hace un reintento en otra población hasta que encuentra un resultado

*/

function get_dato_item($item){
//    echo "*00*" . $contenido_url . "<BR>";
//algunos municipios no tienen todos los datos.    
    $deteccion_error = 'O';
    while ($deteccion_error == 'O') {
        $cod_poblacion =  random_row('municipis', 'id');
//      echo "'*000* cod poblacion: " . $cod_poblacion . " item: " . $item;
        $URL_API_EMEX = "http://api.idescat.cat/emex/v1/dades.json?id=" . $cod_poblacion . "&i=" . $item;
        $contenido_url = leer_contenido_completo($URL_API_EMEX);
        $deteccion_error = substr($contenido_url,0,1);
    }
    $JSON_EMEX_PHP = json_decode($contenido_url);
    $indicadores = $JSON_EMEX_PHP->fitxes->indicadors->i[0];
    $dato_salida = $indicadores->v;
    list($dato_municipio1,$dato_comarca,$dato_pais) = explode(",",$dato_salida);
    $dato_salida = $dato_municipio1;
    $concepto_salida = $indicadores->c;
    $tmp_salida = $JSON_EMEX_PHP->fitxes->cols->col[0];
    $poblacion_salida = $tmp_salida->content;
    $idpoblacion_salida = $tmp_salida->id;
    $tmp_salida = $JSON_EMEX_PHP->fitxes->cols->col[1];
    $comarca_salida = $tmp_salida->content;
    if ($item == 'f167' || $item == 'f27' || $item == 'f28' || $item == 'f29' ) {
        $URL_API_EMEX = "http://api.idescat.cat/emex/v1/dades.json?id=" . $cod_poblacion . "&i=f171";
        $contenido_url = leer_contenido_completo($URL_API_EMEX);
        $JSON_EMEX_PHP = json_decode($contenido_url);
        $indicadores = $JSON_EMEX_PHP->fitxes->indicadors->i[0];
        $dato_salida = $indicadores->v;
        list($dato_municipio2,$dato_comarca,$dato_pais) = explode(",",$dato_salida);
        $dato_municipio1 = $dato_municipio1 / $dato_municipio2 * 100;
        $dato_salida=round($dato_municipio1 * 100) / 100;
        $dato_saluda = $dato_salida . "%";
    }
    if ($item == 'f88') {
        $URL_API_EMEX = "http://api.idescat.cat/emex/v1/dades.json?id=" . $cod_poblacion . "&i=f89";
        $contenido_url = leer_contenido_completo($URL_API_EMEX);
        $JSON_EMEX_PHP = json_decode($contenido_url);
        $indicadores = $JSON_EMEX_PHP->fitxes->indicadors->i[0];
        $dato_salida = $indicadores->v;
        list($dato_municipio2,$dato_comarca,$dato_pais) = explode(",",$dato_salida);
        $dato_municipio1 = $dato_municipio1 / $dato_municipio2 * 100;
        $dato_salida=round($dato_municipio1 * 100) / 100;
        $dato_saluda = $dato_salida . "%";
    }
    if ($item == 'f85') {
        $URL_API_EMEX = "http://api.idescat.cat/emex/v1/dades.json?id=" . $cod_poblacion . "&i=f89";
        $contenido_url = leer_contenido_completo($URL_API_EMEX);
        $JSON_EMEX_PHP = json_decode($contenido_url);
        $indicadores = $JSON_EMEX_PHP->fitxes->indicadors->i[0];
        $dato_salida = $indicadores->v;
        list($dato_municipio2,$dato_comarca,$dato_pais) = explode(",",$dato_salida);
        $dato_municipio1 = $dato_municipio1 / $dato_municipio2 * 100;
        $dato_salida=round($dato_municipio1 * 100) / 100;
        $dato_saluda = $dato_salida . "%";
    }    
    if ($item == 'f111') {
        $URL_API_EMEX = "http://api.idescat.cat/emex/v1/dades.json?id=" . $cod_poblacion . "&i=f115";
        $contenido_url = leer_contenido_completo($URL_API_EMEX);
        $JSON_EMEX_PHP = json_decode($contenido_url);
        $indicadores = $JSON_EMEX_PHP->fitxes->indicadors->i[0];
        $dato_salida = $indicadores->v;
        list($dato_municipio2,$dato_comarca,$dato_pais) = explode(",",$dato_salida);
        $dato_municipio1 = $dato_municipio1 / $dato_municipio2 * 100;
        $dato_salida=round($dato_municipio1 * 100) / 100;
        $dato_saluda = $dato_salida . "%";
    }
    $info = array($poblacion_salida, $idpoblacion_salida, $comarca_salida, $concepto_salida, $dato_salida);
    return $info;
}

/***
NUEVO JUEGO a partir de un NICK
Se inicializa un juego nuevo con 0 preguntas

ENTRADA: un nick
=======

SALIDA: el código interno de juego asignado
=======

***/


function new_game($nick) {
   $mirar = URL_BBDD;
   $db = mysql_connect(URL_BBDD, USER_BBDD, PASS_BBDD); 
   if (!$db) { 
     die('Could not connect: ' . mysql_error());
    } 
   if (!mysql_select_db(NAME_BBDD)) { 
     die('Could not select database: ' . mysql_error());
    }    
   $result = mysql_query("INSERT INTO jocs (nick, preguntes, correctes, erronies, nota, dia, dia_final) VALUES ('$nick', 0, 0, 0, 0, NOW(), NOW())"); 
   if (!$result) { 
     die('Could not insert terminal:' . mysql_error()); 
    }
   $resultmax = mysql_query("SELECT MAX(Id) as id FROM jocs"); 
   if (!$resultmax) { 
     die('Could not query max:' . mysql_error()); 
    }
   $rowmax=mysql_fetch_array($resultmax); 
   $numeromax = $rowmax['id'];
   mysql_close($db);
   return $numeromax;
 }
 
/***

ENTRADA: la tabla y la columna
=======

SALIDA: contenido aleatorio la comunma en la tabla
=======

Uso
print_r(random_row('YOUR_TABLE', 'YOUR_COLUMN'));

*/


  function random_row($table, $column) {
      
       $db = mysql_connect(URL_BBDD, USER_BBDD, PASS_BBDD); 
       if (!$db) { 
         die('Could not connect: ' . mysql_error());
        } 
       if (!mysql_select_db(NAME_BBDD)) { 
         die('Could not select database: ' . mysql_error());
       }    
          
       $max_sql = "SELECT count(id) AS max_id FROM " . $table;
       $max_row = mysql_fetch_array(mysql_query($max_sql));
       $random_number = mt_rand(1, $max_row['max_id']);
       $mem_qry = "SELECT id FROM " . $table . " ORDER BY " . $column . " ASC";
       $res = mysql_query($mem_qry);
       
       $contador=1;
       while($row=mysql_fetch_array($res) AND $contador <= $random_number) {
       $valor =  $row[0];
       $contador++;
       }
       mysql_close($db);
       return $valor;

      }
 
/***
Obtenemos una pregunta completa en función de la secuencia (1..10)


ENTRADA: la secuencia y el numero de juego
=======

SALIDA: status del juego tal y como ha quedado
=======



*/
 
  function get_pregunta($secuencia, $game) {
      
      switch ($secuencia) {
         case 1: $tag = 'f271'; break;
         case 2: $tag = 'f321'; break;
         case 3: $tag = 'f167'; break;
         case 4: $tag = 'f27'; break;
         case 5: $tag = 'f28'; break;
         case 6: $tag = 'f29'; break;
         case 7: $tag = 'f88'; break;
         case 8: $tag = 'f111'; break;
         case 9: $tag = 'f85'; break;
         case 10: $tag = 'f254'; break;
         default: $tag = 'f254'; break;
        }
      
      
      $infob1 = get_dato_item($tag);
      $infob2 = get_dato_item($tag);
      //para que sean diferentes
      $cod_poblacion1 = $infob1[1];
      $cod_poblacion2 = $infob2[1];
      while ($cod_poblacion1 == $cod_poblacion2) {
            $infob2 = get_dato_item($tag);
            $cod_poblacion2 = $infob2[1];
      }

      $pregunta = array($game, $infob1, $infob2);
      return $pregunta;
  }            
  
/***
El jugador ha acertado la pregunta

ENTRADA: la pregunta y a cual de las 2 poblaciones ha clickado
=======

SALIDA: el numero de juego una estructura con los datos de 2 poblaciones
=======

Se actualiza la estadística de las poblaciones en la tabla municipis

*/
  
  function add_result_ok($game, $cod_municipio) {
      $incremento = 1;
      $game_status = add_result($game, $cod_municipio,$incremento);
      return $game_status;
  }

/***
El jugador NO ha acertado la pregunta

ENTRADA: la pregunta y a cual de las 2 poblaciones ha clickado
=======

SALIDA: el numero de juego una estructura con los datos de 2 poblaciones
=======

Se actualiza la estadística de las poblaciones en la tabla municipis

*/
  
  function add_result_ko($game, $cod_municipio) {
      $incremento = -1;
      $game_status = add_result($game, $cod_municipio, $incremento);
      return $game_status;
  }
  
/***
funcion genérica que utilizan las 2 funciones anteriores

ENTRADA: la pregunta y a cual de las 2 poblaciones ha clickado y si es ok (1) o ok (-1)
=======

SALIDA: el numero de juego una estructura con los datos de 2 poblaciones
=======

Se actualiza la estadística de las poblaciones en la tabla municipis

*/
  
  function add_result($game, $cod_municipio, $incremento) {

       $db = mysql_connect(URL_BBDD, USER_BBDD, PASS_BBDD); 
       if (!$db) { 
         die('Could not connect: ' . mysql_error());
        } 
       if (!mysql_select_db(NAME_BBDD)) { 
         die('Could not select database: ' . mysql_error());
       }    
          
       $str_sql = "SELECT * FROM jocs WHERE id = " . $game;
       $row = mysql_fetch_array(mysql_query($str_sql));
       $nick = $row[1];
       $num_preguntes = $row[2];
       $num_correctes = $row[3];
       $num_erronies  = $row[4];
       $num_preguntes++;
       if ($incremento == 1) {
           $num_correctes++; 
       }
       else {
           $num_erronies++;
       }
       $la_nota = ( $num_correctes / $num_preguntes ) * 100;
       $la_nota=round($la_nota * 100) / 100;                      
       
       $result = mysql_query("UPDATE jocs SET preguntes = " . $num_preguntes . ", correctes = " . $num_correctes . ", erronies = " . $num_erronies . ", nota = " . $la_nota . ", dia_final = NOW() WHERE id = " . $game); 
       if (!$result) { 
         die('Could not update game:' . mysql_error()); 
        }

       $str_sql = "SELECT * FROM municipis WHERE id = " . $cod_municipio;
       $row = mysql_fetch_array(mysql_query($str_sql));
       $num_ok = $row[2];
       if ($incremento == 1) {
           $num_ok = $num_ok+1;    //contabilizamos un acierto en el municipio
       } else {
           $num_ok = $num_ok-1;     //contabilizamos un error en el municipio    
       }
       
       $str_sql = "UPDATE municipis SET num_ok = " . $num_ok . " WHERE id = " . $cod_municipio;
       $result = mysql_query($str_sql); 
       if (!$result) { 
         die('Could not update municipis:' . mysql_error()); 
       }

       mysql_close($db);
       $game_status = array($game, $nick, $num_preguntes, $num_correctes, $la_nota);            
       return $game_status;
  }

/***
obtención de los 'n' mejores jugadores

ENTRADA: numero 'n' de jugadores
=======

SALIDA: array con el hall of fame
=======

Primero los que han obtenido > %
Después los que han tardado menos tiempo
Solo se seleccionan los juegos terminados (preguntes >= 10)

*/
  
  function hall_of_fame($num_gamers) {

       $db = mysql_connect(URL_BBDD, USER_BBDD, PASS_BBDD); 
       if (!$db) { 
         die('Could not connect: ' . mysql_error());
        } 
       if (!mysql_select_db(NAME_BBDD)) { 
         die('Could not select database: ' . mysql_error());
       }    
       $hall=array();
       
       $result = mysql_query("SELECT * FROM jocs WHERE preguntes >= 10 ORDER BY nota DESC, (dia_final - dia) ASC");
       $row = mysql_fetch_array($result);
       $count = 0;
       while ($row AND $count < $num_gamers) {
           $id = $row[0];
           $nick = $row[1];
           $nota = $row[5];
           $nota = $nota . "%";
           $dia = $row[6];
           $game = array($id, $nick, $nota, $dia);
           array_push($hall, $game);
           $row = mysql_fetch_array($result);
           $count++;
       }
       mysql_free_result($result);
       return $hall;
  }

  
/***
obtención de la posición en el hall of fame

ENTRADA: el juego
=======

SALIDA: array con los datos de posición en el hall of fame
=======

Primero los que han obtenido > %
Después los que han tardado menos tiempo
Solo se seleccionan los juegos terminados (preguntes >= 10)

*/
  
  function my_hall_of_fame($thisgame) {
       $db = mysql_connect(URL_BBDD, USER_BBDD, PASS_BBDD); 
       if (!$db) { 
         die('Could not connect: ' . mysql_error());
        } 
       if (!mysql_select_db(NAME_BBDD)) { 
         die('Could not select database: ' . mysql_error());
       }    
       $myhall=array();
       
       $result = mysql_query("SELECT * FROM jocs WHERE preguntes >= 10 ORDER BY nota DESC, (dia_final - dia) ASC");
       $row = mysql_fetch_array($result);
       $count = 0;
       $id = $row[0];
       $nick = $row[1];
       $nota = $row[5];
       $nota = $nota . "%";
       $pos = $count+1;
       while ($row AND ($id!=$thisgame)){
           $id = $row[0];
           $nick = $row[1];
           $nota = $row[5];
           $nota = $nota . "%";
           $pos = $count+1;
           $row = mysql_fetch_array($result);
           $count++;
       }
       $mygame = array($id, $nick, $nota, $pos);
       array_push($myhall, $mygame);
       mysql_free_result($result);
       return $myhall;
  }
  
  
/***
obtención de los 'n' municipios mas conocidos

ENTRADA: numero 'n' de municipios a mostrar
=======

SALIDA: array con el hall of fame
=======

*/
  
  function municipos_mas_conocidos($num_munis) {

       $db = mysql_connect(URL_BBDD, USER_BBDD, PASS_BBDD); 
       if (!$db) { 
         die('Could not connect: ' . mysql_error());
        } 
       if (!mysql_select_db(NAME_BBDD)) { 
         die('Could not select database: ' . mysql_error());
       }    
       $hall=array();
       
       $result = mysql_query("SELECT * FROM municipis ORDER BY num_ok DESC");
       $row = mysql_fetch_array($result);
       $count = 0;
       while ($row AND $count < $num_munis) {
           $id = $row[0];
           $name = $row[1];
           $num_ok = $row[2];
           $muni = array($id, $name, $num_ok);
           array_push($hall, $muni);
           $row = mysql_fetch_array($result);
           $count++;
       }
       mysql_free_result($result);
       return $hall;
  }

/***
obtención de los 'n' municipios menos conocidos

ENTRADA: numero 'n' de municipios a mostrar
=======

SALIDA: array con el hall of fame
=======

*/
  
  function municipos_menos_conocidos($num_munis) {

       $db = mysql_connect(URL_BBDD, USER_BBDD, PASS_BBDD); 
       if (!$db) { 
         die('Could not connect: ' . mysql_error());
        } 
       if (!mysql_select_db(NAME_BBDD)) { 
         die('Could not select database: ' . mysql_error());
       }    
       $hall=array();
       
       $result = mysql_query("SELECT * FROM municipis ORDER BY num_ok ASC");
       $row = mysql_fetch_array($result);
       $count = 0;
       while ($row AND $count < $num_munis) {
           $id = $row[0];
           $name = $row[1];
           $num_ok = $row[2];
           $muni = array($id, $name, $num_ok);
           array_push($hall, $muni);
           $row = mysql_fetch_array($result);
           $count++;
       }
       mysql_free_result($result);
       return $hall;
  }
 
?>
