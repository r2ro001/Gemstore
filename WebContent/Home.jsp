<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="store">
<head>
<script src="JS/angular.min.js"></script>
<script src="JS/app.js"></script>
<script src="JS/products.js"></script>

<style>

img
{
	width:100px;
	height:100px;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="JS/TestScript.js"></script>

<script type="text/javascript" src="JS/bootstrap.js"></script>
<script type="text/javascript" src="JS/bootstrap.min.js"></script>
<script type="text/javascript" src="JS/npm.js"></script>

<link rel="stylesheet" type="text/css" href="CSS/bootstrap-theme.css">
<link rel="stylesheet" type="text/css" href="CSS/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="CSS/bootstrap.css">
<link rel="stylesheet" type="text/css" href="CSS/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="CSS/main.css">
<link href='https://fonts.googleapis.com/css?family=Oswald:400,700' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Orbitron:900' rel='stylesheet' type='text/css'>

<title>Galaxy Store</title>
</head>

<body ng-controller="StoreController as store">



<h1>Galaxy Store</h1>


<div ng-repeat="product in store.products | orderBy:'+[price]'" id="galaxies">

<product-title></product-title>
<product-panels></product-panels>

</div>

</body>
</html>