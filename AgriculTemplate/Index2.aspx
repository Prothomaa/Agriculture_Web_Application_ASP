﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index2.aspx.cs" Inherits="AgriculTemplate.Index2" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Agriculture</title>
    <!-- web fonts -->
   <!-- web fonts -->
     <link href="//fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900&display=swap" rel="stylesheet">
   <link href="//fonts.googleapis.com/css?family=Hind&display=swap" rel="stylesheet">
   <!-- //web fonts -->
    <!-- //web fonts -->
     <!-- Template CSS -->
      <link href="css/style-starter.css" rel="stylesheet" />


  </head>
  <body>


<!-- Top Menu 1 -->

<section class="w3l-top-menu-1">
	<div class="top-hd">
		<div class="container">
	<header class="row top-menu-top">
		<div class="accounts col-md-9 col-6">
				<li class="top_li"><span class="fa fa-phone"></span><a href="tel:+142 5897555">+142 5897555</a> </li>
				<li class="top_li1"><span class="fa fa-envelope-o"></span> <a href="mailto:education-mail@support.com" class="mail"> info@example.com</a>	</li>
		</div>
		<!--<div class="social-top col-md-3 col-6">
			<div class="main-social-head">
				<a href="#facebook" class="facebook"><span class="fa fa-facebook"></span></a>
				<a href="#twitter" class="twitter"><span class="fa fa-twitter"></span></a>
				<a href="#instagram" class="instagram"><span class="fa fa-instagram"></span></a>
			</div>
		</div>-->
	</header>
</div>
</div>
</section>
<!-- //Top Menu 1 -->
<section class="w3l-bootstrap-header">
  <nav class="navbar navbar-expand-lg navbar-light py-lg-2 py-2">
    <div class="container">
      <a class="navbar-brand" href="Index2.aspx"><span class="">Farm</span>  Planning</a>
      <!-- if logo is image enable this   
    <a class="navbar-brand" href="#Index2.aspx">
        <img src="image-path" alt="Your logo" title="Your logo" style="height:35px;" />
    </a> -->
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon fa fa-bars"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mx-auto mt-2">
          <li class="nav-item">
            <a class="nav-link" href="Index2.aspx">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="About2.aspx">About</a>
          </li>
           <li class="nav-item">
            <a class="nav-link" href="Services2.aspx">Products</a>
          </li>
         
        
          <li class="nav-item">
            <a class="nav-link" href="Contact2.aspx">Order</a>
          </li>
        </ul>
        <!--<form action="#" class="form-inline position-relative my-2 my-lg-0">
          <input class="form-control search" type="search" placeholder="Search here..." aria-label="Search" required="">
          <button class="btn btn-search position-absolute" type="submit"><span class="fa fa-search" aria-hidden="true"></span></button>
        </form>-->
           <ul class="navbar-nav mx-auto mt-2">
           <li class="nav-item">
            <a class="nav-link" href="Index2.aspx">Welcome <% Response.Write(Session["user"]); %></a>
          </li>

           <li class="nav-item">
            <a class="nav-link" href="Login2.aspx">Admin Login</a>
          </li>
        
           <li class="nav-item">
            <a class="nav-link" href="Login2.aspx">Logout</a>
          </li>
         </ul>
      </div>

    </div>
  </nav>
</section>

<section class="w3l-main-slider" id="home">
  <!-- main-slider -->
  <div class="companies20-content">
   
    <div class="owl-one owl-carousel owl-theme">
      <div class="item">
        <li>
          <div class="slider-info banner-view bg bg2" data-selector=".bg.bg2">
            <div class="banner-info">
              <div class="container">
                <div class="banner-info-bg mx-auto text-center">
                  <h5>Garden fresh organic vegetables </h5>
                 <a class="btn btn-secondary btn-theme2 mt-md-5 mt-4" href="Services2.aspx">Read More</a>
                </div>
                
              </div>
            </div>
          </div>
        </li>
      </div>
      <div class="item">
        <li>
          <div class="slider-info  banner-view banner-top1 bg bg2" data-selector=".bg.bg2">
            <div class="banner-info">
              <div class="container">
                <div class="banner-info-bg mx-auto text-center">
                  <h5> Fruits from premium gardens</h5>
                  <a class="btn btn-secondary btn-theme2 mt-md-5 mt-4" href="Services2.aspx">Read More</a>
                </div>
              </div>
            </div>
          </div>
        </li>
      </div>
      <div class="item">
        <li>
          <div class="slider-info banner-view banner-top2 bg bg2" data-selector=".bg.bg2">
            <div class="banner-info">
              <div class="container">
                <div class="banner-info-bg mx-auto text-center">
                  <h5>We provide organic products</h5>
                 <a class="btn btn-secondary btn-theme2 mt-md-5 mt-4" href="Services2.aspx">Read More</a>
                </div>
              </div>
            </div>
          </div>
        </li>
      </div>
      <div class="item">
        <li>
          <div class="slider-info banner-view banner-top3 bg bg2" data-selector=".bg.bg2">
            <div class="banner-info">
              <div class="container">
                <div class="banner-info-bg mx-auto text-center">
                  <h5>We grow food for all appetites</h5>
                  <a class="btn btn-secondary btn-theme2 mt-md-5 mt-4" href="Services2.aspx">Read More</a>
                </div>
              </div>
            </div>
          </div>
        </li>
      </div>
    </div>
  </div>

