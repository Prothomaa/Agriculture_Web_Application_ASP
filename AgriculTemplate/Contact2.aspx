<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact2.aspx.cs" Inherits="AgriculTemplate.Contact2" %>

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
    <link rel="stylesheet" href="css/style-starter.css">
      <style type="text/css">
           .d1{
              margin-left:500px;
          }
          .auto-style1 {
              width: 213px;
          }
          .auto-style2 {
              width: 338px;
          }
      </style>
  </head>
  <body>


    <!--<form id="form1" runat="server">-->


<!-- Top Menu 1 -->
<section class="w3l-top-menu-1">
	<div class="top-hd">
		<div class="container">
	<header class="row top-menu-top">
		<div class="accounts col-md-9 col-6">
				<li class="top_li"><span class="fa fa-phone"></span><a href="tel:+142 5897555">+142 5897555</a> </li>
				<li class="top_li1"><span class="fa fa-envelope-o"></span> <a href="mailto:education-mail@support.com" class="mail"> info@example.com</a>	</li>
		</div>
		<div class="social-top col-md-3 col-6">
			<div class="main-social-head">
				<a href="#facebook" class="facebook"><span class="fa fa-facebook"></span></a>
				<a href="#twitter" class="twitter"><span class="fa fa-twitter"></span></a>
				<a href="#instagram" class="instagram"><span class="fa fa-instagram"></span></a>
			</div>
		</div>
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
          <!--<input class="form-control search" type="search" placeholder="Search here..." aria-label="Search">
          <button class="btn btn-search position-absolute" type="submit"><span class="fa fa-search" aria-hidden="true"></span></button>-->
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
<section class="w3l-contact-breadcrum">
  <div class="breadcrum-bg">
    <div class="container py-5">
      <p><a href="Index2.aspx">Home</a> &nbsp; / &nbsp; Contact</p>
      <h2 class="my-3">Ordered Products</h2>
    
      <p>Nulla dolorem perferendis inventore! posuere cubilia Curae; Nunc non risus in justo convallis feugiat. consectetur adipisicing elit.</p>
    </div>
  </div>
</section>
      <br />
          <form id="form2">
        <div class="d1">
            <asp:GridView ID="GridView1" runat="server"  
        AutoGenerateColumns="False" Width="48%" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">  
                <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>  
            <asp:BoundField DataField="name"  
                HeaderText="name" />  
            <asp:BoundField DataField="qty"  
                HeaderText="Quantity" />  
        </Columns>  
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
        </div>
    </form>
<!-- contact -->
<section class="w3l-contacts-12" id="">
    <div class="contact-top">
     
        <!-- map -->
        <div class="map map mt-md-0 mt-5">
           <!-- <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d387190.2895687731!2d-74.26055986835598!3d40.697668402590374!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c24fa5d33f083b%3A0xc80b8f06e177fe62!2sNew+York%2C+NY%2C+USA!5e0!3m2!1sen!2sin!4v1562582305883!5m2!1sen!2sin" frameborder="0" style="border:0" allowfullscreen=""></iframe>-->
        </div>
        <!-- //map -->
    </div>
</section>
      <br />
      <br />
      <br />
<!-- //contact -->
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
            <input type="email" name="email" placeholder="Email">
            <button><span class="fa fa-envelope-o"></span></button>
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

     <!-- </form>-->

</body>

</html>
<!-- // grids block 5 -->
