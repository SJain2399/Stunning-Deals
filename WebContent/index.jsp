<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head lang=en>
        <title>StunningDeals</title>
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
        <script src="script.js"></script>
    </head>
    <body>
        <nav id = "nav12" class="navbar navbar-transparent navbar-expand-lg navbar-dark fixed-top">
            <strong><a class="navbar-brand" href="#" style="font-family: 'Rajdhani', sans-serif; font-size: 30px;">StunningDE@LS</a></strong>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <div class="container">
                    <ul class="navbar-nav mr-auto">
                    	 <% if ((Boolean)session.getAttribute("loggedIn") == null) { %>
                        <li class="nav-item active">
                            <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
                        </li>
                        <% } else { %>
                        <li class="nav-item active">
                            <a class="nav-link" href="login-successful.jsp">Dashboard <span class="sr-only">(current)</span></a>
                        </li>
                        <% } %>
                        <li class="nav-item dropdown active">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Categories</a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="#">Electronics</a>
                                <a class="dropdown-item" href="#">Automobiles</a>
                                <a class="dropdown-item" href="#">Furniture</a>
                            </div>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="about.jsp">About Us <span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="#contact">Contact<span class="sr-only">(current)</span></a>
                        </li>
                    </ul>
                    <% if ((Boolean)session.getAttribute("loggedIn") == null) { %>
                    <ul class="navbar-nav ml-auto">
                        <span>
                            <button type="button" class="btn btn-outline-light" data-toggle="modal" data-target="#loginModal" data-whatever="@mdo">Login</button>
                            <button type="button" class="btn btn-outline-light" data-toggle="modal" data-target="#registerModal" data-whatever="@mdo">Register</button>
                        </span>
                    </ul>
                    <% } else { %>
                    <% if ((Boolean)session.getAttribute("loggedIn") == true) { %>
                    <ul class="navbar-nav ml-auto">
                    	<li class="nav-item active">
                        	<a class="nav-link" href="LogoutServlet">Logout</a> 
                        </li>
                    </ul>
                    <% } %>
                    <% } %>
                </div>
            </div>
        </nav>

<!--loginModal -->

        <div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Login</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form action="LoginServlet" method = "POST">
                            <div class="form-group">
                                <label for="recipient-name" class="col-form-label"><i class="fas fa-envelope"></i> Email id:</label>
                                <input type="email" class="form-control" name="email">
                            </div>
                            <div class="form-group">
                                <label for="message-text" class="col-form-label"><i class="fas fa-key"></i> Password:</label>
                                <input type="Password" class="form-control" name="password">
                            </div>
                            <div class="modal-footer">
	                        <input type="submit" value="Submit" class="btn btn-primary">
                    	</div>
                      </form>
                       <!--  <% if ((Boolean)session.getAttribute("loggedIn") != null){ %>
                        window.alert("incorrect credentials");
                       	<%}%> -->
                    </div>
                </div>
            </div>
        </div>

        <!-- registerModal -->

        <div class="modal fade" id="registerModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" style="border-left: 6px solid #586660;border-right: 6px solid #586660;">
            <div class="modal-dialog" role="document" >
                <div class="modal-content">
                    <div class="modal-header">
                        <div style="color: #0080ff" ><h5 class="modal-title" id="exampleModalLabel">Register</h5></div>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                    </div>
                    <form action="RegisterServlet" method = "POST">
                    	<div class="modal-body">
                            <div class="form-group">
                                <label for="recipient-name" class="col-form-label"> <i class="fas fa-user-plus"></i>  Your Name:</label>
                                <input type="text" class="form-control" name="name">
                            </div>
                            <div class="form-group">
                                <label for="message-text" class="col-form-label"><i class="fas fa-envelope"></i> Email:</label>
                                <input type="Email" class="form-control" name="email">
                            </div>
                            <div class="form-group">
                                <label for="message-text" class="col-form-label"><i class="fas fa-key"></i> Password:</label>
                                <input type="Password" onkeyup="validateForm()" onfocus="showMessage()" onblur="hideMessage()" class="form-control" name="password" id="password">
                            </div>
                            <div class="form-group">
                                <label for="message-text" class="col-form-label"><i class="fas fa-key"></i> Confirm Password:</label>
                                <input type="Password" class="form-control" name="confirm_password">
                            </div> 
                        </div>
	                    <div class="modal-footer">
	                        <input type="submit" name="" value="Register" class="btn btn-primary">
	                    </div>
                    </form>
                    <div id="message">
                        <h3>Password must contain the following:</h3>
                        <p id="letter" class="invalid">A <b>lowercase</b> letter</p>
                        <p id="capital" class="invalid">A <b>capital (uppercase)</b> letter</p>
                        <p id="number" class="invalid">A <b>number</b></p>
                        <p id="length" class="invalid">Minimum <b>8 characters</b></p>
                    </div>
                </div>
            </div>
        </div>

