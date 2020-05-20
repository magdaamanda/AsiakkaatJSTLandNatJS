<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script src="scripts/main.js"></script>
<link rel="stylesheet" type="text/css" href="css/main.css">
<title>Insert title here</title>
</head>
<body>
<form id="tiedot" action="lisaaasiakas" method="post">
	<table>
		<thead>	
			<tr>
				<th colspan="5" class="oikealle"><a href="listaaasiakkaat.jsp">Takaisin</a></th>
			</tr>		
			<tr>
				<th>Etunimi</th>
				<th>Sukunimi</th>
				<th>Puhelin</th>
				<th>Sposti</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td><input type="text" name="etunimi" id="etunimi"></td>
				<td><input type="text" name="sukunimi" id="sukunimi"></td>
				<td><input type="text" name="puhelin" id="puhelin"></td>
				<td><input type="text" name="sposti" id="sposti"></td> 
				<td><input type="button" id="tallenna" value="Lis��" onclick="tarkasta()"></td>
			</tr>
		</tbody>
	</table>
</form>
<span id="ilmo"></span>
</body>
<script>
function tarkasta(){
	var d = new Date();
	if(document.getElementById("etunimi")).value.length<3){
		document.getElementById("ilmo").innerHTML="Etunimi on liian lyhyt.";
		return;
	}else if(document.getElementById("sukunimi").value.length<3){
		document.getElementById("ilmo").innerHTML="Sukunimi on liian lyhyt.";
		return;
	}else if(document.getElementById("puhelin").value*1!=document.getElementById("puhelin").value){
		document.getElementById("ilmo").innerHTML="Sy�t� puhelinnumeroksi vain numeroita.";
		return;
	}else if(document.getElementById("sposti").value<5){
		document.getElementById("ilmo").innerHTML="S�hk�posti on liian lyhyt.";
	}
	document.getElementById("etunimi").value=siivoa(document.getElementById("etunimi").value);
	document.getElementById("sukunimi").value=siivoa(document.getElementById("sukunimi").value);
	document.getElementById("puhelin").value=siivoa(document.getElementById("puhelin").value);
	document.getElementById("sposti").value=siivoa(document.getElementById("sposti").value);
	document.forms["tiedot"].submit();
}

function siivoa(teksti){
	teksti=teksti.replace("<","");
	teksti=teksti.replace(";","");
	teksti=teksti.replace("'","''");
	return teksti;
}
</script>
</html>