<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book Registration</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
	<head>
		<nav class="nav-bar">
			<div class="heading">
				<h1>Beauty of Book</h1>
			</div>
			<ul>
				<li></li>
				<li></li>
			</ul>
		</nav>
	</head>
	<main>
		<div class="form">
		<h1>Registration</h1>
		<p class="message">${message}</p>
			<form action="Registration" method="post" class="frm">
				<table>
					<tr>
						<td>Book name:</td>
						<td><input type="text" name="name"></td>
					</tr>
					<tr>
						<td>Book Edition:</td>
						<td><input type="text" name="edition"></td>
					</tr>
					<tr>
						<td>Book Price:</td>
						<td><input type="text" name="price"></td>
					</tr>
					
				</table>
				<input type="submit" value="submit" class="btn">
				<a href="viewbook.jsp" class="btn">View Books</a>
			</form>
		</div>
	</main>
</body>
</html>