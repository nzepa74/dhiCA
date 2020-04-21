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
            </div>
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                    <li class="breadcrumb-item active">Dashboard v1</li>
                </ol>
            </div>
        </div>
    </div>
</div>

<form role="form" id="companyRegistrationFormId" class="card" action="<c:url value='/companyRegistration'/>"
      method="post">
    <div class="card-body">

        <div class="form-group row">
            <label for="companyId" class="col-sm-2 col-form-label">Company Id</label>

            <div class="col-sm-10">
                <input type="text" class="form-control" name="companyId" id="companyId">
            </div>
        </div>

        <div class="form-group row">
            <label for="companyName" class="col-sm-2 col-form-label">Company Name</label>

            <div class="col-sm-10">
                <input type="text" class="form-control" name="companyName" id="companyName">
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-2 col-form-label"></label>

            <div class="col-sm-10">
                <button type="submit" class="btn btn-primary" id="btnSave">Submit</button>
            </div>
        </div>

        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="table-responsive">
                        <table class="table card-table table-vcenter text-nowrap table-bordered"
                               id="listTableId">
                            <thead>
                            <tr>
                                <th>Sl. No</th>
                                <th>Company ID</th>
                                <th>Company Name</th>
                            </tr>
                            </thead>
                            <tbody>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>

    </div>
</form>

</body>
</html>
