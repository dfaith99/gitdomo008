package com.demo007.servlet;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;

public class AjaxServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("进入到AjaxServlet");
        //String str="liang";
        //String str="{\"s\":\"abcd\",\"g\":66}";
        String str="{\"s1\":{\"a1\":\"ads111\",\"b1\":222},\"s2\":{\"a2\":\"sdada222\",\"b2\":\"sadadasd22\"}}";
        PrintWriter out = resp.getWriter();
        out.print(str);
        System.out.println("str="+str);
        System.out.println("str="+str);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
