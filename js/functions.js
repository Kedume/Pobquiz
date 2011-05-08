function play(num){
    $("#game")
    .fadeOut(100)
    .queue(function(n) {
        $(this).html('<p><img src="../img/loading.gif"/></p>');
        n();
    });
    
    $("#game").fadeIn(100).delay(500);
    $('#game').load('play.php?sec=' + num + '&nickname=' + $("#nickname").val(), function() {
        $("#game").fadeIn(100);
    });
};
function plays(num,elec){
    $("#game").fadeOut(100).queue(function(n) {
        $(this).html('<p><img src="../img/loading.gif"/></p>');
        n();
    });
    
    $("#game").fadeIn(100).delay(500);
    $('#game').load('play.php?sec=' + num + '&elec=' + elec, function() {
        $("#game").fadeIn(100);
    });
};
/*
function viewresults() {
    $('#tapete')
    .fadeOut(1000)
    .load('solution.php?u1='+$('#user1').val()+'&u2='+$('#user2').val()+'&u3='+$('#user3').val()+'&u4='+$('#user4').val()+'&u5='+$('#user5').val()+'&u6='+$('#user6').val()+'&u7='+$('#user7').val()+'&u8='+$('#user8').val()+'&u9='+$('#user9').val()+'&u10='+$('#user10').val()+'&u11='+$('#user11').val()+'&u12='+$('#user12').val()+'&u13='+$('#user13').val()+'&u14='+$('#user14').val()+'&u15='+$('#user15').val()+'&u16='+$('#user16').val(), function() {
        $("#tapete").fadeIn(300);
    });
};

function tweetthis() {
    tweet = $('#tweet').val();
    $("#send")
    .fadeOut(300)
    .html('')
    .queue(function(n) {
        $(this).load('send.php?tw='+encodeURI(tweet));
        n();
    });
    $("#send").fadeIn(300);
};
*/