</div>


  <script src="js/owl.carousel.js"></script>
  <!-- script for -->
  <script>
      $(document).ready(function () {
          $('.owl-one').owlCarousel({
              loop: true,
              margin: 0,
              nav: false,
              responsiveClass: true,
              autoplay: false,
              autoplayTimeout: 5000,
              autoplaySpeed: 1000,
              autoplayHoverPause: false,
              responsive: {
                  0: {
                      items: 1,
                      nav: false
                  },
                  480: {
                      items: 1,
                      nav: false
                  },
                  667: {
                      items: 1,
                      nav: true
                  },
                  1000: {
                      items: 1,
                      nav: true
                  }
              }
          })
      })
  </script>
  <!-- //script -->
  <!-- /main-slider -->
</section>
<section class="w3l-feature-3" id="">
	<div class="grid top-bottom mb-lg-5 pb-lg-5">
		<div class="container">
			
			<div class="middle-section grid-column text-center">
				<div class="three-grids-columns">
					<span class="fa fa-viadeo"></span>
					<h4>Natural Products</h4>
					<p>Auci elit cons equat ipsutis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet</p>
					<a href="Services2.aspx" class="red mt-3">Read More </a>
				</div>
				<div class="three-grids-columns">
					<span class="fa fa-pagelines"></span>
					<h4>Wheat Cultivation</h4>
					<p>Auci elit cons equat ipsutis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet</p>
					<a href="Services2.aspx" class="red mt-3">Read More </a>
				</div>
				<div class="three-grids-columns">
					<span class="fa fa-apple"></span>
					<h4>Modern Truck</h4>
					<p>Auci elit cons equat ipsutis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet</p>
					<a href="Services2.aspx" class="red mt-3">Read More </a>
				</div>
			</div>
		</div>
	</div>
</section>
 <!--  services section -->
<section class="w3l-index6" id="service">
  <div class="features-with-17_sur py-5">
    <div class="container py-lg-5">
      <div class="heading text-center mx-auto">
				<h3 class="head">We handle everything for you!</h3>
				<p class="my-3 head"> Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;
				  Nulla mollis dapibus nunc, ut rhoncus
				  turpis sodales quis. Integer sit amet mattis quam.</p>
			  </div>
      <div class="features-with-17-top_sur mt-5 pt-3">
        <div class="row">
          <div class="col-lg-4 col-md-6 mt-md-0 mt-4">
            <div class="features-with-17-right-tp_sur">
              <div class="features-with-17-left1 mb-3">
                <h4>40</h4>
              </div>
              <div class="features-with-17-left2">
                <h6>Years  Experience</h6>
                <p> Lorem Ipsum is simply dummy text of the printing and industry.
                  Lorem Ipsum has the industry's standard dummy text ever since the 1500s,</p>
                  <a href="Services2.aspx" class="red mt-3"></a>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 mt-md-0 mt-5">
            <div class="features-with-17-right-tp_sur">
              <div class="features-with-17-left1 mb-3">
                <h4>30</h4>
              </div>
              <div class="features-with-17-left2">
                <h6>Specialists Farmers</h6>
                <p> Lorem Ipsum is simply dummy text of the printing and industry.
                  Lorem Ipsum has the industry's standard dummy text ever since the 1500s,</p>
                  <a href="Services2.aspx" class="red mt-3"></a>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 mt-lg-0 mt-5">
            <div class="features-with-17-right-tp_sur">
              <div class="features-with-17-left1 mb-3">
                <h4>15</h4>
              </div>
              <div class="features-with-17-left2">
                <h6>Winning  Awards </h6>
                <p> Lorem Ipsum is simply dummy text of the printing and industry.
                  Lorem Ipsum has the industry's standard dummy text ever since the 1500s,</p>
                  <a href="Services2.aspx" class="red mt-3"></a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
 <!--  //services section -->
