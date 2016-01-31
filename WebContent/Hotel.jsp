<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Attractions</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
<p style="color:white; margin-left:1250px"><a href='demoSession'>Logout</a></p>
<form method="post" action="choseAttraction">
<div class="container">

        <!-- Page Heading -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Book Hotel
                </h1>
            </div>
        </div>
        <!-- /.row -->

        <!-- Project One -->
        
        <%try{
			Class.forName("com.ibm.db2.jcc.DB2Driver");
		}catch(ClassNotFoundException e){
			e.printStackTrace();
		}
		try{
			Connection con = DriverManager.getConnection("jdbc:db2://localhost:50000/project","ADMIN","piyushgarg1594.");
			Statement stmt = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
			ResultSet rs=null;
			int pid=0;
		    
			Cookie cookie = null;
			   Cookie[] cookies = null;
			   // Get an array of Cookies associated with this domain
			   cookies = request.getCookies();
			
			   if( cookies != null ){
			      for (int i = 0; i < cookies.length; i++){
			         cookie = cookies[i];
			         if(cookie.getName( ).equals("placeId"))
			        		 {
			         			pid=Integer.parseInt(cookie.getValue( ));
			        		 }
			      }
			  }else{
				  System.out.println("<h2>No cookies founds</h2>");
			  }
				String sql = "select * from hotel where pid="+pid;
				rs=stmt.executeQuery(sql);
			while(rs.next())
			{ 
				%>
		
        <div class="row">
            <div class="col-md-4 col-md-offset-1">
                <a href="#">
                    <img class="img-responsive" src="<%=rs.getString("image") %>" alt="" width="250" height="250" />
                </a>
            </div>
            <div class="col-md-6 col-md-offset-1">
                <h3><%=rs.getString("name")%></h3>
                <p>Address:<%=rs.getString("area")+","%><%=rs.getString("street")%></p>
                <p>Rent:<%=rs.getInt("rent")%></p>
                <span style="font-size:16px">Select number of rooms: </span>
		<select>
		<option name="one" value="one"> 1 </option>
		<option name="two" value="two"> 2 </option>
		<option name="three" value="three"> 3 </option>
		<option name="four" value="four"> 4 </option>
		<option name="five" value="five"> 5 </option>
		</select></br>
                <a class="btn btn-primary" href="Vehicle.jsp?hotelId=<%=rs.getInt("hid")%>">Book Hotel </a>
            </div>
        </div>
        <br/><br/><br/>
       <% }
		}catch(SQLException r){
			r.printStackTrace();
		} %>
        </div>
        </form>
		</body>
	</html>