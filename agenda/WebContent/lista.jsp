<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="agenda.daos.ContatoDAO"%>
<%@page import="agenda.models.Contato"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Lista de Contatos</h1>
	<table border="1">
		

		<thead>
			<tr>
				<td>Nome</td>
				<td>Email</td>
				<td>Endereco</td>
				<td>Data e Hora</td>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="contato" items="${contatos }">
				<tr>
					<td>${contato.nome}</td>
					<td><c:choose>
							<c:when test="${not empty contato.email }">
								<a href="mailton:${contato.email }">${contato.email }</a>
							</c:when>
							<c:otherwise>
      						E-mail não informado
   						 </c:otherwise>
						</c:choose></td>
					<td>${contato.endereco }</td>
					<td>${contato.dataNascimento.time}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

</body>
</html>