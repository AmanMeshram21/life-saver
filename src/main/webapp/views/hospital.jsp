<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- basic -->
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- mobile metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="viewport" content="initial-scale=1, maximum-scale=1" />
    <!-- site metas -->
    <title>Hospital</title>
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <!-- bootstrap css -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
    <!-- style css -->
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <!-- Responsive-->
    <link rel="stylesheet" href="css/responsive.css" />
    <!-- fevicon -->
    <link rel="icon" href="images/fevicon.png" type="image/gif" />
    <!-- Scrollbar Custom CSS -->
    <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css" />
    <!-- Tweaks for older IEs-->
    <link
      rel="stylesheet"
      href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css"
    />
    <!-- owl stylesheets -->
    <link rel="stylesheet" href="css/owl.carousel.min.css" />
    <link rel="stylesheet" href="css/owl.theme.default.min.css" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css"
      media="screen"
    />
  </head>
  <body>
    <!--header section start -->
    <div class="header_section header_bg">
      <div class="container-fluid">
        <div class="main">
          <div class="logo">
            <a href="/"><img src="images/logo.png" /></a>
          </div>
          <div class="menu_text">
            <ul>
              <div class="togle_">
                <div class="menu_main">
                  <ul>
                    <li><a href="/login">Login/SignUp</a></li>
                    <li>
                      <a href="#"
                        ><i class="fa fa-search" aria-hidden="true"></i
                      ></a>
                    </li>
                  </ul>
                </div>
              </div>
              <div id="myNav" class="overlay">
                <a
                  href="javascript:void(0)"
                  class="closebtn"
                  onclick="closeNav()"
                  >&times;</a
                >
                <div class="overlay-content">
                  <a href="/">Home</a>
                  <a href="/donor">Donor Form</a>
                  <a href="/about">About</a>
                  <a href="/hospital">Hospital</a>
                  <a href="/news">News</a>
                </div>
              </div>
              <span class="navbar-toggler-icon"></span>
              <span onclick="openNav()"
                ><img src="images/toogle-icon.png" class="toggle_menu"
              /></span>
              <span onclick="openNav()"
                ><img src="images/toogle-icon1.png" class="toggle_menu_1"
              /></span>
            </ul>
          </div>
        </div>
      </div>
      <!-- banner section start -->
      <div class="container">
        <div class="about_taital_main">
          <h2 class="about_tag">Hospitals and Blood Bank</h2>
          <div class="about_menu">
            <ul>
              <li><a href="/">Home</a></li>
              
            </ul>
          </div>
        </div>
      </div>
      <!-- banner section end -->
    </div>
    <!-- header section end -->
    <!-- doctor section start -->
    <div class="doctors_section layout_padding">
      <div class="container-fluid">
        <div class="row">
          <div class="col-sm-12">
            <div class="taital_main">
              <div class="taital_left">
                <div class="play_icon"><img src="images/play-icon.png" /></div>
              </div>
              <div class="taital_right">
                <h1 class="doctor_taital" style="color: black;">What doctors say..</h1>
                <p class="doctor_text" style="color: black">
                  <b>
                    Blood transfusion saves lives and improves health, but many
                    patients requiring transfusion do not have timely access to
                    safe blood. Providing safe and adequate blood should be an
                    integral part of every countryâs national health care policy
                    and infrastructure. WHO recommends that all activities
                    related to blood collection, testing, processing, storage
                    and distribution be coordinated at the national level
                    through effective organization and integrated blood supply
                    networks. The national blood system should be governed by
                    national blood policy and legislative framework to promote
                    uniform implementation of standards and consistency in the
                    quality and safety of blood and blood products.
                  </b>
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- doctor section end -->
    <div class="about_section layout_padding">
      <div class="container">
         <div class="row">
            <div class="col-md-6">
               <div class="about_img"><img src="images/img-3.png"></div>
            </div>
            <div class="col-md-6">
               <h1 class="about_taital">what is blood donation?</span></h1>
               <p class="about_text">A blood donation occurs when a person voluntarily has blood drawn and used for transfusions and/or made into biopharmaceutical medications by a process called fractionation (separation of whole blood components). Donation may be of whole blood, or of specific components directly (apheresis). Blood banks often participate in the collection process as well as the procedures that follow it.</p>
            </div>
         </div>
         <form action="/action_page.php">
          <div class="subscribe_bt">
            <a href="/hospitalform">Hospital/Bank Form</a>
          </div>
        </form>
      </div>
   </div>
    <!-- footer section start -->
    <div class="footer_section layout_padding">
      <div class="container">
        <div class="footer_section_2">
          <div class="row">
            <div class="col-lg-3 col-sm-6">
              <h2 class="useful_text">Resources</h2>
              <div class="footer_menu">
                <ul>
                  <li><a href="http://nbtc.naco.gov.in/page/donationprocess/">Donation process</a></li>
                  <li><a href="https://www.youtube.com/watch?v=p5EBrAbVs04">Media</a></li>
                  <li><a href="https://www.who.int/news-room/fact-sheets/detail/blood-safety-and-availability#:~:text=WHO%20recommends%20that%20all%20blood,according%20to%20quality%20system%20requirements.">Protection</a></li>
                  <li><a href="https://www.redcrossblood.org/donate-blood/blood-donation-process/before-during-after.html">Care</a></li>
               </ul>
            </div>
         </div>
         <div class="col-lg-3 col-sm-6">
            <h2 class="useful_text">About</h2>
            <p class="footer_text">Blood donation is not just a sacred service to patients in dire need of blood but
                also brings health benefits to the donor. 
                Your blood donation can be used whole, for platelets, 
                red blood cells, plasma, etc.
              </p>
            </div>
            <div class="col-lg-3 col-sm-6">
              <h2 class="useful_text">Contact Us</h2>
              <div class="location_text">
                <ul>
                  <li>
                    <a href="#"
                      ><i class="fa fa-map-marker" aria-hidden="true"></i>
                      <span class="padding_15">Location</span></a
                    >
                  </li>
                  <li>
                    <a href="#"
                      ><i class="fa fa-phone" aria-hidden="true"></i>
                      <span class="padding_15">Call +01 1234567890</span></a
                    >
                  </li>
                  <li>
                    <a href="#"
                      ><i class="fa fa-envelope" aria-hidden="true"></i>
                      <span class="padding_15">lifesaver@gmail.com</span></a
                    >
                  </li>
                </ul>
              </div>
            </div>
            <div class="col-lg-3 col-sm-6">
              <h2 class="useful_text">countrys</h2>
              <div class="map_image"><img src="images/map-bg.png" /></div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- footer section end -->
    <!-- copyright section start -->
    <div class="copyright_section">
      <div class="container">
        <div class="row">
          <div class="col-sm-12">
            <p class="copyright_text">
              Â© 2020 All Rights Reserved.<a href="https://html.design">
                Life Saver</a
              >
            </p>
          </div>
        </div>
      </div>
    </div>
    <!-- copyright section end -->
    <!-- Javascript files-->
    <script src="js/jquery.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="js/jquery-3.0.0.min.js"></script>
    <script src="js/plugin.js"></script>
    <!-- sidebar -->
    <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="js/custom.js"></script>
    <!-- javascript -->
    <script src="js/owl.carousel.js"></script>
    <script src="https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>
    <script>
      $(document).ready(function () {
        $(".fancybox").fancybox({
          openEffect: "none",
          closeEffect: "none",
        });

        $(".zoom").hover(
          function () {
            $(this).addClass("transition");
          },
          function () {
            $(this).removeClass("transition");
          }
        );
      });
    </script>
    <script>
      function openNav() {
        document.getElementById("myNav").style.width = "100%";
      }
      function closeNav() {
        document.getElementById("myNav").style.width = "0%";
      }
    </script>
  </body>
</html>
