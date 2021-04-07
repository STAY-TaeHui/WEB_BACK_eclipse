<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
        String select_item= request.getParameter("code");
        String pageURL=null;
        
        if(select_item.equals("A"))
        {
            pageURL = "/A.jsp";
        }
        else if(select_item.equals("B"))
        {
            pageURL = "/B.jsp";
        }
        else if(select_item.equals("C"))
        {
            pageURL = "/C.jsp";
        }
    %>
    <jsp:forward page="<%=pageURL %>" />