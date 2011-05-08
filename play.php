<?php
session_start(); 
require('./librerias.php'); 

$nickname = $_GET['nickname'];
$num = $_GET['sec'];
$_SESSION["eleccion"] = $_GET['elec'];

if($num==1){
    $juego = new_game($nickname);  
    $_SESSION["game"] = $juego;     
    $pregunta = get_pregunta($num, $juego);  
}else{
    $pregunta = get_pregunta($num, $_SESSION["game"]);  
}
/*
echo "**".$_SESSION["game"]."**";
echo $pregunta[0];
echo "<br>";
echo $pregunta[1][0]."-".$pregunta[1][3]."-".$pregunta[1][4];
echo "<br>";
echo $pregunta[2][0]."-".$pregunta[2][3]."-".$pregunta[2][4];
echo "<br>";
echo $num;
*/
?>

<?php
if($num==1){
    //echo $pregunta[1][4]."*-*".$pregunta[2][4];    
    $cor=2;
    if($pregunta[1][4]>$pregunta[2][4]){
    $cor=1;
    }
?>
<form>
<p>&iquest;Qu&eacute; poblaci&oacute;n tiene mayor superficie?</p>
<input type="button" value="<?php echo $pregunta[1][0];?>" onclick="plays(2,1);">
<input type="button" value="<?php echo $pregunta[2][0];?>" onclick="plays(2,2);">
</form>
<?php
$_SESSION["sol1"] = $pregunta[1][0]." - ".$pregunta[1][4];   
$_SESSION["sol2"] = $pregunta[2][0]." - ".$pregunta[2][4];   
$_SESSION["pob1"] = $pregunta[1][1];   
$_SESSION["pob2"] = $pregunta[2][1];  
$_SESSION["correcto"] = $cor;  
}    
?>    