<!-- customers4 block -->
<section class="w3l-customers-4" id="testimonials">
  <div id="customers4-block" class="py-5">
    <div class="container py-md-3">


      <div id="customerhnyCarousel" class="carousel slide" data-ride="carousel">

        <ol class="carousel-indicators">
          <li data-target="#customerhnyCarousel" data-slide-to="0" class="active"></li>
          <li data-target="#customerhnyCarousel" data-slide-to="1"></li>
          <li data-target="#customerhnyCarousel" data-slide-to="2"></li>
        </ol>
        <!-- Carousel items -->
        <div class="carousel-inner pb-5 mb-md-5 pt-md-5">

          <div class="carousel-item active">
            <div class="section-title">
              <div class="item-top">
                <div class="item text-center">
                  <div class="imgTitle">
                    <img src="images/c1.jpg" class="img-responsive" alt="" />
                  </div>
                  <h6 class="mt-3">Steve Smith</h6>
                  <p class="">Client</p>
                  <h5>" Magna aliqua. Ut enim ad minim veniam, quis nostrud.Lorem ipsum dolor " </h5>

                </div>
              </div>
            </div>
          </div>
          <!--.item-->

          <div class="carousel-item">
            <div class="section-title">
              <div class="item-top">
                <div class="item text-center">
                  <div class="imgTitle">
                    <img src="images/c2.jpg" class="img-responsive" alt="" />
                  </div>
                  <h6 class="mt-3">Jessey Rider</h6>
                  <p class="">Worker</p>
                  <h5>" Magna aliqua. Ut enim ad minim veniam, quis nostrud.Lorem ipsum dolor " </h5>

                </div>
              </div>
            </div>

          </div>
          <!--.item-->
          <div class="carousel-item">
            <div class="section-title">
              <div class="item-top">
                <div class="item text-center">
                  <div class="imgTitle">
                    <img src="images/c3.jpg" class="img-responsive" alt="" />
                  </div>
                  <h6 class="mt-3">Mark Stoins</h6>
                  <p class="">Engineer</p>
                  <h5>" Magna aliqua. Ut enim ad minim veniam, quis nostrud.Lorem ipsum dolor " </h5>

                </div>
              </div>
            </div>
          </div>
          <!--.item-->

        </div>
        <!--.carousel-inner-->
      </div>




    </div>
  </div>


