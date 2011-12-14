<%-- 
    Document   : index
    Created on : Dec 10, 2011, 12:52:05 AM
    Author     : burn6
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import= "java.lang.*,java.util.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Market Basket</title>
        <style type="text/css">
        body
        {
        
        
        background-image:url('basket.jpg');
      
        background-repeat:no-repeat;
        background-position:center;
        background-attachment:fixed;       
        text-align:center;
        }
        
        </style>
    </head>
    <body>
        <h1 font-size ="30px">My basket</h1>

        <br/>
        <br/>
        <!get parameters and sessions body>
        
        <% 
        float sum = 0;
        String x = request.getParameter("quancafe"); 
                               if(x!=null){ 
                                   float res= new Float(x);
                                   double total1 = res*18.5;
                                   float sum1= (float)total1;
                                   session.setAttribute("sessquancafe", res);
                                   session.setAttribute("cafe", sum1);
                                   sum = sum + sum1;
                                        }
        
         String y = request.getParameter("quansugar"); 
                               if(y!=null){ 
                                   float res1= new Float(y);
                                   double total2 = res1*18.5;
                                   float sum2 =(float)total2;
                                   session.setAttribute("sessquansugar", res1);
                                   session.setAttribute("sugar", sum2);
                                   sum = sum + sum2;
                                        }
        
        String z = request.getParameter("quanwater"); 
                               if(z!=null){ 
                                   float res2= new Float(z);
                                   double total3 = res2*18.5;
                                   float sum3 = (float)total3;
                                   session.setAttribute("sessquanwater", res2);
                                   session.setAttribute("water", sum3);
                                   sum = sum + sum3;
                                        }
       session.setAttribute("summary", sum); 
                            %>
                 
                          
         <form action="index.jsp">
          
            <table border="1" align ="center"> 
                <thead>
                    <tr>
                        <th>Item</th>
                        <th>Price</th>
                        <th>Quantity</th>
                        <th>Total</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Cafe</td>
                        <td>18.5</td>
                        <td><input type="text" name="quancafe" value=
                                   <% 
                                   
                                   if(session.getAttribute("sessquancafe") == null){out.print(0);}
                                   else{ out.print(session.getAttribute("sessquancafe"));}
                                                                       
                                    %> />
                        </td>
                        <td>
                           <%
                                                           
                             if(session.getAttribute("cafe") == null){out.print(0);}
                             else{out.print(session.getAttribute("cafe"));}
                                                                       
                            %>
 
                           
                        </td>
                    </tr>
                    <tr>
                        <td>Sugar</td>
                        <td>6.95</td>
                        <td><input type="text" name="quansugar" value=                                   
                                   <% 
                                  
                                   if(session.getAttribute("sessquansugar")== null){out.print(0);}
                                   else{out.print(session.getAttribute("sessquansugar"));}
                                                                       
                                    %> />
                        </td>
                        <td>
                           <%
                                                           
                             if(session.getAttribute("sugar") == null){out.print(0);}
                             else{out.print(session.getAttribute("sugar"));}
                                                                       
                            %>

                        </td>
                    </tr>
                    <tr>
                        <td>Water</td>
                        <td>1.29</td>
                        <td><input type="text" name="quanwater" value=
                                   <%
                                                           
                                   if(session.getAttribute("sessquanwater") == null){out.print(0);}
                                   else{out.print(session.getAttribute("sessquanwater"));}
                                                                       
                                    %> />
                        </td>
                        <td>
                            <%
                                                           
                             if(session.getAttribute("water") == null){out.print(0);}
                             else{out.print(session.getAttribute("water"));}
                                                                       
                            %>
                        </td>
                    </tr>
                    <tr>
                        <td>Total</td>
                        <td></td>
                        <td></td>
                        <td><%=session.getAttribute("summary")%></td>
                    </tr>
                </tbody>
            </table>
        
        <br/>
         
        <input type="submit" value="Checkout" />
        <br/>
        <INPUT TYPE="BUTTON" VALUE="Report" ONCLICK="window.location='http://burn6.wordpress.com/ '"/>
    </form>
        
       
    </body>
</html>
