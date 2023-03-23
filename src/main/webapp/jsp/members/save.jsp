<%@ page import="hello.servlet.domain.member.Member" %><%--
  Created by IntelliJ IDEA.
  User: sebin
  Date: 2023-03-23
  Time: 오후 11:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="hello.servlet.domain.member.Member" %>
<%@ page import="hello.servlet.domain.member.MemberRepository" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  MemberRepository memberRepository = MemberRepository.getInstance();

  System.out.println("MemberSaveServlet.service");
  String username = request.getParameter("username");
  int age = Integer.parseInt(request.getParameter("age"));

  Member member = new Member(username, age);
  memberRepository.save(member);
%>
<html>
<head>
    <title>SAVE</title>
</head>
<body>
성공
<ul>
  <li>id=<%=member.getId()%></li>
  <li>username<%=member.getUsername()%></li>
  <li>age<%=member.getAge()%></li>
</ul>
<a href="/index.html ">메인</a>

</body>
</html>
