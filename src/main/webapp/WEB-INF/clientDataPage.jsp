<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: KrotSV
  Date: 23.07.2017
  Time: 21:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ClientDataPage</title>
</head>
<body>
<h3>Personal account</h3>
<p>${client.firstName} ${client.lastName}</p>
<p>${birthday}</p>
<%--<p>${client.birthday}</p>--%>
<form>
<table border="1">
    <tr>
        <td></td>
        <td><b>CardNumber</b></td>
        <td><b>Balance</b></td>
        <td><b>Card type</b></td>
        <td><b>Limit</b></td>
        <td><b>isBlocked</b></td>
    </tr>
    <c:forEach items="${accounts}" var="account">
    <tr>
        <td><input type="radio" name="cardChoose" value="${account.cardNumber}"></td>
        <td>${account.cardNumber}</td>
        <td>${account.balance}</td>
        <td>${account.typeCard}</td>
        <td>${account.limit}</td>
        <td>${account.status}</td>
    </tr>
</c:forEach></table>
    <p><button type="submit" formaction="/payCard">Pay</button>
    <button type="submit" formaction="/addMoneyToCard">Add</button>
    <button type="submit" formaction="/showHistory">History</button>
    <button type="submit" formaction="/blockCard">Block</button></p>
    <p><button type="submit" formaction="/requestNewCard">Request new card</button></p>
    <p><button type="submit" formaction="/">Exit</button></p>
</form>
</body>
</html>
