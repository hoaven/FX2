<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>后台登录 | 蜂小二后台管理</title>

    <!-- Bootstrap Core CSS -->
    <link href="${pageContext.request.contextPath }/Style/Admin/bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="${pageContext.request.contextPath }/Style/Admin/bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath }/Style/Admin/dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="${pageContext.request.contextPath }/Style/Admin/bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">请登录</h3>
                    </div>
                    <div class="panel-body">
                        <form role="form" action="${pageContext.request.contextPath }/Manage/login.do" method="post">
                            <fieldset>
                            	<p class="text-danger">${errormessage}</p>
                            	<label class="text-info">用户名：</label>
                                <div class="form-group">
                                    <input class="form-control" name="username" type="text" autofocus/>
                                </div>
                                <label class="text-info">密码：</label>
                                <div class="form-group">
                                    <input class="form-control" name="password" type="password" value="">
                                </div>
                                <div class="form-group">
                                  	<input type="radio" name="roll" value="1" checked="checked"/> 管理员&nbsp;&nbsp;&nbsp;	<input type="radio" name="roll" value="2"/> 客服
                                </div>
                                <label class="text-info">验证码：</label>
								<div class="form-group">
									<input name="kaptcha" type="text" id="kaptcha" maxlength="4" size="10"
										class="chknumber_input" /> <img
										src="${pageContext.request.contextPath}/KaptchaImage/getKaptchaImage.do"
										id="kaptchaImage" height="35px;"/> <a href="#"
										onclick="changeCode()">看不清?换一张</a>
								</div>
                                <!-- Change this to a button or input when using this as a form -->
                                <button type="submit" class="btn btn-lg btn-success btn-block">登 录</button>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- jQuery -->
    <script src="${pageContext.request.contextPath }/Style/Admin/bower_components/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="${pageContext.request.contextPath }/Style/Admin/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="${pageContext.request.contextPath }/Style/Admin//bower_components/metisMenu/dist/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="${pageContext.request.contextPath }/Style/Admin/dist/js/sb-admin-2.js"></script>
    
    <!-- commom.js -->
	<script
		src="${pageContext.request.contextPath }/Manage/js/commom.js"></script>
    
	
	 <script src="${pageContext.request.contextPath }/Manage/js/login.js"></script>
</body>
</html>
