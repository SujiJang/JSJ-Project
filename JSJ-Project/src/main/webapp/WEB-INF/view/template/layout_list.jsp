<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<title><tiles:getAsString name="title"/></title>
<link rel="stylesheet" type="text/css" href="../css/layout_list.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="../js/body-list.js"></script>
</head>
<body>
	<header>
		<p>
			<tiles:insertAttribute name="header"/>
		</p>
	</header>
	<menu>
			<tiles:insertAttribute name="menu"/>
	</menu>
	<section>
		<p>
			<tiles:insertAttribute name="body"/>
		</p>
	</section>
	<footer>
		<p>
			<tiles:insertAttribute name="footer"/>
		</p>
	</footer>
</body>
</html>