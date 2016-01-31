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
                <h1 class="page-header"><%=request.getParameter("placeName")%>
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
			int pid=Integer.parseInt(request.getParameter("placeId"));
			String sql = "select * from attraction where pid="+pid;
			rs=stmt.executeQuery(sql);    
			   Cookie placeId = new Cookie("placeId",request.getParameter("placeId"));
			   Cookie placeName = new Cookie("placeName",request.getParameter("placeName"));
			   // Set expiry date after 24 Hrs for both the cookies.
			   placeId.setMaxAge(60*60*24); 
			   placeName.setMaxAge(60*60*24);     
				
			   response.addCookie( placeId );
			   response.addCookie( placeName );
			while(rs.next())
			{ 
				%>
		
		<input type="checkbox" name="bookAttraction" value="<%=rs.getInt("id")%>">
        <div class="row">
            <div class="col-md-4 col-md-offset-1">
                <a href="#">
                    <img class="img-responsive" src="<%=rs.getString("image") %>" alt="" width="250" height="250" />
                </a>
            </div>
            <div class="col-md-6 col-md-offset-1">
                <h3><%=rs.getString("name")%></h3>
                <p><%=rs.getString("description")%></p>
                 
            </div>
        </div>
        <br/><br/><br/>
       <% }
		}catch(SQLException r){
			r.printStackTrace();
		} %>
        </div>
       <span style="margin-left:690px; font-size:20px;" ><input type="submit" value="Submit"></span> 
        </form>
		</body>
	</html>