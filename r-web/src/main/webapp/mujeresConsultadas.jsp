
<%
	response.setHeader("Cache-Control", "no-store");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", 0);
%>

<%@ page contentType="text/html; charset=iso-8859-1" language="java"
	import="java.sql.*,java.util.*,java.text.SimpleDateFormat" errorPage=""
	session="false"%>
<%@page import="beans.Administrador"%>
<jsp:useBean
	id="bAdministrarPublicaciones" class="beans.AdministrarPublicaciones"
	scope="page" />



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%

String pn = request.getParameter("n");
String pa = request.getParameter("a");
String doc  = request.getParameter("d");


if(pn!=null && pn.equals("null")){
	pn = null;
	
}



if(pa!=null && pa.equals("null")){
	pa = null;	
	
}


if(doc!=null && doc.equals("null")){
	
	doc = null;	
}



List<Object[]> administradores = bAdministrarPublicaciones.getMujeresS2(pn,pa,doc);

	if (administradores.size() > 0) {
%>
<table width="100%" border="0" cellspacing="2" cellpadding="2">
	<tr>
		<td bgcolor="#E81D8F">
		<div align="center" style="color:#FFFFFF">ITEM</div>
		</td>
		<td bgcolor="#E81D8F">
		<div align="center" style="color:#FFFFFF">NOMBRE</div>
		</td>
		<td bgcolor="#E81D8F">
		<div align="center" style="color:#FFFFFF">No. Identificación</div>
		</td>
		<td bgcolor="#E81D8F">
		<div align="center" style="color:#FFFFFF"></div>
		</td>
	</tr>
	<%
		int j = 0;
			for (Object[] i : administradores) {
				j++;
				
				if(i[2]==null){
					i[2]= "";
				}
				if(i[4]==null){
					i[4]= "";
				}
				
				
	%>
	<tr >
		<td align="center" bgcolor="#EEEEEE"><font color="black"><%=j%></font></td>
		<td align="center" bgcolor="#EEEEEE">
		<div align="left"><font color="black"><%=i[1] + " " + i[2]  %></font></div>
		</td>
		<td align="center" bgcolor="#EEEEEE" ><font color="black"><%=i[4] %></font></td>
		<td align="center" bgcolor="#EEEEEE"><a href="#" onclick="cargarCrearMC(<%=i[0] %>); return false;">Seleccionar para caso</a></td>
		
	</tr>
	<%
		}
	%>
</table>

<%
	} else {
%>
Consulta sin resultados
<%
	}
%>



