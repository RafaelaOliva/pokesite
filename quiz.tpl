<!DOCTYPE html>
<html>
  <head>
    <script type="text/javascript">
      var result;

        function check()
        {
          var question;
          var value1;
          var value2;
          var value3;
          var answer;
          var youranswer;

          question = 1;
          value1 = 0;
          value2 = 0;
          value3 = 0;
          result = "";
          answer = 1;
          var choice;

          for (question = 1; question <= 4; question++) {
            var q = document.forms['quiz'].elements['q'+question];
          for (var i = 0; i < q.length; i++) {
            if (q[i].checked) {
             choice = q[i].value;
              }
            }
          if (choice == "Valor") {
            value1++;
          }
          if (choice == "Mystic") {
            value2++;
          }
          if (choice == "Instinct") {
            value3++;
          }
        }

        if (value1 >= value2 && value1 >= value3 && value1 > 0) {
          result = "value1";
        }
        else if (value2 > value1 && value2 >= value3 && value2 > 0) {
          result = "value2";
        }
        else if (value3 > value1 && value3 > value2 && value3 > 0) {
          result = "value3";
        }
        else {
          result = "erro";
        }
        window.location = result;
      }
    </script>

    <title>Pokesite!</title>
    <link rel="stylesheet" type="text/css" href="/statics/estilo.css">
    <link rel="shortcut icon" href="/images/favicon.ico" type="image/x-icon">
  </head>
  <body>
    <header>
      <h1 class="fL">
      <center><a href="quiz"><img src="/images/pokesite.png" width="200" height="71"  alt="Pokésite!"></a></center>
      </h1>
    </header>

    <div align="center">
      <div id="Formulario">
        <div class="absolute">
          <form name="quiz" action="javascript:check();">
            <font face="Tahoma">
              <br>
              <p align="center">Você se considera uma pessoa:</p>
              <font size="2">
                <input type="radio" name="q1" value="Valor" checked="checked">Determinada<br>
                <input type="radio" name="q1" value="Mystic">Inteligente<br>
                <input type="radio" name="q1" value="Instinct">Intuitiva<br>
              </font>
              <br>

              <p align="center">Escolha um elemento:</p>
              <font size="2">
                <input type="radio" name="q2" value="Valor" checked="checked">Terra<br>
                <input type="radio" name="q2" value="Mystic">Ar<br>
                <input type="radio" name="q2" value="Instinct">Fogo<br>
              </font>

              <p align="center">Voce se considera uma pessoa impulsiva?</p>
              <font size="2">
                <input type="radio" name="q3" value="Valor" checked="checked">As vezes<br>
                <input type="radio" name="q3" value="Mystic">Nao<br>
                <input type="radio" name="q3" value="Instinct">Sim<br>
              </font>

              <p align="center">Dentre esses, qual o seu Pokemon favorito? </p>
              <font size="2">
                <input type="radio" name="q4" value="Valor" checked="checked">Charizard<br>
                <input type="radio" name="q4" value="Mystic">Gyarados<br>
                <input type="radio" name="q4" value="Instinct">Dragonite<br>
                <br>
              </font>
            </font>
            <input type="submit" value="Escolho você!">&nbsp;<input type="reset" value="Reset">
          </form>
        </div>
      </div>
    </div>
  </body>
</html>
