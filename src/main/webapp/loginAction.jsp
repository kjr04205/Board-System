<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="user.UserDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="user" class="user.User" scope="page" />
<jsp:setProperty name="user" property="userID" />
<jsp:setProperty name="user" property="userPassword" />
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width", initial-scale="1" > 

<title>BoardSystem</title>
</head>
<body>
	<% 
		String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String) session.getAttribute("userID");	
		}
		if(userID != null){
			PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('�̹� �α����� �Ǿ��ֽ��ϴ�.')");
            script.println("location.href = 'main.jsp'"); 
            script.println("</script>");
		}
		UserDAO userDAO = new UserDAO();
		int result = userDAO.login(user.getUserID(), user.getUserPassword());
		if (result ==1){
			session.setAttribute("userID", user.getUserID());
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("location.href = 'main.jsp'");
            script.println("</script>");
        }else if (result == 0){
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('��й�ȣ�� Ʋ���ϴ�.')");
            script.println("history.back()");    // ���� �������� ����ڸ� ����
            script.println("</script>");
        }
        else if (result == -1){
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('�������� �ʴ� ���̵��Դϴ�.')");
            script.println("history.back()");    // ���� �������� ����ڸ� ����
            script.println("</script>");
        }
        else if (result == -2){
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('DB ������ �߻��߽��ϴ�.')");
            script.println("history.back()");    // ���� �������� ����ڸ� ����
            script.println("</script>");
        }
	%>
</body>
</html>