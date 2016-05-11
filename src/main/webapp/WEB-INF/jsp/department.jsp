<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head><title>Departments</title></head>
<body>
<table border=1>
<tr><th>ID</th><th>Department</th><th>Programs</th></tr>
<c:forEach items="${department}" var="department">
<tr>
  <td>${department.id}</td>
  <td>${department.name}</td>
  <td>
  	<a href="programs.html?id=${department.id }">click here to view programs</a>
  </td>
</tr>
</c:forEach>
</table>
</body>
</html>