</section>
<div class="products-4" id="gallery">
    <!-- Products4 block -->
    <div id="products4-block" class="text-center">
        <div class="container">
            <div class="heading text-center mx-auto mb-5">
                <h3 class="head">What I Do</h3>
                <p class="my-3 head"> Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;
                Nulla mollis dapibus nunc, ut rhoncus
                turpis sodales quis. Integer sit amet mattis quam.</p>
              </div>
            <input id="tab1" type="radio" name="tabs" checked>
            <label class="tabtle" for="tab1">All </label>

            <input id="tab2" type="radio" name="tabs">
            <label class="tabtle" for="tab2">Organic</label>

            <input id="tab3" type="radio" name="tabs">
            <label class="tabtle" for="tab3">Vegetables</label>

            <input id="tab4" type="radio" name="tabs">
            <label class="tabtle" for="tab4">Fruits</label>

            <section id="content1" class="tab-content text-left">
                <div class="d-grid grid-col-3">
                    <div class="product">
                        <a href="images/g1.jpg" data-lightbox="example-set"
                            data-title="Lorem ipsum dolor sit amet consectetur adipisicing elit. Numquam architecto, ex veritatis">
                            <figure>
                                <img src="images/g1.jpg" class="img-responsive" alt="" />
                            </figure>
                        </a>
                        
                    </div>
                    <div class="product">
                        <a href="images/g2.jpg" data-lightbox="example-set"
                            data-title="Lorem ipsum dolor sit amet consectetur adipisicing elit. Numquam architecto, ex veritatis">
                            <figure>
                                <img src="images/g2.jpg" class="img-responsive" alt="" />
                            </figure>
                        </a>
                        
                    </div>
                    <div class="product">
                        <a href="images/g3.jpg" data-lightbox="example-set"
                            data-title="Lorem ipsum dolor sit amet consectetur adipisicing elit. Numquam architecto, ex veritatis">
                            <figure>
                                <img src="images/g3.jpg" class="img-responsive" alt="" />
                            </figure>
                        </a>
                        
                    </div>
                    <div class="product">
                        <a href="images/g4.jpg" data-lightbox="example-set"
                            data-title="Lorem ipsum dolor sit amet consectetur adipisicing elit. Numquam architecto, ex veritatis">
                            <figure>
                                <img src="images/g4.jpg" class="img-responsive" alt="" />
                            </figure>
                        </a>
                        
                    </div>
                    <div class="product">
                        <a href="images/g5.jpg" data-lightbox="example-set"
                            data-title="Lorem ipsum dolor sit amet consectetur adipisicing elit. Numquam architecto, ex veritatis">
                            <figure>
                                <img src="images/g5.jpg" class="img-responsive" alt="" />
                            </figure>
                        </a>
                       
                    </div>
                    <div class="product">
                        <a href="images/g6.jpg" data-lightbox="example-set"
                            data-title="Lorem ipsum dolor sit amet consectetur adipisicing elit. Numquam architecto, ex veritatis">
                            <figure>
                                <img src="images/g6.jpg" class="img-responsive" alt="" />
                            </figure>
                        </a>
                        
                    </div>
                    
                    
                </div>
            </section>

            <section id="content2" class="tab-content text-left">
                <div class="d-grid grid-col-3">
                    <div class="product">
                        <a href="images/g7.jpg" data-lightbox="example-set"
                            data-title="Lorem ipsum dolor sit amet consectetur adipisicing elit. Numquam architecto, ex veritatis">
                            <figure>
                                <img src="images/g7.jpg" class="img-responsive" alt="" />
                            </figure>
                        </a>
                        
                    </div>
                    <div class="product">
                        <a href="images/g8.jpg" data-lightbox="example-set"
                            data-title="Lorem ipsum dolor sit amet consectetur adipisicing elit. Numquam architecto, ex veritatis">
                            <figure>
                                <img src="images/g8.jpg" class="img-responsive" alt="" />
                            </figure>
                        </a>
                       
                    </div>
                    <div class="product">
                        <a href="images/g1.jpg" data-lightbox="example-set"
                            data-title="Lorem ipsum dolor sit amet consectetur adipisicing elit. Numquam architecto, ex veritatis">
                            <figure>
                                <img src="images/g1.jpg" class="img-responsive" alt="" />
                            </figure>
                        </a>
                       
                    </div>
                    <div class="product">
                        <a href="images/g2.jpg" data-lightbox="example-set"
                            data-title="Lorem ipsum dolor sit amet consectetur adipisicing elit. Numquam architecto, ex veritatis">
                            <figure>
                                <img src="images/g2.jpg" class="img-responsive" alt="" />
                            </figure>
                        </a>
                       
                    </div>
                    <div class="product">
                        <a href="images/g3.jpg" data-lightbox="example-set"
                            data-title="Lorem ipsum dolor sit amet consectetur adipisicing elit. Numquam architecto, ex veritatis">
                            <figure>
                                <img src="images/g3.jpg" class="img-responsive" alt="" />
                            </figure>
                        </a>
                        
                    </div>
                    <div class="product">
                        <a href="images/g4.jpg" data-lightbox="example-set"
                            data-title="Lorem ipsum dolor sit amet consectetur adipisicing elit. Numquam architecto, ex veritatis">
                            <figure>
                                <img src="images/g4.jpg" class="img-responsive" alt="" />
                            </figure>
                        </a>
                        
                    </div>
                </div>
            </section>

            <section id="content3" class="tab-content text-left">
                <div class="d-grid grid-col-3">
                    <div class="product">
                        <a href="images/g5.jpg" data-lightbox="example-set"
                            data-title="Lorem ipsum dolor sit amet consectetur adipisicing elit. Numquam architecto, ex veritatis">
                            <figure>
                                <img src="images/g5.jpg" class="img-responsive" alt="" />
                            </figure>
                        </a>
                      
                    </div>
                    <div class="product">
                        <a href="images/g6.jpg" data-lightbox="example-set"
                            data-title="Lorem ipsum dolor sit amet consectetur adipisicing elit. Numquam architecto, ex veritatis">
                            <figure>
                                <img src="images/g6.jpg" class="img-responsive" alt="" />
                            </figure>
                        </a>
                       
                    </div>
                    <div class="product">
                        <a href="images/g7.jpg" data-lightbox="example-set"
                            data-title="Lorem ipsum dolor sit amet consectetur adipisicing elit. Numquam architecto, ex veritatis">
                            <figure>
                                <img src="images/g7.jpg" class="img-responsive" alt="" />
                            </figure>
                        </a>
                        
                    </div>
                </div>
            </section>

            <section id="content4" class="tab-content text-left">
                <div class="d-grid grid-col-3">
                    <div class="product">
                        <a href="images/g8.jpg" data-lightbox="example-set"
                            data-title="Lorem ipsum dolor sit amet consectetur adipisicing elit. Numquam architecto, ex veritatis">
                            <figure>
                                <img src="images/g8.jpg" class="img-responsive" alt="" />
                            </figure>
                        </a>
                        
                    </div>
                    <div class="product">
                        <a href="images/g1.jpg" data-lightbox="example-set"
                            data-title="Lorem ipsum dolor sit amet consectetur adipisicing elit. Numquam architecto, ex veritatis">
                            <figure>
                                <img src="images/g1.jpg" class="img-responsive" alt="" />
                            </figure>
                        </a>
                        
                    </div>
                </div>
            </section>
        </div>
    </div>
    <!-- Products4 block -->
