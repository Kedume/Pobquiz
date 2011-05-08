<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<!--
                              .~DN .                        
                              NN,NN.                        
               . ..          ~N,,,NN                        
               NNNNN.        NN,,,,NO                       
               N,,,,NI       N,,==,NN                       
               N:,,,,MD.     N.,==,MN                       
               8N,===,ID.    .D,==,NN                       
               .N.,===,88    .N,==,NN                       
                 N.,===,N.    8:,=,N.                       
                 .NM,,=,,O  ..~N,,,N.                       
                  ..N,,=,NNI,,,,,,.NN:                      
                     ,N,,,,,,,,,,,,,,7N.                    
                     N,,,,,,,,,,,,,,,,,N                    
                    N:,,,,,DD,,NN,,,,,,NN.                  
                   NN,,,,,,,,,,,,,,,,,,NN.                  
                   NN,,,,,  .   .      NN.                  
            .NN~    N,,, . ~ZM.MD     NN .                  
            .NN~    8N.      NNN    ~D~                     
            .NN~     .DD=.      .~NN..                      
            .NN~         $NNNMN$NN     ....  ....    ...    
            .NN~         .N,.,,,,N:    NNN.  ,NN    NNN.    
            .NN~         .N:NNM:,N.    NNN.  ,NN    DNN.    
    ..  .   .NN~   .....  N+.MN,DND    NNN. .,NN .. ....    
   ,DNNND.  .NN~   .DNN. .,DNNNNDN.    NNN. NNNNNND ZNN     
  .ND..ND.  .NN~  DNN.. .NNND...NNND   NNN. 88ND888 ZND     
  ZDN..     .DD~ZDNN.  .DDN.     .DDD. DDD.  ,DD    ZDD     
   DDDDD.   .DDDDD.    8DD       ..DD. DDD.  ,DD.   $DD     
    .:DDDD  .DDDDDD7.  DDD         DD. DDD.  ,DD.   $DD     
        DDD  DD: 8DD8  .DD..     .DDD. DDD.  ,DD.   $DD.    
 ..8.   DDD  DD:  .DDD. DD8D.   .88D.  DDD.  ,D8.   $DD     
 .=888888D   88:  ..888..,888D88888 .  888   ,88.   $88.    
    .O8I.      .            .O8$.         .  .        .     
 
--> 
<?php
require('./librerias.php'); 

