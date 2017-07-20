<%@ page import="com.entities.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<body style="background-image: url('${pageContext.request.contextPath}/resources/assets/images/bg.jpeg')">
<div class="container">
    <%@include file="UserHeader.jsp"%>
        <div class="msec">
            <div class="col-md-12">
                <div class="col-md-6 ">
                    <ul class="list-group">
                        <li class="list-group-item">
                            <div class="media">
                                <div class="media-left">
                                    <img src="/getPhoto" width="120" height="120"/>
                                </div>
                                <div class="media-body">
                                    <h3 class="media-heading"><%=((User)request.getSession().getAttribute("Userdetails")).getFirstname()%>&nbsp;<%=((User)request.getSession().getAttribute("Userdetails")).getLastname()%><small><i>@<%=((User)request.getSession().getAttribute("Userdetails")).getUsername()%></i></small><a href="" style="float:right; font-size:12px">Grails</a></h3>
                                    <div class="col-md-6">
                                        <h4>Subscriptions</h4><br/>
                                        <small><p>50</p></small>
                                    </div>
                                    <div class="col-md-6">
                                        <h4>Topics</h4><br/>
                                        <small><p>20</p></small>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                    <ul class="list-group">
                        <li class="list-group-item" style="background:lightgray">Topics
                            <div class="input-group add-on" style="float: right">
                                <input class="form-control" placeholder="Search" name="srch-term" id="srch-term" type="text">
                                <div class="input-group-btn">
                                    <button class="btn btn-primary" type="submit"><i class="glyphicon glyphicon-search"></i></button>
                                </div>
                            </div>
                        </li>
                        <li class="list-group-item">
                        </li>
                    </ul>
                </div>
                <div class="col-md-6">
                    <ul class="list-group">
                        <li class="list-group-item" style="background:lightgray">Profile</li>
                        <li class="list-group-item">
                            <form action="/" method="post">
                                <div class="form-group">
                                    <label for="firstname">Firstname*</label>
                                    <input type="text" required="required" name="firstname" class="form-control" id="firstname"  placeholder="<%=((User)request.getSession().getAttribute("Userdetails")).getFirstname()%>">
                                </div>
                                <div class="form-group">
                                    <label for="lastname">Lastname*</label>
                                    <input type="text" required="required" name="lastname" class="form-control" id="lastname" placeholder="<%=((User)request.getSession().getAttribute("Userdetails")).getLastname()%>">
                                </div>
                                <div class="form-group">
                                    <label for="username">Username*</label>
                                    <input type="text" required="required" name="username" class="form-control" id="username" placeholder="<%=((User)request.getSession().getAttribute("Userdetails")).getUsername()%>">
                                </div>
                                <div class="form-group">
                                    <label>Photo*</label>
                                    <div class="input-group add-on">
                                        <input class="form-control" placeholder="browse"  id="search-term" type="text">
                                        <div class="input-group-btn">
                                            <input class="btn btn-default" name="photo" type="file"><i>Browse</i>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="checkbox">
                                    <button type="submit" class="btn btn-primary">Update</button>
                                </div>
                                </div>
                            </form>
                        </li>
                    </ul>
                    <ul class="list-group">
                        <li class="list-group-item" style="background:lightgray">Change Password</li>
                        <li class="list-group-item">
                            <form action="" method="post">
                                <div class="form-group">
                                    <label for="pwd">Password*</label>
                                    <input type="password" required="required" name="password" class="form-control" id="pwd" placeholder="Enter password">
                                </div>
                                <div class="form-group">
                                    <label for="pwd">Confirm Password*</label>
                                    <input type="password" required="required" name="password" class="form-control" id="pwdcon" placeholder="Renter password">
                                </div>
                                <div class="form-group">
                                    <div class="checkbox">
                                     <button type="submit" class="btn btn-primary">Update</button>
                                    </div>
                                </div>
                            </form>
                        </li>
                    </ul>
                </div>
            </div>
      </div>
  </div>
</body>