<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head lang=en>
        <title>Dashboard</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="/Stunning-Deals/style.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
		<link href="https://fonts.googleapis.com/css?family=Rajdhani&display=swap" rel="stylesheet">
        <script src='https://kit.fontawesome.com/a076d05399.js'></script>
        <script src="static/script/form.js"></script>
    </head>
	<body>
		<nav id = "nav12" class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
            <strong><a class="navbar-brand" href="#" style="font-family: 'Rajdhani', sans-serif; font-size: 30px;"><%= (String)session.getAttribute("name") %></a></strong>
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
                        <li class="nav-item active">
                        	<a class="nav-link" href="LogoutServlet">Logout</a> 
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
                        <form action="AddOfferServlet" enctype="multipart/form-data" method = "POST">
                            <div class="form-group">
                                <label for="shop-name" class="col-form-label"><i class="fas fa-user-plus"></i> Offer name:</label>
                                <input type="text" class="form-control" name="offerName">
                            </div>
                            <div class="form-group">
                                <label for="recipient-name" class="col-form-label"><i class="fas fa-envelope"></i> Offer valid from:</label>
                                <input type="date" class="form-control" name="offerValidFrom">
                            </div>
                            <div class="form-group">
                                <label for="recipient-name" class="col-form-label"><i class="fas fa-envelope"></i>Offer valid to:</label>
                                <input type="date" class="form-control" name="offerValidTo">
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
                                <label for="message-text" class="col-form-label"><i class="fas fa-key"></i> Offer Banner:</label>
                                <input type="file" class="form-control" name="offerBanner">
                            </div>
                            <div class="modal-footer">
	                        	<input type="submit" value="Submit" class="btn btn-primary">
                    		</div>
                      </form>  
                    </div>
                </div>
            </div>
        </div>


	 
 
	</body>
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</html>