<!-- Carousel Code -->
        <div id="carouselExampleIndicators" class="carousel slide car" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="car" src="images/carousel-images/first-slide.jpg" alt="First slide" >
                </div>
                <div class="carousel-item">
                    <img class="car" src="images/carousel-images/second-slide.jpg" alt="Second slide">
                </div>
                <div class="carousel-item">
                    <img class="car" src="images/carousel-images/third-slide.jpg" alt="Third slide">
                </div>
                </div>
                    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
<!-- Carousel closed -->

<!-- Deals -->
        <div class = "container-fluid" id = "deals">
    <!-- Top Deal Section -->
            <section class = "top-deals" >
                <div class = "row  deal-header">
                    <div class="col-8 deal-name ">
                        <h2>Top Deals For You</h2>
                    </div>
                    <div class="col-4 deal-name">
                        <center>
                            <a class="explore-link" href="topdeals.jsp">
                                Explore More
                                <i class="fas fa-angle-right"></i>
                            </a>
                        </center>
                    </div>
                </div>

            <!-- Card -->
                <div class="row ">
                    <div class = "col-lg-4 col-md-6 col-xs-12">
                        <div class = "row">
                            <div class = "col-1">
                            </div>
                            <div class = "col-10">
                                <div class="card promoting-card">
            <!-- Card content -->
                                    <div class="card-body d-flex flex-row">
            <!-- Avatar -->
                                        <img src="images/logo-images/whirlpool-logo.png" class="logo" height="50px" width="50px" alt="avatar">
            <!-- Content -->
                                        <div>
            <!-- Title -->
                                            <h4 class="card-title font-weight-bold mb-2">Whirpool</h4>
            <!-- Subtitle -->
                                            <small><strong><p class="card-text"><i class="far fa-clock pr-2"></i>24/07/2019 - 28/07/2019</p></strong></small>
                                        </div>
                                  </div>
            <!-- Card image -->
                                  <div class="view overlay">
                                      <img class="card-img-top rounded-0" src="https://mdbootstrap.com/img/Photos/Horizontal/Food/full page/2.jpg" alt="Card image cap">
                                      <a href="#!">
                                          <div class="mask rgba-white-slight"></div>
                                      </a>
                                  </div>
            <!-- Card content -->
                                <div class="card-body">
                                    <div class="collapse-content">
            <!-- Text -->
                                      <p class="" id="collapseContent">Latest offers on Refrigerators.</p><hr>
            <!-- Button -->			  <i class="fa fa-tags"> Upto 15</i><i class="fa fa-percent" aria-hidden="true"> Off</i>
                                      <a class="btn btn-flat red-text p-1 my-1 mr-0 mml-1 collapsed" data-toggle="collapse" href="#collapseContent" aria-expanded="false" aria-controls="collapseContent"></a>
                                      <i class="fas fa-share-alt text-muted float-right p-1 my-1" data-toggle="tooltip" data-placement="top" title="Share this post"></i>
                                      <i class="fas fa-heart text-muted float-right p-1 my-1 mr-3" data-toggle="tooltip" data-placement="top" title="I like it"></i>

                                    </div>

                                  </div>

                                </div>
                            </div>
                            <div class="col-1">
                            </div>

                            <!-- <div class = "col-lg-1">
                            </div> -->
                        </div>
                    </div>
                    <div class = "col-lg-4 col-md-6 col-xs-12">
                        <div class = "row">
                            <div class = "col-1">
                            </div>
                            <div class = "col-10">



                        <div class="card promoting-card ">

                          <!-- Card content -->
                          <div class="card-body d-flex flex-row">

                            <!-- Avatar -->
                            <img src="images/logo-images/lg-logo.png"class="logo" height="50px" width="50px" alt="avatar">

                            <!-- Content -->
                            <div>

                              <!-- Title -->
                              <h4 class="card-title font-weight-bold mb-2">LG</h4>
                              <!-- Subtitle -->
                              <small><strong><p class="card-text"><i class="far fa-clock pr-2"></i>21/02/2018 - 28/02/2015</p></strong></small>

                            </div>

                          </div>

                          <!-- Card image -->
                          <div class="view overlay">
                            <img class="card-img-top rounded-0" src="https://mdbootstrap.com/img/Photos/Horizontal/Food/full page/2.jpg" alt="Card image cap">
                            <a href="#!"><script src="https://kit.fontawesome.com/a076d05399.js"></script>
                              <div class="mask rgba-white-slight"></div>
                            </a>
                          </div>

                          <!-- Card content -->
                          <div class="card-body">

                            <div class="collapse-content">

                              <!-- Text -->
                              <p class="" id="collapseContent">A huge dicount on TVs in <strong>LG</strong></p><hr>
            <!-- Button -->	  <i class="fa fa-tags"> Upto 80</i><i class="fa fa-percent" aria-hidden="true"> Off</i>
                              <a class="btn btn-flat red-text p-1 my-1 mr-0 mml-1 collapsed" data-toggle="collapse" href="#collapseContent" aria-expanded="false" aria-controls="collapseContent"></a>
                              <i class="fas fa-share-alt text-muted float-right p-1 my-1" data-toggle="tooltip" data-placement="top" title="Share this post"></i>
                              <i class="fas fa-heart text-muted float-right p-1 my-1 mr-3" data-toggle="tooltip" data-placement="top" title="I like it"></i>

                            </div>

                          </div>

                        </div>
                    </div>
                    <div class="col-1">
                    </div>

                    <!-- <div class = "col-lg-1">
                    </div> -->
                </div>
            </div>
            <div class = "col-lg-4 col-md-6 col-xs-12">
                <div class = "row">
                    <div class = "col-1">
                    </div>
                    <div class = "col-10">



                <div class="card promoting-card">

                  <!-- Card content -->
                  <div class="card-body d-flex flex-row">

                    <!-- Avatar -->
                    <img src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwgHBgkIBwgKCgkLDRYPDQwMDRsUFRAWIB0iIiAdHx8kKDQsJCYxJx8fLT0tMTU3Ojo6Iys/RD84QzQ5OjcBCgoKDQwNGg8PGjclHyU3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3N//AABEIAHcA0wMBIgACEQEDEQH/xAAbAAEBAQADAQEAAAAAAAAAAAAABAUBAgMGB//EADIQAQACAQEDCQcEAwAAAAAAAAABAgMEBREVEjEyQVJTcpGSExQhIjRjoUNRYXFCorH/xAAVAQEBAAAAAAAAAAAAAAAAAAAAAv/EABQRAQAAAAAAAAAAAAAAAAAAAAD/2gAMAwEAAhEDEQA/AP2EBSQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAdcmSuKk3yWitY55lFO1tLE/qekF4g4tpfuek4tpfuekF4g4tpfuek4tpfuekF4g4tpfuek4tpfuekF4g4tpfuel7afXYNRfkY7TFuqLRu3gpAAAAAAAAAAAAAAAAABm7bmfZ4q9U2nfDjR7P02XS48l6zNrV3z80m3Ohh8UvbDlnDsqmSOeuPfAOLbO0delG7+7ueF6XsW9csK97ZLTa8za09cy0tjZ7+1thtaZrNZmu/qBXwvS9i3qk4ZpOxb1StARcM0vYt6pOF6XsW9UqcmbHjvWt7xE3ndX+XoCLhel7FvVLN1uGml1ta4eVWPhaPjzN9h7X+ur4YBuBPPIAAAAAAAAAAAAAAAADM250MPilRpKRl2djx237rY90p9udDD4pV7P+jw+CAZGbZuppbdSnLr1TVfszQ2082yZd3LmN0V/aF82isTNpiIjnmUeDaOLLnnHzRv+W0/5AtTa3V002LfbdN56NXOs1ddJTfb5rz0axL5/NlvmyTkyTvtIGbLkzZLXyW32s1Nm6/lbsOefjzVtPX/EsgB9Ww9r/XV8MKdl622SYwZN82iPlt+8Jtr/AF1fDANyeeQnnkAAAAAAAAAAAAAAAABmbc6GHxSq0MxXQ4rWmIiKRvmUu3Ohh/uXeY37FiI+M+zgEW0NdOomcePfGKP9kLtyL9i3kci/Yt5AZMl8luVktNrc2+ZdXbkX7FvI5F+xbyB1HbkX7FvI9nfsW8gV7I+ur4Z/47bX+ur4YcbJpaNbWZraI5M/GYc7X+vr4YBuTzyHXIAAAAAAAAAAAAAAAADN23SZw47xzVt8f4eWm2pjw4KY7Y7zNY3fDc1piLRumN8T1SnnQaSf0K/kE3GcXdZPwcZxd1k/Cn3DS9zHnJw/SdxXzkE3GcXdZPwcZxd1k/Cn3DS9zHnJ7hpe5jzkE3GcXdZPwcZxd1k84U+4aXuY85PcNL3Mecgm4xi7rJ+EOoy+/a2k4qTG/dERPO1/cNL3NfOXph02HDMzix1rM9YPUAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAH/2Q==" class="rounded-circle mr-3" height="50px" width="50px" alt="avatar">

                    <!-- Content -->
                    <div>

                      <!-- Title -->
                      <h4 class="card-title font-weight-bold mb-2">Mega Sale</h4>
                      <!-- Subtitle -->
                      <p class="card-text"><i class="far fa-clock pr-2"></i>07/24/2018</p>

                    </div>

                  </div>

                  <!-- Card image -->
                  <div class="view overlay">
                    <img class="card-img-top rounded-0" src="https://mdbootstrap.com/img/Photos/Horizontal/Food/full page/2.jpg" alt="Card image cap">
                    <a href="#!">
                      <div class="mask rgba-white-slight"></div>
                    </a>
                  </div>

                  <!-- Card content -->
                  <div class="card-body">

                    <div class="collapse-content">

                      <!-- Text -->
                      <p class="" id="collapseContent">Enjoy the Mega Sale.<strong></strong></p><hr>
     <!-- Button -->  <i class="fa fa-tags"> Upto 60</i><i class="fa fa-percent" aria-hidden="true"> Off</i>
                      <!-- Button -->
                      <a class="btn btn-flat red-text p-1 my-1 mr-0 mml-1 collapsed" data-toggle="collapse" href="#collapseContent" aria-expanded="false" aria-controls="collapseContent"></a>
                      <i class="fas fa-share-alt text-muted float-right p-1 my-1" data-toggle="tooltip" data-placement="top" title="Share this post"></i>
                      <i class="fas fa-heart text-muted float-right p-1 my-1 mr-3" data-toggle="tooltip" data-placement="top" title="I like it"></i>

                    </div>

                  </div>

                </div>
            </div>
            <div class="col-1">
            </div>

            <!-- <div class = "col-lg-1">
            </div> -->
            </div>
            </div>
            <!-- Card -->
            </div>
            </section>

            <section class = "top-deals" >
                <div class = "row  deal-header">
                    <div class="col-8 deal-name ">
                        <h2>Explore Exhibitions</h2>
                    </div>
                    <div class="col-4 deal-name">
                        <center>
                            <a class="explore-link" href="exhibitions.jsp">
                                Explore More
                                <i class="fas fa-angle-right"></i>
                            </a>
                        </center>
                    </div>
                </div>

            <!-- Card -->
                <div class="row ">
                    <div class = "col-lg-4 col-md-6 col-xs-12">
                        <div class = "row">
                            <div class = "col-1">
                            </div>
                            <div class = "col-10">
                                <div class="card promoting-card">
            <!-- Card content -->
                                    <div class="card-body d-flex flex-row">
            <!-- Avatar -->
                                        <img src="images/logo-images/whirlpool-logo.png" class="logo" height="50px" width="50px" alt="avatar">
            <!-- Content -->
                                        <div>
            <!-- Title -->
                                            <h4 class="card-title font-weight-bold mb-2">Whirpool</h4>
            <!-- Subtitle -->
                                            <small><strong><p class="card-text"><i class="far fa-clock pr-2"></i>24/07/2019 - 28/07/2019</p></strong></small>
                                        </div>
                                  </div>
            <!-- Card image -->
                                  <div class="view overlay">
                                      <img class="card-img-top rounded-0" src="https://mdbootstrap.com/img/Photos/Horizontal/Food/full page/2.jpg" alt="Card image cap">
                                      <a href="#!">
                                          <div class="mask rgba-white-slight"></div>
                                      </a>
                                  </div>
            <!-- Card content -->
                                <div class="card-body">
                                    <div class="collapse-content">
            <!-- Text -->
                                      <p class="" id="collapseContent">Latest offers on Refrigerators.</p><hr>
            <!-- Button -->			  <i class="fa fa-tags"> Upto 15</i><i class="fa fa-percent" aria-hidden="true"> Off</i>
                                      <a class="btn btn-flat red-text p-1 my-1 mr-0 mml-1 collapsed" data-toggle="collapse" href="#collapseContent" aria-expanded="false" aria-controls="collapseContent"></a>
                                      <i class="fas fa-share-alt text-muted float-right p-1 my-1" data-toggle="tooltip" data-placement="top" title="Share this post"></i>
                                      <i class="fas fa-heart text-muted float-right p-1 my-1 mr-3" data-toggle="tooltip" data-placement="top" title="I like it"></i>

                                    </div>

                                  </div>

                                </div>
                            </div>
                            <div class="col-1">
                            </div>

                            <!-- <div class = "col-lg-1">
                            </div> -->
                        </div>
                    </div>
                    <div class = "col-lg-4 col-md-6 col-xs-12">
                        <div class = "row">
                            <div class = "col-1">
                            </div>
                            <div class = "col-10">



                        <div class="card promoting-card ">

                          <!-- Card content -->
                          <div class="card-body d-flex flex-row">

                            <!-- Avatar -->
                            <img src="images/logo-images/lg-logo.png"class="logo" height="50px" width="50px" alt="avatar">

                            <!-- Content -->
                            <div>

                              <!-- Title -->
                              <h4 class="card-title font-weight-bold mb-2">LG</h4>
                              <!-- Subtitle -->
                              <small><strong><p class="card-text"><i class="far fa-clock pr-2"></i>21/02/2018 - 28/02/2015</p></strong></small>

                            </div>

                          </div>

                          <!-- Card image -->
                          <div class="view overlay">
                            <img class="card-img-top rounded-0" src="https://mdbootstrap.com/img/Photos/Horizontal/Food/full page/2.jpg" alt="Card image cap">
                            <a href="#!"><script src="https://kit.fontawesome.com/a076d05399.js"></script>
                              <div class="mask rgba-white-slight"></div>
                            </a>
                          </div>

                          <!-- Card content -->
                          <div class="card-body">

                            <div class="collapse-content">

                              <!-- Text -->
                              <p class="" id="collapseContent">A huge dicount on TVs in <strong>LG</strong></p><hr>
            <!-- Button -->	  <i class="fa fa-tags"> Upto 80</i><i class="fa fa-percent" aria-hidden="true"> Off</i>
                              <a class="btn btn-flat red-text p-1 my-1 mr-0 mml-1 collapsed" data-toggle="collapse" href="#collapseContent" aria-expanded="false" aria-controls="collapseContent"></a>
                              <i class="fas fa-share-alt text-muted float-right p-1 my-1" data-toggle="tooltip" data-placement="top" title="Share this post"></i>
                              <i class="fas fa-heart text-muted float-right p-1 my-1 mr-3" data-toggle="tooltip" data-placement="top" title="I like it"></i>

                            </div>

                          </div>

                        </div>
                    </div>
                    <div class="col-1">
                    </div>

                    <!-- <div class = "col-lg-1">
                    </div> -->
                </div>
            </div>
            <div class = "col-lg-4 col-md-6 col-xs-12">
                <div class = "row">
                    <div class = "col-1">
                    </div>
                    <div class = "col-10">



                <div class="card promoting-card">

                  <!-- Card content -->
                  <div class="card-body d-flex flex-row">

                    <!-- Avatar -->
                    <img src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwgHBgkIBwgKCgkLDRYPDQwMDRsUFRAWIB0iIiAdHx8kKDQsJCYxJx8fLT0tMTU3Ojo6Iys/RD84QzQ5OjcBCgoKDQwNGg8PGjclHyU3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3N//AABEIAHcA0wMBIgACEQEDEQH/xAAbAAEBAQADAQEAAAAAAAAAAAAABAUBAgMGB//EADIQAQACAQEDCQcEAwAAAAAAAAABAgMEBREVEjEyQVJTcpGSExQhIjRjoUNRYXFCorH/xAAVAQEBAAAAAAAAAAAAAAAAAAAAAv/EABQRAQAAAAAAAAAAAAAAAAAAAAD/2gAMAwEAAhEDEQA/AP2EBSQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAdcmSuKk3yWitY55lFO1tLE/qekF4g4tpfuek4tpfuekF4g4tpfuek4tpfuekF4g4tpfuek4tpfuekF4g4tpfuel7afXYNRfkY7TFuqLRu3gpAAAAAAAAAAAAAAAAABm7bmfZ4q9U2nfDjR7P02XS48l6zNrV3z80m3Ohh8UvbDlnDsqmSOeuPfAOLbO0delG7+7ueF6XsW9csK97ZLTa8za09cy0tjZ7+1thtaZrNZmu/qBXwvS9i3qk4ZpOxb1StARcM0vYt6pOF6XsW9UqcmbHjvWt7xE3ndX+XoCLhel7FvVLN1uGml1ta4eVWPhaPjzN9h7X+ur4YBuBPPIAAAAAAAAAAAAAAAADM250MPilRpKRl2djx237rY90p9udDD4pV7P+jw+CAZGbZuppbdSnLr1TVfszQ2082yZd3LmN0V/aF82isTNpiIjnmUeDaOLLnnHzRv+W0/5AtTa3V002LfbdN56NXOs1ddJTfb5rz0axL5/NlvmyTkyTvtIGbLkzZLXyW32s1Nm6/lbsOefjzVtPX/EsgB9Ww9r/XV8MKdl622SYwZN82iPlt+8Jtr/AF1fDANyeeQnnkAAAAAAAAAAAAAAAABmbc6GHxSq0MxXQ4rWmIiKRvmUu3Ohh/uXeY37FiI+M+zgEW0NdOomcePfGKP9kLtyL9i3kci/Yt5AZMl8luVktNrc2+ZdXbkX7FvI5F+xbyB1HbkX7FvI9nfsW8gV7I+ur4Z/47bX+ur4YcbJpaNbWZraI5M/GYc7X+vr4YBuTzyHXIAAAAAAAAAAAAAAAADN23SZw47xzVt8f4eWm2pjw4KY7Y7zNY3fDc1piLRumN8T1SnnQaSf0K/kE3GcXdZPwcZxd1k/Cn3DS9zHnJw/SdxXzkE3GcXdZPwcZxd1k/Cn3DS9zHnJ7hpe5jzkE3GcXdZPwcZxd1k84U+4aXuY85PcNL3Mecgm4xi7rJ+EOoy+/a2k4qTG/dERPO1/cNL3NfOXph02HDMzix1rM9YPUAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAH/2Q==" class="rounded-circle mr-3" height="50px" width="50px" alt="avatar">

                    <!-- Content -->
                    <div>

                      <!-- Title -->
                      <h4 class="card-title font-weight-bold mb-2">Mega Sale</h4>
                      <!-- Subtitle -->
                      <p class="card-text"><i class="far fa-clock pr-2"></i>07/24/2018</p>

                    </div>

                  </div>

                  <!-- Card image -->
                  <div class="view overlay">
                    <img class="card-img-top rounded-0" src="https://mdbootstrap.com/img/Photos/Horizontal/Food/full page/2.jpg" alt="Card image cap">
                    <a href="#!">
                      <div class="mask rgba-white-slight"></div>
                    </a>
                  </div>

                  <!-- Card content -->
                  <div class="card-body">

                    <div class="collapse-content">

                      <!-- Text -->
                      <p class="" id="collapseContent">Enjoy the Mega Sale.<strong></strong></p><hr>
     <!-- Button -->  <i class="fa fa-tags"> Upto 60</i><i class="fa fa-percent" aria-hidden="true"> Off</i>
                      <!-- Button -->
                      <a class="btn btn-flat red-text p-1 my-1 mr-0 mml-1 collapsed" data-toggle="collapse" href="#collapseContent" aria-expanded="false" aria-controls="collapseContent"></a>
                      <i class="fas fa-share-alt text-muted float-right p-1 my-1" data-toggle="tooltip" data-placement="top" title="Share this post"></i>
                      <i class="fas fa-heart text-muted float-right p-1 my-1 mr-3" data-toggle="tooltip" data-placement="top" title="I like it"></i>

                    </div>

                  </div>

                </div>
            </div>
            <div class="col-1">
            </div>

            <!-- <div class = "col-lg-1">
            </div> -->
            </div>
            </div>
            <!-- Card -->
        </section>
            </div>



                <!-- <span>
                   <form class="form-inline my-2 my-lg-0">
                       <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                       <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                   </form>
               </span>  -->
                 <div id="contact" class="container-fluid contact-section">
                   <div class="row">
                     <div class="col-md-4">
                       <div class="card py-4 h-100">
                         <div class="card-body text-center">
                           <i class="fas fa-map-marked-alt text-primary mb-2"></i>
                           <h4 class="text-uppercase m-0">Feedback</h4>
                           <hr class="my-4">
                           <div class="small text-black-50"><strong><a href="" class="btn btn-default btn-rounded mb-4" data-toggle="modal" data-target="#feedbackform">We would like to hear what you feel.</a></strong></div>
                         </div>
                       </div>

                     </div>

                     <div class="col-md-4">
                       <div class="card py-4 h-100">
                         <div class="card-body text-center">
                           <i class="fas fa-envelope text-primary mb-2"></i>
                           <h4 class="text-uppercase m-0">Email</h4>
                           <hr class="my-4">
                           <div class="small text-black-50">
                             <a href="#"><strong>stunningdeals@gmail.com</strong></a>
                           </div>
                         </div>
                       </div>
                     </div>

                     <div class="col-md-4">
                       <div class="card py-4 h-100">
                         <div class="card-body text-center">
                           <i class="fas fa-mobile-alt text-primary mb-2"></i>
                           <h4 class="text-uppercase m-0">Phone</h4>
                           <hr class="my-4">
                           <div class="small text-black-50"><i class="fa fa-phone"></i>  <strong>+919303228584</strong>
                           <div class="small text-black-50"><strong>(0731) 4045809</strong></div>
                       </div>
                         </div>
                     </div>
                 </div>

