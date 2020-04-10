<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Logged In</title>
		<link rel="stylesheet" href="/Stunning-Deals/style.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
		<link href="https://fonts.googleapis.com/css?family=Rajdhani&display=swap" rel="stylesheet">
        <script src='https://kit.fontawesome.com/a076d05399.js'></script>
	</head>
	<body>
		<nav id = "nav12" class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
            <strong><a class="navbar-brand" href="#" style="font-family: 'Rajdhani', sans-serif; font-size: 30px;"><%= request.getParameter("name") %></a></strong>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <div class="container">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="index.jsp">Explore deals<span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="index.jsp">Home<span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="index.jsp">My Deals<span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item active">
                        	<a class="nav-link" href="#addOfferModal" data-toggle="modal" data-target="#addOfferModal">New Deal</a>
                        </li>
                    </ul>
                    <div class="search-container">
    					<form action="/action_page.php">
      						<input type="text" placeholder="Search.." name="search">
      						<button type="submit"><i class="fa fa-search"></i></button>
    					</form>
  					</div>
                </div>
            </div>
        </nav>
        
<!--addOfferModal -->
Hello
        <div class="modal fade" id="addOfferModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">New Offer</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form action="AddOfferServlet" method = "POST">
                            <div class="form-group">
                                <label for="shop-name" class="col-form-label"><i class="fas fa-user-plus"></i> Offer name:</label>
                                <input type="text" class="form-control" name="offerName">
                            </div>
                            <div class="form-group">
                                <label for="recipient-name" class="col-form-label"><i class="fas fa-envelope"></i> Offer valid from:</label>
                                <input type="email" class="form-control" name="offerValidFrom">
                            </div>
                            <div class="form-group">
                                <label for="recipient-name" class="col-form-label"><i class="fas fa-envelope"></i>Offer valid to:</label>
                                <input type="email" class="form-control" name="offerValidTo">
                            </div>
                            <div class="form-group">
                                <label for="recipient-name" class="col-form-label"><i class="fas fa-envelope"></i> Offer</label>
                                <input type="text" class="form-control" name="offer">
                            </div>
                            <div class="form-group">
                                <label for="message-text" class="col-form-label"><i class="fas fa-key"></i> Offer summary:</label>
                                <input type="text" class="form-control" name="offerSummary">
                            </div>
                            <div class="form-group">
                                <label for="message-text" class="col-form-label"><i class="fas fa-key"></i> Offer summary:</label>
                                <input type="file" class="form-control" name="offerSummary">
                            </div>
                            <div class="modal-footer">
	                        	<input type="submit" value="Submit" class="btn btn-primary">
                    		</div>
                      </form>  
                    </div>
                </div>
            </div>
        </div>


	<a href="LogoutServlet">Logout</a> |  
 
	</body>
</html>