$hall = hall_of_fame(10);
$hall2 = municipos_mas_conocidos(10);
$hall3 = municipos_menos_conocidos(10);
?>
<html>
<head>
<meta http-equiv="Expires" content="Fri, Jan 01 1900 00:00:00 GMT">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="Lang" content="es">
<meta name="author" content="Skolti">
<meta http-equiv="Reply-to" content="@.com">
<meta name="generator" content="PhpED 5.8">
<meta name="description" content="PobQuiz es un juego que utiliza el API de Idescat. Aplicación participante de Abredatos 2011.">
<meta name="keywords" content="opendata,skolti,idescat,generalitat,catalunya">
<meta name="creation-date" content="07/05/2011">
<meta name="revisit-after" content="1 days">
<meta property="fb:app_id" content="145855048772398" /> 
<meta property="og:title" content="PobQuiz: &iquest;Conoces Catalu&ntilde;a y sus poblaciones?" /> 
<meta property="og:site_name" content="PobQuiz" /> 
<meta property="og:image" content="http://pobquiz.skolti.com/img/play.png" /> 
<meta property="og:type" content="game" /> 
<meta property="og:url" content="http://pobquiz.skolti.com" /> 
<meta property="og:description" content="PobQuiz es un juego que utiliza el API de Idescat. Aplicación participante de Abredatos 2011." /> 
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
<script type="text/javascript" src="./js/functions.js"></script>        
<title>PobQuiz</title>
<link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>
  <div id="header">
    <div id="explain">
        <p>Este experimento ha sido realizado en el marco del evento <a href="http://www.abredatos.es/" title="Abredatos 2011">Abredatos 2011</a> por <a href="http://twitter.com/alcubierre" title="@alcubierre twitter acount">@alcubierre</a> y <a href="http://twitter.com/kedume" title="@kedume twitter acount">@kedume</a>. En el experimento se ha utilizado la <a href="http://www.idescat.cat/api/">API de Idescat</a> y tecnolog&iacute;a PHP, MySQL y JQuery</p>
    </div>
    <div id="social">
        <p><a href="http://twitter.com/share" class="twitter-share-button" data-url="http://pobquiz.skolti.com" data-text="&iquest;Conoces Catalu&ntilde;a y sus poblaciones? Demu&eacute;stralo :-)" data-count="vertical" data-via="skolti" data-related="">Tweet</a><script type="text/javascript" src="http://platform.twitter.com/widgets.js"></script> 
         <iframe src="http://www.facebook.com/plugins/like.php?href=http%3A%2F%2Fpobquiz.skolti.com&amp;layout=box_count&amp;show_faces=false" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:85px; height:65px;" allowTransparency="true"></iframe>     
        </p>
        <p>Participa en: <a href="http://www.abredatos.es/" title="Abredatos 2011"><img src="img/logo_abredatos2011.png" alt="Abredatos 2011"/></a></p>
    </div>
    <div id="logo">
        <h1><img src="img/logo_pobquiz.png" alt="PobQuiz"></h1>
        <h3>&iquest;Conoces Catalu&ntilde;a y sus poblaciones? Demu&eacute;stralo :-)</h3>
    </div>
  </div>
  <div id="middle">
    <div id="game">
        <form>
            <p>Tu nickname:</p>
            <p><input type="text" id="nickname" name="nickname"></p>
            <p><input type="button" value="A jugar!" onclick="play(1);"></p>
        </form>
    </div>
  </div>
  <div id="halls">
  
    <div class="box4">
        <h2>Las m&aacute;s acertadas</h2>  
        <ol>
            <li><?php echo utf8_encode($hall2[0][1]);?></li>
            <li><?php echo utf8_encode($hall2[1][1]);?></li>
            <li><?php echo utf8_encode($hall2[2][1]);?></li>
            <li><?php echo utf8_encode($hall2[3][1]);?></li>
            <li><?php echo utf8_encode($hall2[4][1]);?></li>
            <li><?php echo utf8_encode($hall2[5][1]);?></li>
            <li><?php echo utf8_encode($hall2[6][1]);?></li>
            <li><?php echo utf8_encode($hall2[7][1]);?></li>
            <li><?php echo utf8_encode($hall2[8][1]);?></li>
            <li><?php echo utf8_encode($hall2[9][1]);?></li>
        </ol>
    </div>

    <div class="box4">
        <h2>Hall of fame</h2>  
        <ol>
            <li><?php echo $hall[0][1];?></li>
            <li><?php echo $hall[1][1];?></li>
            <li><?php echo $hall[2][1];?></li>
            <li><?php echo $hall[3][1];?></li>
            <li><?php echo $hall[4][1];?></li>
            <li><?php echo $hall[5][1];?></li>
            <li><?php echo $hall[6][1];?></li>
            <li><?php echo $hall[7][1];?></li>
            <li><?php echo $hall[8][1];?></li>
            <li><?php echo $hall[9][1];?></li>
        </ol>
    </div>

    <div class="box4">
        <h2>Las menos acertadas</h2>  
        <ol>
            <li><?php echo utf8_encode($hall3[0][1]);?></li>
            <li><?php echo utf8_encode($hall3[1][1]);?></li>
            <li><?php echo utf8_encode($hall3[2][1]);?></li>
            <li><?php echo utf8_encode($hall3[3][1]);?></li>
            <li><?php echo utf8_encode($hall3[4][1]);?></li>
            <li><?php echo utf8_encode($hall3[5][1]);?></li>
            <li><?php echo utf8_encode($hall3[6][1]);?></li>
            <li><?php echo utf8_encode($hall3[7][1]);?></li>
            <li><?php echo utf8_encode($hall3[8][1]);?></li>
            <li><?php echo utf8_encode($hall3[9][1]);?></li>
        </ol>
    </div>
    
  </div>
  <div id="footer">
    &copy; skolti 2011 - <a href="mailto:info@skolti.com">Contacto</a>
  </div>
<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-17761555-3']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
</body>
</html>
