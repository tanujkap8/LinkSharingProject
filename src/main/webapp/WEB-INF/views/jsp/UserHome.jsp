<%@ page import="com.entities.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
</head>
<body  style="background-image: url('${pageContext.request.contextPath}/resources/assets/images/bg.jpeg')">
  <div class="container ">
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
                      <li class="list-group-item" style="background:lightgray">Subscriptions<a style="float: right">View All</a></li>
                      <li class="list-group-item">
                          <div class="media">
                              <div class="media-left">
                                  <img src="/getPhoto" width="120" height="120"/>
                              </div>
                              <div class="media-body">
                                  <h4 class="media-heading">  <small><i>@uday 5min</i></small><a href="" style="float:right; font-size:12px">Grails</a></h4>

                                  <div class="pgd">
                                      <a href="" style="float:right">View post</a>
                                  </div>
                              </div>
                          </div>
                          <div class="media" style="padding-top :10">
                              <div class="media-left">
                                  <img src="/getPhoto" width="120" height="120">
                              </div>
                              <div class="media-body">
                                  <h4 class="media-heading">Uday Pratap singh  <small><i>@uday 10min</i></small><a href="" style="float:right;font-size:12px">Grails</a></h4>
                                  <div class="pgd">
                                      <a href="" style="float:right">View post</a>
                                  </div>
                              </div>
                          </div>
                      </li>
                  </ul>

              </div>
          </div>
      </div>
  </div>
</body>
</html>