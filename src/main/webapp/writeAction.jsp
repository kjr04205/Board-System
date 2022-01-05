<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="bbs.BbsDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="bbs" class="bbs.Bbs" scope="page" />
<jsp:setProperty name="bbs" property="bbsTitle" />
<jsp:setProperty name="bbs" property="bbsContent" />
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
        // �α��� �� ����� ȸ�������������� ���� ����
        if(session.getAttribute("userID") != null )
        {
            userID = (String) session.getAttribute("userID");
        }
        if(userID == null)
        {
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('�α����� �ϼ���')");
            script.println("location.href = 'login.jsp'");
            script.println("</script>");
        } else {
        if(bbs.getBbsTitle() == null || bbs.getBbsContent() == null) {
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('�Է��� �ȵ� ������ �ֽ��ϴ�.')");
            script.println("history.back()");
            script.println("</script>");
        } else {
            BbsDAO bbsDAO = new BbsDAO();
            int result = bbsDAO.write(bbs.getBbsTitle(), userID, bbs.getBbsContent());
                if(result == -1){ // �۾��⿡ �������� ���
                    PrintWriter script = response.getWriter(); //�ϳ��� ��ũ��Ʈ ������ ���� �� �ֵ���.
                    script.println("<script>");
                    script.println("alert('�۾��⿡ �����߽��ϴ�.')");
                    script.println("history.back()");
                    script.println("</script>");
                }
                else { // �۾��⿡ �������� ���
                    PrintWriter script = response.getWriter();
                    script.println("<script>");
                    script.println("location.href= 'bbs.jsp'");
                    script.println("</script>");
                    }
            }
        }
    %>
</body>
</html>