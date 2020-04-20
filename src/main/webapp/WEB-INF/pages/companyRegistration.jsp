<%--
  Created by IntelliJ IDEA.
  User: nzepa
  Date: 4/6/2020
  Time: 2:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Register Company</title>
</head>
<body>
<form class="card form-horizontal" id="companyRegistrationFormId" action="<c:url value='/companyRegistration'/>"
      method="post">

    <div class="form-group col-md-12"></div>

    <div class="form-group col-md-12">
        <label class="col-md-3 required">ID</label>

        <div class="col-md-4">
            <input type="text" name="companyId" id="companyId" class="form-control">
        </div>
    </div>

    <div class="form-group col-md-12">
        <label class="col-md-3 required">Company Name</label>

        <div class="col-md-4">
            <input type="text" name="companyName" id="companyName" class="form-control">
        </div>
    </div>

    <div class="form-group col-md-12">
        <div class="col-md-2 col-md-offset-3">
            <input type="submit" class="btn btn-xs btn-info btn-block" value="Submit" id="btnSave">
        </div>

    </div>

</form>
</body>
</html>
