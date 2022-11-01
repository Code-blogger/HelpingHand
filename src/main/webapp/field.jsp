<%--
  Created by IntelliJ IDEA.
  User: 91747
  Date: 28-04-2022
  Time: 21:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="<%=request.getContextPath()%>/user" method="post">
  <fieldset>

    <select required placeholder="- select here -  ">
      <option value="null">- select here -</option>
      <option value="Organization">Organization</option>
      <option value="Individual">Individual</option>
    </select></br>
    <input type="text" name="username" placeholder="Username" /></br>
    <input type="text" name="email" placeholder="Email" /></br>
    <input type="password" name="password" placeholder="Password" /></br>
    <input type="text" name="name" placeholder="Name" />
    <input type="text" name="phone" placeholder="Phone" />
    <input type="text" name="website" placeholder="Website" />
    <textarea name="address" placeholder="Address"></textarea>
    <button type="submit">
      submit
    </button>
  </fieldset>
</form>

</body>
</html>
