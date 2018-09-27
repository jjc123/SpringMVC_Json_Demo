<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script type="text/javascript"
            src="http://ajax.googleapis.com/ajax/libs
/jquery/1.4.0/jquery.min.js"></script>
<script type="text/javascript">
 $(document).ready(function() {
     $("#mybutton").click(function(){
         var name=$("#name").val();
         var age=$("#age").val();
         var jsonData = {
             "name" : name,
             "age" : age
         };
         $.ajax({
             type:"post",
             url:"${pageContext.request.contextPath}/JsonTest.action",
             contentType:"application/json;charset=utf-8",
             data:JSON.stringify(jsonData),//数据格式要JSON串
             success:function(data){//返回JSON串
                 alert("username:"+data["name"]+",age:"+data["age"]);
             },
             error:function(xhr){
                 alert("错误提示："+xhr.status+xhr.statusText);
             }
         })
     })
 })
    </script>
</head>
<body>
姓名：
<input type="text" id="name" /><br />
年龄：
<input type="text" id="age" />
<br />
<input type="submit" id="mybutton" />
</body>
</html>