<?php
if($num>1){
//echo $_SESSION["correcto"]."=".$_SESSION["eleccion"];

    if($_SESSION["correcto"]==$_SESSION["eleccion"]){
        if($_SESSION["eleccion"]==1){
            $game_status = add_result_ok($_SESSION["game"], $_SESSION["pob1"]);    
        }else{
            $game_status = add_result_ok($_SESSION["game"], $_SESSION["pob2"]);    
        }
    }else{
        if($_SESSION["eleccion"]==1){
            $game_status = add_result_ko($_SESSION["game"], $_SESSION["pob1"]);    
        }else{
            $game_status = add_result_ko($_SESSION["game"], $_SESSION["pob2"]);    
        }
    }
    //echo $pregunta[1][4]."*-*".$pregunta[2][4];
    //echo "<br>Esto es".($pregunta[1][4]>$pregunta[2][4])."<br>";
    $cor=2;
    if($pregunta[1][4]>$pregunta[2][4]){
    $cor=1;
    }
    ?>    
    <p class="sol">Soluci&oacute;n anterior pregunta: <?php echo $_SESSION["sol1"]?>, <?php echo $_SESSION["sol2"]?></p>
    <?php
    if($num==2){
    ?>
    <form>
    <p>&iquest;Qu&eacute; poblaci&oacute;n tiene m&aacute;s habitantes?</p>
    <input type="button" value="<?php echo $pregunta[1][0];?>" onclick="plays(3,1,<?php echo $cor;?>);">
    <input type="button" value="<?php echo $pregunta[2][0];?>" onclick="plays(3,2,<?php echo $cor;?>);">
    </form>
    <?php
    }else if($num==3){
    ?>   
    <form>
    <p>&iquest;Qu&eacute; poblaci&oacute;n tiene m&aacute;s habitantes de 0 a 14 a&ntilde;os?</p>
    <input type="button" value="<?php echo $pregunta[1][0];?>" onclick="plays(4,1,<?php echo $cor;?>);">
    <input type="button" value="<?php echo $pregunta[2][0];?>" onclick="plays(4,2,<?php echo $cor;?>);">
    </form>         
    <?php
    }else if($num==4){
    ?>   
    <form>
    <p>&iquest;Qu&eacute; poblaci&oacute;n tiene m&aacute;s habitantes de 15 a 64 a&ntilde;os?</p>
    <input type="button" value="<?php echo $pregunta[1][0];?>" onclick="plays(5,1,<?php echo $cor;?>);">
    <input type="button" value="<?php echo $pregunta[2][0];?>" onclick="plays(5,2,<?php echo $cor;?>);">
    </form>         
    <?php
    }else if($num==5){
    ?>   
    <form>
    <p>&iquest;Qu&eacute; poblaci&oacute;n tiene m&aacute;s habitantes de 65 a 84 a&ntilde;os?</p>
    <input type="button" value="<?php echo $pregunta[1][0];?>" onclick="plays(6,1,<?php echo $cor;?>);">
    <input type="button" value="<?php echo $pregunta[2][0];?>" onclick="plays(6,2,<?php echo $cor;?>);">
    </form>         
    <?php
    }else if($num==6){
    ?>   
    <form>
    <p>&iquest;Qu&eacute; poblaci&oacute;n tiene m&aacute;s habitantes con 85 a&ntilde;os o m&aacute;s?</p>
    <input type="button" value="<?php echo $pregunta[1][0];?>" onclick="plays(7,1,<?php echo $cor;?>);">
    <input type="button" value="<?php echo $pregunta[2][0];?>" onclick="plays(7,2,<?php echo $cor;?>);">
    </form>         
    <?php
    }else if($num==7){
    ?>   
    <form>
    <p>&iquest;Qu&eacute; poblaci&oacute;n tiene m&aacute;s habitantes con estudios universitarios?</p>
    <input type="button" value="<?php echo $pregunta[1][0];?>" onclick="plays(8,1,<?php echo $cor;?>);">
    <input type="button" value="<?php echo $pregunta[2][0];?>" onclick="plays(8,2,<?php echo $cor;?>);">
    </form>         
    <?php
    }else if($num==8){
    ?>   
    <form>
    <p>&iquest;Qu&eacute; poblaci&oacute;n tiene un porcentaje mayor de hogares con parejas sin hijos?</p>
    <input type="button" value="<?php echo $pregunta[1][0];?>" onclick="plays(9,1,<?php echo $cor;?>);">
    <input type="button" value="<?php echo $pregunta[2][0];?>" onclick="plays(9,2,<?php echo $cor;?>);">
    </form>         
    <?php
    }else if($num==9){
    ?>   
    <form>
    <p>&iquest;Qu&eacute; poblaci&oacute;n tiene m&aacute;s habitantes sin estudios?</p>
    <input type="button" value="<?php echo $pregunta[1][0];?>" onclick="plays(10,1,<?php echo $cor;?>);">
    <input type="button" value="<?php echo $pregunta[2][0];?>" onclick="plays(10,2,<?php echo $cor;?>);">
    </form>         
    <?php
    }else if($num==10){
    ?>   
    <form>
    <p>&iquest;Qu&eacute; poblaci&oacute;n tiene mayor porcentaje de participaci&oacute;n en las &uacute;ltimas elecciones al Parlamento de Catalunya?</p>
    <input type="button" value="<?php echo $pregunta[1][0];?>" onclick="plays(11,1,<?php echo $cor;?>);">
    <input type="button" value="<?php echo $pregunta[2][0];?>" onclick="plays(11,2,<?php echo $cor;?>);">
    </form>         
    <?php
    }else if($num>10){
    $myhall = my_hall_of_fame($_SESSION["game"]);
    echo "<p class=\"hall\">".$myhall[0][3].". ".$myhall[0][1].": ".$myhall[0][2]."</p>";
    ?>
    <p>
    <a href="http://twitter.com/?status=He%20jugado%20a%20PobQuiz%20y%20he%20quedado%20en%20la%20<?php echo $myhall[0][3];?>%20posici&oacute;n%20http%3A%2F%2Fpobquiz.skolti.com" target="_blank"><img src="img/twitter.png" alt="Abredatos 2011"/> Tuit&eacute;alo!</a> <a href="http://pobquiz.skolti.com">Vuelve a jugar :-)</a>
    </p>
    <?php
    }
$_SESSION["sol1"] = $pregunta[1][0].": ".$pregunta[1][4];   
$_SESSION["sol2"] = $pregunta[2][0].": ".$pregunta[2][4];   
$_SESSION["pob1"] = $pregunta[1][1];   
$_SESSION["pob2"] = $pregunta[2][1];  
$_SESSION["correcto"] = $cor;  
}    
?>     