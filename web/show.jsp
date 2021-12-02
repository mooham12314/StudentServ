<%-- 
    Document   : show
    Created on : Dec 2, 2021, 10:51:00 AM
    Author     : mooham12314
--%>


<%@page import="java.util.List"%>
<%@page import="servlet.StudentTable"%>
<%@page import="java.util.Iterator"%>
<%@page import="servlet.Student"%>
<%@page import="java.util.Vector"%>
<%@page import="javax.persistence.EntityManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Show Student Page</title>
    </head>
    
    <jsp:useBean id="st" class="servlet.Student" scope="request"/>
    <%
            List<Student> stList = StudentTable.findAllStudent();
            Iterator<Student> itr = stList.iterator();
     %>
     
    <body>
        <h1>Show Student</h1>
             
 <table border="1">
          <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Salary</th>
          </tr>
          <%
                while(itr.hasNext()) {
                   st = itr.next();
                   out.println("<tr>");
                   out.println("<td> "+ st.getId() + "</td>");
                   out.println("<td> "+ st.getName() + "</td>");
                   out.println("<td> "+ st.getGpa() + "</td>");
                   out.println("<tr>");
               }
          %>
 </table>
 
 <a href="index.html">Back to Menu</a>
 
    </body>
</html>