<div class="modal fade" id="feedbackform" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" style="border-left: 6px solid #586660;border-right: 6px solid #586660;">
            <div class="modal-dialog" role="document" >
                <div class="modal-content">
                    <div class="modal-header">
                        <div style="color: black" ><strong><h4 class="modal-title" id="exampleModalLabel">Write to Us</h4></strong></div>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                    </div>
                    <div class="modal-body">
                        <form>
                            <div class="form-group">
                                <label for="recipient-name" class="col-form-label"> <i class="fas fa-user-plus"></i>  Your Name:</label>
                                <input type="text" class="form-control" id="name">
                            </div>
                            <div class="form-group">
                                <label for="message-text" class="col-form-label"><i class="fas fa-envelope"></i> Email:</label>
                                <input type="Email" class="form-control" id="emailRegister">
                            </div>
                            <div class="form-group">
                                <label for="message-text" class="col-form-label"><i class="fa fa-file" aria-hidden="true"></i> Subject:</label>
                                <input type="Password" onkeyup="validateForm()" onfocus="showMessage()" onblur="hideMessage()" class="form-control" id="regPassword">
                            </div>
                            <div class="form-group">
                                <label for="message-text" class="col-form-label"><i class="fa fa-envelope" aria-hidden="true"></i></i> Message:</label>
								<textarea placeholder="Write your feeback to Us..." class="form-control" rows="8" cols="80"></textarea>
                            </div>
                        </form>
                        <div id="message">
                            <h3>Password must contain the following:</h3>
                            <p id="letter" class="invalid">A <b>lowercase</b> letter</p>
                            <p id="capital" class="invalid">A <b>capital (uppercase)</b> letter</p>
                            <p id="number" class="invalid">A <b>number</b></p>
                            <p id="length" class="invalid">Minimum <b>8 characters</b></p>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <input type="submit" name="" value="Send Message" class="btn btn-lg btn-success">
                    </div>
                </div>
            </div>
        </div>
 <!--Social link-->

                   <div class="container" style="margin-top: 2%;">
                     <div class="d-flex justify-content-center">
                         <a href="#" class="mx-4">
                             <i class="fab fa-twitter"></i>
                       </a>
                       <a href="#" class="mx-4">
                         <i class="fab fa-facebook-f"></i>
                       </a>
                       <a href="#" class="mx-4">
                         <i class="fab fa-instagram"></i>
                       </a>
                     </div>
                   </div>
                 </div>
             </div>
    </body>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</html>
