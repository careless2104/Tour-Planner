
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*"%>
    <%@page import="tour.Combo" %>
    <%@page import="tour.Attraction" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Itenary</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
	<style type="text/css">
	label { display: block; width: 225px; }
	input[type='radio'] { float: right; }
	select
	{margin-left:50px;}
		input[type='date'] { margin-left:50px; }
		input{font-size:18px}
	
	</style>
</head>

<body>
<p style="color:white; margin-left:1250px"><a href='demoSession'>Logout</a></p>
<div class="container">

        <!-- Page Heading -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Itenary
                </h1>
            </div>
        </div>
        <!-- /.row -->
        <!-- Project One -->
		<span style="font-size:17px">Place:Jaipur
		</span><br/><br/><br/>
		<span style="font-size:17px">Attractions: </span><br/> <br/>
		<p> Hawa Mahal</p>
		<p>Jantar Mantar</p>
		<br/></br>
		<%	String type=null,from=null,to=null,seats=null; %>
		<span style="font-size:17px">Hotel: <%=Combo.pl.getH().getName()%></span>
		<br/><br/><br/>
		<% Cookie cookie = null;
	
		Cookie[] cookies = null;
		// Get an array of Cookies associated with this domain
		cookies = request.getCookies();

		if( cookies != null ){
			for (int i = 0; i < cookies.length; i++){
				cookie = cookies[i];
				if(cookie.getName( ).equals("vtype"))
				{
					type=cookie.getValue( );
				}
				if(cookie.getName( ).equals("from"))
				{
				
					from=cookie.getValue( );
				}
				if(cookie.getName( ).equals("to"))
				{
					
					to=cookie.getValue( );
				}
				if(cookie.getName( ).equals("seats"))
				{
					
					seats=cookie.getValue( );
				}
			}
			}%>
		<span style="font-size:17px">Vehicle: </span>
		<p>Type:<%=type%></p>
			<p>From:<%=from%></p>
				<p>To:<%=to%></p>
					<p>Seats:<%=seats%></p>
		<br/><br/><br/><hr>
		<a class="btn btn-primary" href="Home.jsp">Done</a>
			<a class="btn btn-primary" href="Home.jsp">Continue</a>
        
</body>
</html>