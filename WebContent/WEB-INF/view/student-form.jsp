<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
	<title>Student form - Input Form</title>
</head>
<body>
	<form:form action="processForm" modelAttribute="student">
	First name: <form:input path="firstName" /> <!-- Spring MVC call the method in student class firstName -->
	<br><br>
	Last name: <form:input path="lastName" /> <!-- Spring MVC call the method in student class lastName -->
	<br><br>
	Country:
	<form:select path="country"> <!-- Spring MVC call the method in student class setCountry -->
		<form:option value="Brazil" label="Brazil"/>
		<form:option value="France" label="France"/>
		<form:option value="Germany" label="Germany"/>
		<form:option value="India" label="India"/>
	</form:select>
	<br><br>
	Country 2:
	<form:select path="secondCountry"> 
		<form:options items="${student.countryOptions}" />
	</form:select>
	<br><br>
	Favorite Language:
	Java <form:radiobutton path="favoriteLanguage" value ="Java" />
	C# <form:radiobutton path="favoriteLanguage" value ="C#" />
	PHP <form:radiobutton path="favoriteLanguage" value ="PHP" />
	<br><br>
	Operating systems:
	Linux <form:checkbox path="operatingSystems" value="Linux"/>
	Windows <form:checkbox path="operatingSystems" value="Windows"/>
	Mac <form:checkbox path="operatingSystems" value="Mac"/>
	<br><br>
	<input type="submit" value ="Submit" />
	</form:form>
</body>
</html>