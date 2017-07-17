<%--
  Created by IntelliJ IDEA.
  User: tanuj
  Date: 7/8/17
  Time: 12:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Link-Share</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}resources/assets/css/st.css" >
  <script href="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/jquery.validation/1.15.1/jquery.validate.min.js"></script>
  <script href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script type="text/javascript">
      $().ready(function () {
          $("#validateform").validate({
              rules: {
                  email: {
                      required: true,
                      email: true
                  },
                  userName: {
                      required: true,
                      minlenght: 3,
                      maxlength: 15
                  },
                  password: {
                      required: true,
                      minlength: 5
                  },
                  confirmpassword: {
                      required: true,
                      equalTo: "#password"
                  }

              },
              messages: {
                  userName: {
                      require: "Dont Forget your Username",
                      minlength: "You minlength is not right",
// maxlength:$.validator.format("You have exceeded the maxlength {0}")
                  },
                  confirmpassword: {
                      require: "You Forgot to confirm your password",
                      equalTo: "Password Not match"
                  }
              }
          });
      });
  </script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body style="background-image: url('${pageContext.request.contextPath}/resources/assets/images/bg.jpeg')">
<div class="container">
 <%@include file="Header.jsp"%>
  <div class="msec">
    <div class="col-md-12">
      <div class="col-md-7 ">
        <ul class="list-group">
          <li class="list-group-item" style="background:lightgray">Recent shares</li>
          <li class="list-group-item">
            <div class="media">
              <div class="media-left">
                <img src="${pageContext.request.contextPath}/resources/assets/images/dp.jpg" width="120" height="120"/>
              </div>
              <div class="media-body">
                <h4 class="media-heading">Uday Pratap singh  <small><i>@uday 5min</i></small><a href="" style="float:right; font-size:12px">Grails</a></h4>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                <div class="pgd">
                  <div class="soc">
                    <a href="#" class="fa fa-facebook"></a>
                    <a href="#" class="fa fa-twitter"></a>
                    <a href="#" class="fa fa-google"></a>
                  </div>
                  <a href="" style="float:right">View post</a>
                </div>
              </div>
            </div>
            <div class="media" style="padding-top :10">
              <div class="media-left">
                <img src="${pageContext.request.contextPath}/resources/assets/images/dp.jpg" width="120" height="120">
              </div>
              <div class="media-body">
                <h4 class="media-heading">Uday Pratap singh  <small><i>@uday 10min</i></small><a href="" style="float:right;font-size:12px">Grails</a></h4>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                <div class="pgd">
                  <div class="soc">
                    <a href="#" class="fa fa-facebook"></a>
                    <a href="#" class="fa fa-twitter"></a>
                    <a href="#" class="fa fa-google"></a>
                  </div>
                  <a href="" style="float:right">View post</a>
                </div>
              </div>
            </div>
          </li>
        </ul>
        <ul class="list-group">
          <li class="list-group-item" style="background:lightgray;height:45px">
            <div class="top">
              <h4 style="margin:0%;padding:0%">Top Posts</h4>
              <div class="dropdown float-lg-right" style="float:right;;padding:0%;margin-top:-4% ;margin-right:4%">
                <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Today
                  <span class="caret"></span>
                </button>
                <ul class="dropdown-menu" >
                  <li><a href="#">Today</a></li>
                  <li><a href="#">1 week</a></li>
                  <li><a href="#">1 month</a></li>
                </ul>
              </div>
            </div>
          </li>
          <li class="list-group-item">
            <div class="media" style="padding-top :10">
              <div class="media-left">
                <img src="${pageContext.request.contextPath}/resources/assets/images/dp.jpg" width="120" height="120">
              </div>
              <div class="media-body">
                <h4 class="media-heading">Uday Pratap singh  <small><i>@uday 10min</i></small><a href="" style="float:right;font-size:12px">Grails</a></h4>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                <div class="pgd">
                  <div class="soc">
                    <a href="#" class="fa fa-facebook"></a>
                    <a href="#" class="fa fa-twitter"></a>
                    <a href="#" class="fa fa-google"></a>
                  </div>
                  <a href="" style="float:right">View post</a>
                </div>
              </div>
            </div>
          </li>
        </ul>
      </div>
      <div class="col-md-5">
        <%@include file="Login.jsp"%>
        <%@include file="Registration.jsp"%>
      </div>
    </div>
  </div>
</div>
</body>
</html>
