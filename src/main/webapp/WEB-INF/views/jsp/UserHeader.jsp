<%@ page import="com.entities.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <title>User Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}resources/assets/css/st.css" >
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/jquery.validation/1.15.1/jquery.validate.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
        .dropbtn {
            color: white;
            border: none;
            cursor: pointer;
        }

        .dropdown {
            position: relative;
            display: inline-block;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index: 1;
        }

        .dropdown-content a {
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
            background-color:lightgray;

        }

        .dropdown-content a:hover {background-color: #3785f1;
            color: white;
        }

        .dropdown:hover .dropdown-content {
            display: block;
        }
    </style>
</head>
<body>
<div class="col-md-12 well" style="background:lightgray">
    <div class="col-md-5">
        <a href=""><h3 class="linkshare">Link Sharing</h3></a>
    </div>
    <div class="col-md-7">
        <div class="col-md-6">
            <div class="input-group add-on">
                <input class="form-control" placeholder="Search" name="srch-term" id="srch-term" type="text">
                <div class="input-group-btn">
                    <button class="btn btn-primary" type="submit"><i class="glyphicon glyphicon-search"></i></button>
                </div>
            </div>
        </div>
        <div class="col-md-6 ">
            <div class="col-md-2">
                <%@include file="Topic.jsp"%>
            </div>
            <div class="col-md-2">
                <%@include file="SendInvitation.jsp"%>
            </div>
            <div class="col-md-2">
                <%@include file="ShareLink.jsp"%>
            </div>
            <div class="col-md-2">
                <%@include file="CreateResource.jsp"%>
            </div>
            <div class="col-md-3">
                <div class="dropdown">
                    <button class="dropbtn btn btn-primary"><span class="glyphicon glyphicon-user"></span> <%=((User)request.getSession().getAttribute("Userdetails")).getUsername()%> <span class="glyphicon glyphicon-chevron-down"></span></button>
                    <div class="dropdown-content">
                        <a href="/userprofile">Profile<span class="glyphicon glyphicon-user" style="float: right"></span></a>
                        <a href="<c:url value="/logout" />">Logout<span class="glyphicon glyphicon-log-out" style="float: right"></span></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>