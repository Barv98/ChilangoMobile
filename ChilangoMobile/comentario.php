<html>
<head>
	<meta charset="UTF-8">
	<link rel="StyleSheet" href="estilo_CM.css" type="text/css"/>
	<title>Resultado</title>
</head>
<!--Style de logotipo y eslogan de ChilangoMobile-->
<style>
	.txts{
		 
	  width: 20%;
	  padding: 12px 20px;
	  margin: 8px 0;
	  display: inline-block;
	  border: 1px solid #ccc;
	  border-radius: 4px;
	  box-sizing: border-box;

	}
		.mar{
		display: block;
		margin-left: auto;
  		margin-right: auto;
	}
	.butn {
	  background-color: #5C8FAC;
	  border: none;
	  color: white;
	  padding: 15px 32px;
	  text-align: center;
	  text-decoration: none;
	  display: inline-block;
	  font-size: 16px;
	  margin: 4px 2px;
	  cursor: pointer;
	  font-family: "Lucida Console";
	}
	@font-face {
   		font-family: fuente1;
  		src: url("American Signs.otf") format("opentype");
	}

	@font-face {
   		font-family: fuente2;
  		src: url("Qualy Bold.ttf") format('truetype');
	}

@font-face {
   		font-family: fuente3;
  		src: url("CreatoDisplay-regular.otf") format('truetype');
	}
	@font-face {
   		font-family: fuente4;
  		src: url("Sono-Medium.ttf") format('truetype');
	}

	.logo{
		font-family: "fuente1";

		margin-left: auto;
		margin-right: auto;
	}
	.mar{
		display: block;
		margin-left: auto;
  		margin-right: auto;
	}
	.textoPt{

  		font-family: "fuente2";
	}
	.textoPt2{

  		font-family: "fuente4";
  		color: white;
	}

	.imag{
		width: 50%; 
		height: 50%;
		display: block;
  		margin-left: auto;
  		margin-right: auto;
	}
	.imag2{
		width: 50%; 
		height: 50%;
		display: block;
  		margin-left: auto;
  		margin-right: auto;
	}
	.encabezado{
		font-family: "fuente2";
		font-size: 50px;
	}
</style>
<body style ="background-color: #83E187">
	<!--Logotipo y eslogan de ChilangoMobile-->
	<div class="logo">
		<img class="mar" src="ChilangoMobileB.jpg" alt="Logotipo" width="85" height="100">
		<big><big><i><strong>Chilango Mobile la web que llegó a tiempo para que estés a tiempo.</strong></i></big></big>
	</div> 
<?php
function dispError(){ 
	return mysql_error() . "(" . mysql_error() . ")" ; 
}
//Impresión de los datos recibicidos por el usuario
echo "<h1 class='encabezado'>Datos recibidos:</h1><br> "."<big><big>Nombre Usuario: ".$_POST[NOMBRE]."<br>"."Correo Usuario: ".$_POST[CORREO]."<br>" ."Teléfono Usuario: ".$_POST[TELÉFONO]."<br>"."Comentario Usuario: ".$_POST[COMENTARIO]."<br><br>";
$nombre = $_POST[NOMBRE];  
$correo = $_POST[CORREO];
$tel = $_POST[TELÉFONO];
$texto = $_POST[COMENTARIO];

//conexión con el usuario
$db_cnx = mysql_connect("localhost", "chilango","");
if (! $db_cnx) { 
	dispError(); 
	exit(); 
}

//conexión base de datos
mysql_select_db('chilangomobile', $db_cnx);
//Mensaje para confirmar conexión correcta
//echo "conectado a DB" . dispError() . "<br>" ;

//Hora actual para el registro
date_default_timezone_set('America/Mexico_City');
$tmpo = date('Y-m-d  h:i:s',time());
echo "Hora de registro=$tmpo hrs.<br><br>";

//Comando SQL para almacenar la información en la base de datos 
$sql_cmdo = "insert into comentarios values ( '".$tmpo."','" . $nombre . "','". $correo . "','".$tel. "','" . $texto ."');";
//echo "insCmd = $sql_cmdo <br> <br>";	
//Resultados del comando anterior
$rslt=mysql_query($sql_cmdo);

echo "<h1 class='encabezado'>¡GRACIAS!</h1><br> ";

//Link de retorno a pagina home.html
echo "<br><img class='centrarI' src='regreso.png' alt='HOME' width='50' height='50' usemap='#home'>
	<map name='home'>
		<area shape='circle' coords='25,25,25' href='home.html' name='Sitio'/>
	</map>";

?>
</body>
</html>


