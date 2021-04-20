<%--
  Created by IntelliJ IDEA.
  User: dfaith
  Date: 2021/4/18
  Time: 14:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
    <script src="js/jquery-2.2.4.min.js"></script>

      <script>

        $(function () {
         $("#bt").click(function () {
           //$("#div1").html("123");

           $.ajax({
             url : "AjaxServlet.do",
             dataType : "json",
             async : true,
             //data : {"id":"value"}, //参数值
             type : "GET",


             success : function (data) {
               $("#div").html(data);
               $("#div1").html(data.s1.a1);
               $("#div2").html(data.s2.b2);
             }

           })

         })
        })

      </script>
  </head>
  <body>
  <button id="bt">点击</button>
  <div id="div" style="background-color: pink">
    你好！
  </div>
  <br/>
  <br/>
  <div id="div1" style="background-color: pink">
    你好！
  </div>
  <br/>
  <br/>
  <div id="div2" style="background-color: pink">
    你好！
  </div>

  </body>
</html>
