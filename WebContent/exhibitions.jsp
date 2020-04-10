<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head lang=en>
        <title>Home</title>
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
        <script src="../static/script/topdeals.js"></script>
    </head>
    <body onload="createTopDeals()">
        <nav id = "nav12" class="navbar navbar-dark bg-dark navbar-expand-lg fixed-top">
            <strong><a class="navbar-brand" href="./../index.html" style="font-family: 'Rajdhani', sans-serif; font-size: 30px;">StunningDE@LS</a></strong>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <div class="container">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
                        </li>
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
<!-- card -->
        <div class = "container-fluid" >
            <div class="row"  id = "top-deals-cards">
                <div class = "col-lg-4 col-md-6 col-xs-12" id = "singleCard">
                    <div class = "row">
                        <div class = "col-1">
                        </div>
                        <div class = "col-10">
                            <div class="card promoting-card">
        <!-- Card content -->
                                <div class="card-body d-flex flex-row">
        <!-- Avatar -->
                                    <img src="https://mdbootstrap.com/img/Photos/Avatars/avatar-8.jpg" class="rounded-circle mr-3" height="50px" width="50px" alt="avatar">
        <!-- Content -->
                                    <div>
        <!-- Title -->
                                        <h4 class="card-title font-weight-bold mb-2">New spicy meals</h4>
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
                                    <p class="card-text collapse" id="collapseContent">Recently, we added several exotic new dishes to our restaurant menu. They come from countries such as Mexico, Argentina, and Spain. Come to us, have some delicious wine and enjoy our juicy meals from around the world.</p>
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
            </div>
        </div>
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
