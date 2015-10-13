<html>
  <head>
      <title>SmartHome - SmartLamp</title>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, user-scalable=no">
      <link rel="stylesheet" type="text/css" href="css/style.css">
      <link rel="stylesheet" href="https://storage.googleapis.com/code.getmdl.io/1.0.5/material.blue_grey-blue.min.css" />
      <script src="https://storage.googleapis.com/code.getmdl.io/1.0.5/material.min.js"></script>
      <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"/>
  </head>
  <body>
  <div id="main">
      <h1>SmartHome - SmartLamp</h1>
      <div id="menu">
          <ul>
              <li><a href="index.tpl">Informação da Lâmpada</a></li>
              <li class="active"><a href="gpio02.tpl">Liga/Desliga</a></li>
              <li><a href="/wifi">Configurar na sua rede local Wifi.</a></li>
          </ul>
      </div>
    <div id="content">
        Utilize os botões abaixo para acionar a sua lâmpada, atualmente ela está em modo: <span id="current-state">--</span>.<br />
        Escolha um botão:<br/>
        <a href="#" id="on-button" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent">On</a>
        <a href="#" id="off-button" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent">Off</a>
    </div>
    <div class="clear"></div>
    <div class="footer">
        <p align="right">Desenvolvido por: <a href="http://www.fabricaguaiamum.com.br" target="_blank">Guaiamum</a></p>
    </div>
</div>
<script type="text/javascript">var page = 'gpio02';</script>
<script type="text/javascript" src="js/script.js"></script>
</body>
</html>
