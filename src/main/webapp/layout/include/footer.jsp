<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<footer class="main-footer">
    <%--<strong>Copyright &copy; 2014-2019 <a href="http://adminlte.io">AdminLTE.io</a>.</strong>--%>
    <strong> Copyright &copy; DHI
            <%
        String currentDate = new SimpleDateFormat("yyyy").format(new Date());
        out.print(currentDate);
    %>
        || All rights reserved.
        <div class="float-right d-none d-sm-inline-block">
            Version 1.0.0.0
        </div>
</footer>