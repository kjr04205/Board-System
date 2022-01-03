<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width", initial-scale="1" > 
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
  <script src="js/bootstrap.js"></script>
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/bootstrap.css"> 
<title>BoardSystem</title>
</head>
<body>
	<nav class ="navbar navbar-default">
        <div class="navbar-header"> <!-- Ȩ�������� �ΰ� -->
            <button type="button" class="navbar-toggle collapsed"
                data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
                aria-expand="false">
                <span class ="icon-bar"></span> <!-- �ٿ����� ���� ¦��� -->
                <span class ="icon-bar"></span>
                <span class ="icon-bar"></span>
            </button>
            <a class ="navbar-brand" href="main.jsp">JSP �Խ��� �� ����Ʈ</a>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li><a href="main.jsp">����</a></li>
                <li><a href="bbs.jsp">�Խ���</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                <a href="#" class = "dropdown-toggle"
                    data-toggle="dropdown" role ="button" 
                    aria-haspopup="true"
                    aria-expanded="false">�����ϱ�<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li class="active"><a href="login.jsp">�α���</a></li>
                        <li><a href="join.jsp">ȸ������</a></li>                    
                    </ul>
                </li>
            </ul>
        </div>
    </nav>
    
    <div class="container">
        <div class="col-lg-4"></div>
        <div class="col-lg-4">
            <div class ="jumbotron" style="padding-top:20px;">
                <form method = "post" action="joinAction.jsp">
                    <h3 style="text-align:center;">ȸ������ ȭ��</h3>
                    <div class ="form-group">
                        <input type ="text" class="form-control" placeholder="���̵�" name ="userID" maxlength='20'>
                    </div>
                    <div class ="form-group">
                        <input type ="password" class="form-control" placeholder="��й�ȣ" name ="userPassword" maxlength='20'>
                    </div>
                    <div class ="form-group">
                        <input type ="text" class="form-control" placeholder="�̸�" name ="userName" maxlength='20'>
                    </div>
                    <div class ="form-group" style="text-align: center;">
                        <div class="btn-group" data-toggle="buttons">
                            <label class="btn btn-primary active">
                                <input type="radio" name="userGender" autocomplete="off" value="����" checked>����
                            </label>
                            <label class="btn btn-primary">
                                <input type="radio" name="userGender" autocomplete="off" value="����" checked>����
                            </label>
                            </div>    
                    </div>
                    <div class ="form-group">
                        <input type ="email" class="form-control" placeholder="�̸���" name ="userEmail" maxlength='20'>
                    </div>                   
                    <input type="submit" class="btn btn-primary form-control" value="ȸ������">
                </form>
            </div> 
        </div> 
        <div class="col-lg-4"></div>
    </div> 
   
</body>
</html>