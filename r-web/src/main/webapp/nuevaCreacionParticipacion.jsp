
<%
	response.setHeader("Cache-Control", "no-store");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", 0);
%>

<%@ page contentType="text/html; charset=iso-8859-1" language="java"
	import="java.sql.*,java.util.*,java.text.SimpleDateFormat" errorPage=""
	session="false"%>

<jsp:useBean id="bAdministrarPublicaciones"
	class="beans.AdministrarPublicaciones" scope="page" />


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<%
	String c = request.getParameter("c");
	String id = request.getParameter("id");
	String cual = request.getParameter("cual");


	String[] valores = c.split("-");
	if (valores != null && valores[1].equals("N")) {

		cual = null;

	}

	//out.println("tipo organizac "+valores[0]+" mujer "+ id+" justificac "+	cual+" tipo participa "+tipo+" cargos "+cargos);
	
	int exito = bAdministrarPublicaciones.crearParticipacion(valores[0], id,cual); 
%>

<input name="hdnExito" type="hidden" value="<%=exito%>" id="hdnExito" />







