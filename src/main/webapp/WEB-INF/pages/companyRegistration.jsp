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

<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h4 class="m-0 text-dark">Company Registration</h4>
            </div><!-- /.col -->
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                    <li class="breadcrumb-item active">Dashboard v1</li>
                </ol>
            </div><!-- /.col -->
        </div><!-- /.row -->
    </div><!-- /.container-fluid -->
</div>
<%--<form class="card form-horizontal" id="companyRegistrationFormId"--%>
      <%--action="<c:url value='/companyRegistration'/>"--%>
      <%--method="post">--%>

    <%--<div class="form-group col-md-12">--%>
        <%--<label class="col-md-3 required">ID</label>--%>

        <%--<div class="col-md-4">--%>
            <%--<input type="text" name="companyId" id="companyId" class="form-control">--%>
        <%--</div>--%>
    <%--</div>--%>

    <%--<div class="form-group col-md-12">--%>
        <%--<label class="col-md-3 required">Company Name</label>--%>

        <%--<div class="col-md-4">--%>
            <%--<input type="text" name="companyName" id="companyName" class="form-control">--%>
        <%--</div>--%>
    <%--</div>--%>

    <%--<div class="form-group col-md-12">--%>
        <%--<label class="col-md-3 required">Company Name</label>--%>

        <%--<div class="col-md-4">--%>
            <%--<input type="text" name="date" id="date" class="form-control datepicker">--%>
        <%--</div>--%>
    <%--</div>--%>

    <%--<div class="form-group col-md-12">--%>
        <%--<div class="col-md-2 col-md-offset-3">--%>
            <%--<input type="submit" class="btn btn-xs btn-info btn-block" value="Submit" id="btnSave">--%>
        <%--</div>--%>
    <%--</div>--%>
<%--</form>--%>


<form role="form" id="quickForm" class="card">
    <div class="card-body">

        <div class="form-group row">
            <label for="exampleInputEmail1" class="col-sm-2 col-form-label">Email address</label>
            <div class="col-sm-10">
                <input type="email" class="form-control" name="email" id="exampleInputEmail1" placeholder="Name">
            </div>
        </div>

        <div class="form-group row">
            <label for="exampleInputEmail1" class="col-sm-2 col-form-label">Password</label>
            <div class="col-sm-10">
                <input type="password" class="form-control" name="password" id="exampleInputPassword1" placeholder="Name">
            </div>
        </div>

        <div class="form-group row">
            <label for="exampleInputEmail1" class="col-sm-2 col-form-label"></label>
            <div class="custom-control custom-checkbox">
                <input type="checkbox" name="terms" class="custom-control-input" id="exampleCheck1">
                <label class="custom-control-label" for="exampleCheck1">I agree to the <a href="#">terms of service</a>.</label>
            </div>
        </div>

        <div class="form-group row">
            <label for="exampleInputEmail1" class="col-sm-2 col-form-label"></label>
            <div class="col-sm-10">
                <button type="submit" class="btn btn-primary" id="btnSave">Submit</button>
            </div>
        </div>

    </div>

</form>

</body>
</html>
