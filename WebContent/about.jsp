<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head lang=en>
        <title>About us</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="/Stunning-Deals/style.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
        <!-- <link rel="stylesheet" href="/home/user/Desktop/web engineering/static/css/style.css"> -->
		<link href="https://fonts.googleapis.com/css?family=Rajdhani&display=swap" rel="stylesheet">
        <script src='https://kit.fontawesome.com/a076d05399.js'></script>
        <script src="../static/script/form.js"></script>
    </head>
    <body >
        <nav id = "nav12" class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
            <a class="navbar-brand" href="./../index.html" style="font-family: 'Rajdhani', sans-serif; font-size: 30px;">StunningDE@LS</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <div class="container">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
                        </li>
                    </ul>
                    <ul class="navbar-nav ml-auto">
                        <span>
                            <button type="button" class="btn btn-outline-light" data-toggle="modal" data-target="#loginModal" data-whatever="@mdo">Login</button>
                            <button type="button" class="btn btn-outline-light" data-toggle="modal" data-target="#registerModal" data-whatever="@mdo">Register</button>
                        </span>
                    </ul>
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
                    <form>
                        <div class="form-group">
                            <label for="recipient-name" class="col-form-label"><i class="fas fa-envelope"></i> Email id:</label>
                            <input type="email" class="form-control" id="email">
                        </div>
                        <div class="form-group">
                            <label for="message-text" class="col-form-label"><i class="fas fa-key"></i> Password:</label>
                            <input type="Password" class="form-control" id="loginPassword">
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Forgot Password?</button>
                    <button type="button" class="btn btn-primary">Submit</button>
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
                            <label for="message-text" class="col-form-label"><i class="fas fa-key"></i> Password:</label>
                            <input type="Password" onkeyup="validateForm()" onfocus="showMessage()" onblur="hideMessage()" class="form-control" id="regPassword">
                        </div>
                        <div class="form-group">
                            <label for="message-text" class="col-form-label"><i class="fas fa-key"></i> Confirm Password:</label>
                            <input type="Password" class="form-control" id="regPassword">
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
                    <input type="submit" name="" value="Register" class="btn btn-primary">
                </div>
            </div>
        </div>
    </div>
    <div class="w3-container" id="about">
        <strong><h1 class="w3-center">ABOUT THE COMPANY</h1></strong>
        <div class="w3-row-padding w3-center" style="margin-top:64px">
            <div class="m6 w3-padding-large">
    		    <h3 class="w3-center">Our Objective</h3>
    	        <p class="w3">
                <p style="text-align: center;margin: 0px;">Help shoppers make the most informed shopping decisions
    	With many shoppers from all over India discussing every deal</p>
                <p style="text-align: center;margin: 0px;">suggesting better bargains; and exchanging expert shopping advice, tips and tricks; the company aim to help every shopper find the right things,</p> <p style="text-align: center;margin: 0px;">at the right price and right time.Offer a one-stop shop for bargain hunting
    	Be it daily deals, special promotions, freebies, coupons, online and in-store deals across India</p>
                <p style="text-align: center;margin: 0px;">  the company strives to bring all kinds of shopping bargains under one roof.</p>
				<hr>
	        </div>

	        <h3 class="w3-center">Why We Are Different</h3>
    <p style="text-align: center;">
		The company consists of many users who are savvy and passionate about finding and sharing good deals.</p><p style="text-align: center;margin: 0px;"> Their engagement sets <strong>COMPANY</strong> apart. Every deal on the site is posted, and reviewed by the community. Our team of deal editors has deep</p><p style="text-align: center;margin: 0px;"> experience and category knowledge. They sift through these deals, researching the price and price history of products from a variety of merchants, selecting only the best</p><p style="text-align: center;margin: 0px;"> deals to post on the Frontpage. The collaboration of the community and deal editors guarantees the best prices</p> <p style="text-align: center;margin: 0px;">around and makes company the best deal site on the Web.
    </p>
	<hr>
  </div>
</div>

<div class = "container" id = "team">
    <strong><h3 class="w3-center">MEET THE TEAM</h3><strong>
        <br>
        <br>
    <div class = "row">
        <div class = "col-lg-3 col-md-6 col-sm-12 team-member">
<!-- Card content -->
<div class="card promoting-card">
                <div class="card-body d-flex flex-row">
                    <img class="card-img-top rounded-50" src="images/team-images/sj.jpeg">
                </div>
                <div class="card-body">
                    <div class="collapse-content">
                        <center>
                            <h3>Shruti Jain</h3>
                            <h3>Web Developer</h3>
                            <p><button><i class="fa fa-envelope"></i> sjain@gmail.com</button></p>
                        </center>
                    </div>
                 </div>
            </div>
        </div>
        <div class = "col-lg-3 col-md-6 col-sm-12 team-member">
            <div class="card promoting-card">
<!-- Card content -->
                <div class="card-body d-flex flex-row">
                    <img class="card-img-top rounded-0" src="images/team-images/shivamb.jpg">
                </div>
                <div class="card-body">
                    <div class="collapse-content">
                        <center>
                            <h3>Shivam Bansal</h3>
                            <h3>Web Developer</h3>
                            <p><button><i class="fa fa-envelope"></i> sbansal@gmail.com</button></p>
                        </center>
                    </div>
                 </div>
            </div>
        </div>
        <div class = "col-lg-3 col-md-6 col-sm-12">
            <div class="card promoting-card">
<!-- Card content -->
                <div class="card-body d-flex flex-row">
                    <img class="card-img-top rounded-0" src="images/team-images/shivam.jpg">
                </div>
                <div class="card-body">
                    <div class="collapse-content">
                        <center>
                            <h3>Shivam</h3>
                            <h3>Web Developer</h3>
                            <p><button><i class="fa fa-envelope"></i> shivam@gmail.com</button></p>
                        </center>
                    </div>
                 </div>
            </div>
        </div>
        <div class = "col-lg-3 col-md-6 col-sm-12">
            <div class="card promoting-card">
<!-- Card content -->
                <div class="card-body d-flex flex-row">
                    <img class="card-img-top rounded-0" src="images/team-images/shivansh.jpg">
                </div>
                <div class="card-body">
                    <div class="collapse-content">
                        <center>
                            <h3>Shivansh Gangrade</h3>
                            <h3>Web Developer</h3>
                            <p><button><i class="fa fa-envelope"></i> sgangrade@gmail.com</button></p>
                        </center>
                    </div>
                 </div>
            </div>
        </div>
    </div>
</div>







<div class="w3-container w3-row w3-center w3-dark-grey w3-padding-64">
  <div class="w3-quarter">
    <span class="w3-xxlarge">5+</span>
    <br>Partners
  </div>
  <div class="w3-quarter">
    <span class="w3-xxlarge">55+</span>
    <br> Advertisement Done
  </div>
  <div class="w3-quarter">
    <span class="w3-xxlarge">89+</span>
    <br>Happy Clients
  </div>
  <div class="w3-quarter">
    <span class="w3-xxlarge">150+</span>
    <br> Views
  </div>
</div>
</body>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</html>