</div>
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/lightbox-plus-jquery.min.js"></script>
<section class="w3l-features-4">
	<!-- /features -->
		<div class="features py-5" id="features">
            <div class="container py-md-3">
			<div class="heading text-center mx-auto">
				<h3 class="head">Advance Features!</h3>
				<p class="my-3 head"> Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;
				  Nulla mollis dapibus nunc, ut rhoncus
				  turpis sodales quis. Integer sit amet mattis quam.</p>
			  </div>
			<div class="fea-gd-vv row mt-5 pt-3">	
			   <div class="float-lt feature-gd col-md-6">	
					 <div class="icon"> <span class="fa fa-leaf" aria-hidden="true"></span></div>
					 <div class="icon-info">
						<h5><a href="#">Fresh</a></h5>
						<p> Lorem ipsum dolor sit amet, consectetur adipisicingelit, sed do eiusmod tempor incididunt primis in faucibus orci luctus et ultrices posuere  primis in faucibus </p>
						<a href="#" class="red mt-3">Read More </a>
					</div>
					 
				</div>	
				<div class="float-mid feature-gd col-md-6 mt-md-0 mt-5">	
					 <div class="icon"> <span class="fa fa-thumbs-up" aria-hidden="true"></span></div>
					 <div class="icon-info">
						<h5><a href="#">Tasty</a></h5>
						<p> Lorem ipsum dolor sit amet, consectetur adipisicingelit, sed do eiusmod tempor incididunt primis in faucibus orci luctus et ultrices posuere  primis in faucibus </p>
						<a href="#" class="red mt-3">Read More </a>
					</div>
			 </div> 
				<div class="float-rt feature-gd col-md-6 mt-5">	
					 <div class="icon"> <span class="fa fa-heartbeat" aria-hidden="true"></span></div>
					 <div class="icon-info">
						<h5><a href="#">Healthy</a></h5>
						<p> Lorem ipsum dolor sit amet, consectetur adipisicingelit, sed do eiusmod tempor incididunt primis in faucibus orci luctus et ultrices posuere  primis in faucibus </p>
						<a href="#" class="red mt-3">Read More </a>
					</div>
			 </div>	 
			 <div class="float-lt feature-gd col-md-6 mt-5">	
					 <div class="icon"> <span class="fa fa-heart" aria-hidden="true"></span></div>
					 <div class="icon-info">
						<h5><a href="#">Yammy</a>
						</h5>
						<p> Lorem ipsum dolor sit amet, consectetur adipisicingelit, sed do eiusmod tempor incididunt primis in faucibus orci luctus et ultrices posuere  primis in faucibus </p>
						<a href="#" class="red mt-3">Read More <span class="fa fa-angle-right pl-1"></span></a>
					</div>
					 
				</div>	
				<div class="float-mid feature-gd col-md-6 mt-5">	
					 <div class="icon"> <span class="fa fa-pagelines" aria-hidden="true"></span></div>
					 <div class="icon-info">
						<h5><a href="#">Eco</a>
						</h5>
						<p> Lorem ipsum dolor sit amet, consectetur adipisicingelit, sed do eiusmod tempor incididunt primis in faucibus orci luctus et ultrices posuere  primis in faucibus </p>
						<a href="#" class="red mt-3">Read More </a>
					</div>
			 </div> 
				<div class="float-rt feature-gd col-md-6 mt-5">	
					 <div class="icon"> <span class="fa fa-gift" aria-hidden="true"></span></div>
					 <div class="icon-info">
						<h5><a href="#">Premium</a>
						</h5>
						<p> Lorem ipsum dolor sit amet, consectetur adipisicingelit, sed do eiusmod tempor incididunt primis in faucibus orci luctus et ultrices posuere  primis in faucibus </p>
						<a href="#" class="red mt-3">Read More </a>
					</div>
			 </div>		 				 
		  </div>  
		 </div>
	   </div>
   <!-- //features -->
