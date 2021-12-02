<%-- 
    Document   : delete
    Created on : Dec 2, 2021, 10:50:36 AM
    Author     : mooham12314
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Student Page</title>
    </head>
    <body>
        <h1>Delete Student</h1>
        <form name="mainForm" action="Del">
            ID : <input type="text" name="id" value="" size="10" />
            </br>
            <input type="submit" value="delete" name="delete" />
        </form>
        <br>
        <jsp:include page="show.jsp" flush="true" />
    </body>
</html>

