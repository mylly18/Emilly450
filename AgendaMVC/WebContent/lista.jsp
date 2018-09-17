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
<title>Lista de Contatos</title>
</head>
<body>
   


	<table>

		<c:forEach var="c" items="${contatos}">

			<tr>

				<td>${c.id}</td>
				<td>${c.nome}</td>
				<td>${c.email}</td>
				<td>${c.endereco}</td>
				<td>${c.dataNascimento.time}</td>
				<td><a class="del" href="mvc?logica=RemoveContatoLogic&id=${c.id}">Deletar
						Contato</a></td>
			</tr>

		</c:forEach>

	</table>

    

	

</body>
</html>