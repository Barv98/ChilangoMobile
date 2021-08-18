<html>
<head>
	<meta charset="UTF-8">
	<link rel="StyleSheet" href="estilo_CM.css" type="text/css"/>
	<title>Resultados Comentarios</title>
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

echo "<h1 class='encabezado'>BIENVENIDO AL TOTAL DE COMENTARIOS:</h1><br><br><br>";

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

//Comando SQL
$sql_cmd = "select * from comentarios;";
//echo "instruccionCmd = $sql_cmd <br><br>";
//Resultados
$resultado = mysql_query($sql_cmd);
//echo "rows = " . mysql_affected_rows() ."<br><br>";
$nRows=mysql_affected_rows();
$n=1;
//Creación de archivo
if (!($da = fopen('comentario.txt','w')))
	return;
//Impresión de los comentarios en panatalla y documento
echo "<big><big>";
while($n<= $nRows){
	echo "comentario = ".$n."<br>";
	$fila=mysql_fetch_array($resultado);
	echo "Fecha:    ".$fila[0]."   Nombre:    ".$fila[1]."   Correo:   ".$fila[2]."   Tel:  ".$fila[3]."   Texto:  ".$fila[4]."<br><br>";
	fprintf($da,"Fecha:%s Nombre:%s  Correo:%s   Tel:%s   Texto:%s\r\n",$fila[0],$fila[1],$fila[2],$fila[3],$fila[4]);
	$n++;
	 
}
//Link de retorno a pagina home.html
echo "<br><img class='centrarI' src='regreso.png' alt='HOME' width='50' height='50' usemap='#home'>
	<map name='home'>
		<area shape='circle' coords='25,25,25' href='home.html' name='Sitio'/>
	</map>";

?>
</body>
</html>







