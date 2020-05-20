<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/main.css">
<title>Insert title here</title>
</head>
<body>
<form action="haeasiakkaat" method="get">
	<table id="listaus">
		<thead>
			<tr>
				<th colspan="5" class="oikealle"><a href="lisaaasiakas.jsp">Lisää uusi asiakas</a></th>
			</tr>
			<tr>
				<th class="oikealle">Hakusana:</th>
				<th colspan="3"><input type="text" name="hakusana" id="hakusana" value="${param['hakusana']}"></th>
				<th><input type="submit" value="hae" id="hakunappi"></th>
			</tr>
			<tr>
				<th>Etunimi</th>
				<th>Sukunimi</th>
				<th>Puhelin</th>
				<th>Sposti</th>
				<th>&nbsp;</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${asiakkaat}" var="listItem">
					<tr>
				        <td><c:out value="${listItem.etunimi}"/></td>
				        <td><c:out value="${listItem.sukunimi}"/></td>
				        <td><c:out value="${listItem.puhelin}"/></td>
				        <td><c:out value="${listItem.sposti}"/></td>
				        <td>
				        	<a href="muutaasiakas?asiakas_id=${listItem.asiakas_id}" class="muuta">muuta</a>
				        	<a onclick="varmista('${listItem.etunimi}','${listItem.sukunimi}','${listItem.asiakas_id}')" class="poista">poista</a>			        	
				        </td>
			        </tr>
			    </c:forEach>
		</tbody>
	</table>
</form>
<script>
function varmista(etunimi, sukunimi, asiakas_id){
	if(confirm("Haluatko varmasti poistaa asiakkaan "+ etunimi + " " + sukunimi + "?")){
		document.location="poistaasiakas?asiakas_id="+asiakas_id;
	}
}	
</script>
</body>
</html>