<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
</head>
<body style="background-image: url('${pageContext.request.contextPath}/resources/assets/images/bg.jpeg')">
<div class="container">
    <div class="col-md-12">
        <%@include file="Header.jsp" %>
    </div>
    <div class="col-md-12">
        <div class="col-md-5">
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="text-center">
                        <h3><i class="fa fa-lock fa-4x"></i></h3>
                        <h2 class="text-center">Forgot Password?</h2>
                        <p>Please provide us your Email Address. We are here to help you</p>
                        <div class="panel-body">

                            <form id="emailform" action="/sendOTP" role="form" autocomplete="off" class="form"
                                  method="post">

                                <div class="form-group">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i
                                                class="glyphicon glyphicon-envelope color-blue"></i></span>
                                        <input id="email" name="email" placeholder="email address"
                                               class="form-control"
                                               type="email">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <input id="#sendOTP" name="recover-submit" class="btn btn-lg btn-primary btn-block"
                                           value="Send OTP" type="submit">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-7">
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="text-center">
                        <h3><i class="fa fa-unlock fa-4x"></i></h3>
                        <h2 class="text-center">Update Password</h2>
                        <p>You can reset your password here.</p>
                        <div class="panel-body">
                            <form id="passwordEntryform" role="form" action="/forgotpasswordform"
                                  method="post">
                                <div class="form-group">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                    <label>Email</label>
                                        </span>
                                        <input type="email" name="email"
                                               placeholder="Enter email" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <label>OTP</label></span>
                                        <input type="text" name="otp" class="form-control" placeholder="Enter otp">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <label>Password</label></span>
                                        <input type="password" name="password"
                                               placeholder="Enter password" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <label>Confirm password</label></span>
                                        <input type="password" name="confirm_password" id="confirm_password"
                                               placeholder="Enter password again" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <input type="submit" form="passwordEntryform"
                                           class="btn btn-lg btn-primary btn-block">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