</section>
<section class="w3l-news" id="news">
  <section id="grids5-block" class="py-5">
    <div class="container py-lg-3">
      <div class="heading text-center mx-auto">
				<h3 class="head">Recent posts and updates</h3>
				<p class="my-3 head"> Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;
				  Nulla mollis dapibus nunc, ut rhoncus
				  turpis sodales quis. Integer sit amet mattis quam.</p>
			  </div>
      <div class="grid-view">
        <div class="row">
          <div class="col-lg-4 col-md-6 mt-md-4 mt-4">
            <div class="grids5-info">
              <a href="#" class="d-block zoom"><img src="images/g7.jpg" alt="" class="img-fluid news-image"></a>
              <div class="blog-info">
                <p class="date">Mar 29, 2020</p>
                <h4><a href="#">Organic Veggies in Your Diet</a></h4>
               
                <p class="blog-text">Lorem ipsum dolor sit amet nostrum ad minus libero fugiat molestiae ullam ipsam quas unde earum...</p>
                <a href="#" class="btn btn-news">Read More <span class="fa fa-angle-right pl-1"></span> </a>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 mt-md-4 mt-5">
            <div class="grids5-info">
              <a href="#" class="d-block zoom"><img src="images/g8.jpg" alt="" class="img-fluid news-image"></a>
              <div class="blog-info">
                <p class="date">Sep 28, 2020</p>
                <h4><a href="#">Importance of Food Safety Training</a></h4>
                
                <p class="blog-text">Lorem ipsum dolor sit amet nostrum ad minus libero fugiat molestiae ullam ipsam quas unde earum...</p>
                <a href="#" class="btn btn-news">Read More <span class="fa fa-angle-right pl-1"></span> </a>
              </div>
            </div>
          </div>
          <div class="col-lg-4 offset-md-3 offset-lg-0 col-md-6 mt-md-4 mt-5">
            <div class="grids5-info">
              <a href="#" class="d-block zoom"><img src="images/g9.jpg" alt="" class="img-fluid news-image"></a>
              <div class="blog-info">
                <p class="date">Dec 28, 2020</p>
                <h4><a href="#">Eight Tips for Healthy Eating</a></h4>
               
                <p class="blog-text">Lorem ipsum dolor sit amet nostrum ad minus libero fugiat molestiae ullam ipsam quas unde earum...</p>
                <a href="#" class="btn btn-news">Read More <span class="fa fa-angle-right pl-1"></span> </a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</section>
