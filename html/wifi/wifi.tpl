<html>
  <head>
      <title>SmartHome - SmartLamp</title>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, user-scalable=no">
      <link rel="stylesheet" type="text/css" href="css/style.css">


<link rel="stylesheet" type="text/css" href="../css/style.css">
<link rel="stylesheet" href="https://storage.googleapis.com/code.getmdl.io/1.0.5/material.blue_grey-blue.min.css" />
<script src="https://storage.googleapis.com/code.getmdl.io/1.0.5/material.min.js"></script>
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"/>
<script type="text/javascript" src="140medley.min.js"></script>
<script type="text/javascript">

var xhr=j();
var currAp="%currSsid%";

function createInputForAp(ap) {
	if (ap.essid=="" && ap.rssi==0) return;
	var div=document.createElement("div");
	div.id="apdiv";
	var input=document.createElement("input");
	input.type="radio";
	input.name="essid";
	input.value=ap.essid;
	if (currAp==ap.essid) input.checked="1";
	input.id="opt-"+ap.essid;
	var label=document.createElement("label");
	label.htmlFor="opt-"+ap.essid;
	label.textContent=ap.essid+" (rssi "+ap.rssi+")";
	div.appendChild(input);
	div.appendChild(label);
	return div;
}

function getSelectedEssid() {
	var e=document.forms.wifiform.elements;
	for (var i=0; i<e.length; i++) {
		if (e[i].type=="radio" && e[i].checked) return e[i].value;
	}
	return currAp;
}


function scanAPs() {
	xhr.open("GET", "wifiscan.cgi");
	xhr.onreadystatechange=function() {
		if (xhr.readyState==4 && xhr.status>=200 && xhr.status<300) {
			var data=JSON.parse(xhr.responseText);
			currAp=getSelectedEssid();
			if (data.result.inProgress=="0" && data.result.APs.length>1) {
				$("#aps").innerHTML="";
				for (var i=0; i<data.result.APs.length; i++) {
					if (data.result.APs[i].essid=="" && data.result.APs[i].rssi==0) continue;
					$("#aps").appendChild(createInputForAp(data.result.APs[i]));
				}
				window.setTimeout(scanAPs, 20000);
			} else {
				window.setTimeout(scanAPs, 3000);
			}
		}
	}
	xhr.send();
}


window.onload=function(e) {
	scanAPs();
};
</script>
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
        <p>Modo atual do Wifi: %WiFiMode%</p>
        <form name="wifiform" action="connect.cgi" method="post">
        <p>
        Para conectar a SmartLamp a sua rede Wifi, escolha ela na lista abaixo...<br>
        <div id="aps">Procurando...</div>
        <br>
        Senha do Wifi (se tiver): <br />
        <input type="text" name="passwd" val="%WiFiPasswd%"> <br />
        <input type="submit" name="connect" value="Conectar!">
        </p>
    </div>
    <div class="clear"></div>
		<div class="footer">
        <p align="right">Desenvolvido por: <a href="http://www.fabricaguaiamum.com.br" target="_blank">Guaiamum</a></p>
    </div>
</div>
</body>
</html>
