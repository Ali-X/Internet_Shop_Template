<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>User Page</title>

    <!-- Bootstrap core CSS -->
    <link href="<c:url value="/resources/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="<c:url value="/resources/bootstrap/css/signin.css"/>" rel="stylesheet">

    <link href="<c:url value="/resources/bootstrap/css/style.css"/>" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]>
    <script src="/resources/bootstrap/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="/resources/bootstrap/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
<h3 class="masthead-brand"><a href="<c:url value="/home"/>">Ali-X Spring project</a></h3>
<div class="container">

    <h1>Hello, ${user.username}</h1>
    <br>
    <table>
        <tr>
            <th><a href="<c:url value="/profile"/>">My info</a></th>
            <th><a href="<c:url value="/profile/orders"/>">My orders</a></th>
        </tr>
        <tr>
            <td>
                <h2>Name:</h2>
                <h4><c:out value="${user.username}"/></h4>
                <h2>Password:</h2>
                <h4><c:out value="${user.password}"/></h4>
                <h2>Email:</h2>
                <h4><c:out value="${user.email}"/></h4>
            </td>
            <td>
                <h2>Image:</h2>
                <img src="<c:url value="/image">
                                    <c:param name="name" value="${user.username}" />
                                </c:url>" alt="Image"
                     width="200" height="200"/>
            </td>
        </tr>
    </table>

</div> <!-- /container -->

</body>
</html>