<!-- grids block 5 -->
<section class="w3l-footer-29-main">
  <div class="footer-29">
      <div class="container">
          <div class="d-grid grid-col-4 footer-top-29">
              <div class="footer-list-29 footer-1">
                  <h6 class="footer-title-29">Contact Us</h6>
                  <ul>
                      <li><p><span class="fa fa-map-marker"></span> Lorem ipsum, #32841 block, #221DRS Estate business building, UK.</p></li>
                      <li><a href="tel:+7-800-999-800"><span class="fa fa-phone"></span> +(21)-255-999-8888</a></li>
                      <li><a href="mailto:corporate-mail@support.com" class="mail"><span class="fa fa-envelope-open-o"></span> farmer-mail@support.com</a></li>
                  </ul>
                  <div class="main-social-footer-29">
                      <a href="#facebook" class="facebook"><span class="fa fa-facebook"></span></a>
                      <a href="#twitter" class="twitter"><span class="fa fa-twitter"></span></a>
                      <a href="#instagram" class="instagram"><span class="fa fa-instagram"></span></a>
                      <a href="#google-plus" class="google-plus"><span class="fa fa-google-plus"></span></a>
                      <a href="#linkedin" class="linkedin"><span class="fa fa-linkedin"></span></a>
                  </div>
              </div>
              <div class="footer-list-29 footer-2">
                  <ul>
                      <h6 class="footer-title-29">Featured Links</h6>
                      <li><a href="Contact2.aspx">Our People</a></li>
                      <li><a href="Contact2.aspx">Latest Media</a></li>
                      <li><a href="Contact2.aspx">Our Branches</a></li>
                      <li><a href="Contact2.aspx">Organisations</a></li>
                      <li><a href="Contact2.aspx">Help</a></li>
                  </ul>
              </div>
              <div class="footer-list-29 footer-3">
                 
                  <h6 class="footer-title-29">Newsletter </h6>
                  <p class="mb-3">Get in your inbox the latest News and</p>
          <form action="#" class="subscribe" method="post">
            <input type="email" name="email" placeholder="Email" required="">
            <button><span class="fa fa-envelope-o"></span></button>
          </form>
          <p>Subscribe and get our weekly newsletter</p>
          <p>We'll never share your email address</p>
        
              </div>
              <div class="footer-list-29 footer-4">
                  <ul>
                      <h6 class="footer-title-29">Quick Links</h6>
                      <li><a href="Index2.aspx">Home</a></li>
                      <li><a href="About2.aspx">About</a></li>
                      <li><a href="Services2.aspx">Services</a></li>
                      <li><a href="#"> Blog</a></li>
                      <li><a href="Contact2.aspx">Contact</a></li>
                  </ul>
              </div>
          </div>
          <div class="d-grid grid-col-2 bottom-copies">
              <p class="copy-footer-29">© 2020 Farm Planning. All rights reserved | Designed by <a href="https://w3layouts.com">W3layouts</a></p>
               <ul class="list-btm-29">
                      <li><a href="#link">Privacy policy</a></li>
                      <li><a href="#link">Terms of service</a></li>
                      
                  </ul>
          </div>
      </div>
  </div>
  <!-- move top -->
  <button onclick="topFunction()" id="movetop" title="Go to top">
    <span class="fa fa-angle-up"></span>
  </button>
  <script>
      // When the user scrolls down 20px from the top of the document, show the button
      window.onscroll = function () {
          scrollFunction()
      };

      function scrollFunction() {
          if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
              document.getElementById("movetop").style.display = "block";
          } else {
              document.getElementById("movetop").style.display = "none";
          }
      }

      // When the user clicks on the button, scroll to the top of the document
      function topFunction() {
          document.body.scrollTop = 0;
          document.documentElement.scrollTop = 0;
      }
  </script>
  <!-- /move top -->
</section>
<script src="js/jquery-3.3.1.min.js"></script>
<!-- //footer-28 block -->
</section>
<script>
    $(function () {
        $('.navbar-toggler').click(function () {
            $('body').toggleClass('noscroll');
        })
    });
</script>
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
  integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous">
</script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
  integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous">
</script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
  integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous">
</script>

<!-- Template JavaScript -->
<script src="js/all.js"></script>
<!-- Smooth scrolling -->
<!-- <script src="js/smoothscroll.js"></script> -->
<script src="js/owl.carousel.js"></script>

<!-- script for -->
<script>
    $(document).ready(function () {
        $('.owl-one').owlCarousel({
            loop: true,
            margin: 0,
            nav: true,
            responsiveClass: true,
            autoplay: false,
            autoplayTimeout: 5000,
            autoplaySpeed: 1000,
            autoplayHoverPause: false,
            responsive: {
                0: {
                    items: 1,
                    nav: false
                },
                480: {
                    items: 1,
                    nav: false
                },
                667: {
                    items: 1,
                    nav: true
                },
                1000: {
                    items: 1,
                    nav: true
                }
            }
        })
    })
</script>
<!-- //script -->

</body>

</html>
<!-- // grids block 5 -->