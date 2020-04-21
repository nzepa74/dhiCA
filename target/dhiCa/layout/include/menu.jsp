<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="/" class="brand-link">
        <img src="<c:url value='/resources/images/dhiLogo.png' />" alt="DHI Logo" class="brand-image img-circle elevation-3"
             style="opacity: .8">
        <span class="brand-text font-weight-light">DHI Compact A</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
        <!-- Sidebar user panel (optional) -->
        <%--<div class="user-panel mt-3 pb-3 mb-3 d-flex">--%>
            <%--<div class="image">--%>
                <%--<img src="/resources/images/techpark-logo.png" class="img-circle elevation-2" alt="User Image">--%>
            <%--</div>--%>
            <%--<div class="info">--%>
                <%--<a href="#" class="d-block">Alexander Pierce</a>--%>
            <%--</div>--%>
        <%--</div>--%>

        <!-- Sidebar Menu -->
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                <li class="nav-item has-treeview">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-copy"></i>
                        <p>
                           DHI Companies
                            <i class="fas fa-angle-left right"></i>
                            <span class="badge badge-info right">12</span>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">

                        <li class="nav-item">
                            <a href="/companyRegistration" class="nav-link">
                                <i class="fa fa-edit nav-icon"></i>
                                <p>Company Registration</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="pages/layout/fixed-footer.html" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Fixed Footer</p>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="nav-item has-treeview">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-chart-pie"></i>
                        <p>
                            Operation Screens
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="pages/charts/chartjs.html" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>ChartJS</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="pages/charts/flot.html" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Flot</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="pages/charts/inline.html" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Inline</p>
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>