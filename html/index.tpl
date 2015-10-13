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
            <li class="active"><a href="index.tpl">Informação da Lâmpada</a></li>
            <li><a href="gpio02.tpl">Liga/Desliga</a></li>
            <li><a href="/wifi">Configurar na sua rede local Wifi.</a></li>
        </ul>
    </div>
    <div id="content">
        Informação sobre a Lâmpada:
        <table class="device-info" id="info-table"></table>
    </div>
    <div class="clear"></div>
    <div class="footer">
        <p align="right">Desenvolvido por: <a href="http://www.fabricaguaiamum.com.br" target="_blank">Guaiamum</a></p>
    </div>
    
    <script type="text/javascript">var page = 'index';</script>
    <script type="text/javascript" src="js/script.js"></script>
</div>
</body>
</html>
