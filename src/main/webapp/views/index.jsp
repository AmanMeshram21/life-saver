<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
   <head>
      <!-- basic -->
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
      <!-- site metas -->
      <title>Lifesaver</title>
      <meta name="keywords" content="">
      <meta name="description" content="">
      <meta name="author" content="">
      <!-- bootstrap css -->
      <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
      <!-- style css -->
      <link rel="stylesheet" type="text/css" href="css/style.css">
      <!-- Responsive-->
      <link rel="stylesheet" href="css/responsive.css">
      <!-- fevicon -->
      <link rel="icon" href="images/fevicon.png" type="image/gif" />
      <!-- Scrollbar Custom CSS -->
      <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
      <!-- Tweaks for older IEs-->
      <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
      <!-- owl stylesheets --> 
      <link rel="stylesheet" href="css/owl.carousel.min.css">
      <link rel="stylesheet" href="css/owl.theme.default.min.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
   </head>
   <body>
      <!--header section start -->
      <div class="header_section">
         <div class="container-fluid">
               <div class="main">
                  <div class="logo"><a href="/"><img src="images/logo.png"></a></div>
                  <div class="menu_text">
                     <ul>
                        <div class="togle_">
                           <div class="menu_main">
                              <ul>
                                 <li><a href="/login">Login/SignUp</a></li>
                                 <li><a href="#"><i class="fa fa-search" aria-hidden="true"></i></a></li>
                              </ul>
                           </div>
                        </div>
                        <div id="myNav" class="overlay">
                           <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
                           <div class="overlay-content">
                              <a href="/">Home</a>
                              <a href="/donor">Donor Form</a>
                              <a href="/about">About</a>
                              <a href="/hospital">Hospital</a>
                              <a href="/news">News</a>
                           </div>
                        </div>
                        <span class="navbar-toggler-icon"></span>
                        <span onclick="openNav()"><img src="images/toogle-icon.png" class="toggle_menu"></span>
                        <span onclick="openNav()"><img src="images/toogle-icon1.png" class="toggle_menu_1"></span>
                     </ul>
                  </div>
               </div>
            </div>
      <!-- banner section start -->
      <div class="banner_section layout_padding">
         <div class="container">
            <div id="my_slider" class="carousel slide" data-ride="carousel">
               <div class="carousel-inner">
                  <div class="carousel-item active">
                     <div class="row">
                        <div class="col-md-6">
                           <div class="container">
                              <h1 class="banner_taital">Donate Blood</h1>
                              <p class="banner_text">A blood donation occurs when a person voluntarily has blood drawn and used for transfusions and/or made into biopharmaceutical medications by a process called fractionation (separation of whole blood components). </p>
                              
                           </div>
                        </div>
                        <div class="col-md-6">
                           <div class="banner_img"><img src="images/banner-img.png"></div>
                        </div>
                     </div>
                  </div>
                  <div class="carousel-item">
                     <div class="row">
                        <div class="col-md-6">
                           <div class="container">
                              <h1 class="banner_taital">Blood Group</h1>
                              <p class="banner_text">There are 4 main blood groups (types of blood) A, B, AB and O. Your blood group is determined by the genes you inherit from your parents. Each group can be either RhD positive or RhD negative, which means in total there are 8 blood groups.</p>
                           </div>
                        </div>
                        <div class="col-md-6">
                           <div class="banner_img"><img src="images/banner-img.png"></div>
                        </div>
                     </div>
                  </div>
                  <div class="carousel-item">
                     <div class="row">
                        <div class="col-md-6">
                           <div class="container">
                              <h1 class="banner_taital">Benefit of Blood Donation</h1>
                              <p class="banner_text">The history of blood donation dates back to 1942 when Indiaâs first blood bank was set up in Kolkata and managed by Red Cross. Since then, number of voluntary donors has kept on increasing. In 2020, around 12.7units of blood were donated in India.</p>
                           </div>
                        </div>
                        <div class="col-md-6">
                           <div class="banner_img"><img src="images/banner-img.png"></div>
                        </div>
                     </div>
                  </div>
               </div>
               <a class="carousel-control-prev" href="#my_slider" role="button" data-slide="prev">
               <i class="fa fa-angle-left"></i>
               </a>
               <a class="carousel-control-next" href="#my_slider" role="button" data-slide="next">
               <i class="fa fa-angle-right"></i>
               </a>
            </div>
         </div>            
      </div>
      <!-- banner section end -->
      </div>
      <!-- header section end -->
      <!-- protect section start -->
      <div class="protect_section layout_padding">
         <div class="container">
            <div class="row">
               <div class="col-sm-12">
                  <h1 class="protect_taital">Why to Donate Blood?</h1>
            <p class="protect_text">
              Everyone has their own reasons for donating blood, but a few
              common ones include: Donating is a generous thing to do. It helps
              people in need, and it helps people in your community. When you
              give, others live. Donors, especially those who donate regularly,
              keep our nationâs blood supply stable. Although many people donate
              blood after disasters, blood is needed every day of the year.
              There is no substitute for blood. Donors provide the only supply
              of life-saving blood for those in need. Donating is simple, fast,
              and convenient. The donation process can take as little as 45
              minutes of your time, but can make a lifelong difference for
              someone else.
            </p>
               </div>
               
            </div>
            <div class="protect_section_2 layout_padding">
               <div class="row">
                  <div class="col-md-6">
                     <table class="table table-responsive  ">
                        <tbody>
                          <tr>
                            <th colspan="3" style="color:white;background-color:red;">Compatible Blood Type Donors</th>
                          </tr>
                          <tr>
                            <td><b>Blood Type</b></td>
                            <td><b>Donate Blood To</b></td>
                            <td><b>Receive Blood From</b></td>
                          </tr>
                          <tr>
                            <td><span style="color: #961e1b;"><b>A+</b></span></td>
                            <td>A+ AB+</td>
                            <td>A+ A- O+ O-</td>
                          </tr>
                          <tr>
                            <td><span style="color: #961e1b;"><b>O+</b></span></td>
                            <td>O+ A+ B+ AB+</td>
                            <td>O+ O-</td>
                          </tr>
                          <tr>
                            <td><span style="color: #961e1b;"><b>B+</b></span></td>
                            <td>B+ AB+</td>
                            <td>B+ B- O+ O-</td>
                          </tr>
                          <tr>
                            <td><span style="color: #961e1b;"><b>AB+</b></span></td>
                            <td>AB+</td>
                            <td>Everyone</td>
                          </tr>
                          <tr>
                            <td><span style="color: #961e1b;"><b>A-</b></span></td>
                            <td>A+ A- AB+ AB-</td>
                            <td>A- O-</td>
                          </tr>
                          <tr>
                            <td><span style="color: #961e1b;"><b>O-</b></span></td>
                            <td>Everyone</td>
                            <td>O-</td>
                          </tr>
                          <tr>
                            <td><span style="color: #961e1b;"><b>B-</b></span></td>
                            <td>B+ B- AB+ AB-</td>
                            <td>B- O-</td>
                          </tr>
                          <tr>
                            <td><span style="color: #961e1b;"><b>AB-</b></span></td>
                            <td>AB+ AB-</td>
                            <td>AB- A- B- O-</td>
                          </tr>
                        </tbody>
                      </table>
                  </div>
                  <div class="col-md-6">
                     <div class="image_2"><img src="images/img-2.png"></div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- protect section end -->
      <!-- about section start -->
      <div class="about_section layout_padding">
         <div class="container">
            <div class="row">
               <div class="col-md-6">
                  <div class="about_img"><img src="images/img-1.png"></div>
               </div>
               <div class="col-md-6">
                  <h1 class="about_taital">what is blood donation?</h1>
                  <p class="about_text">A blood donation occurs when a person voluntarily has blood drawn and used
                     for transfusions and/or made into biopharmaceutical medications by a process 
                     called fractionation (separation of whole blood components).
                      Donation may be of whole blood, or of specific components directly (apheresis).
                       Blood banks often participate in the collection process as well as the procedures that follow it.</p>
               </div>
            </div>
         </div>
      </div>
      <!-- about section end -->
      <!-- doctor section start -->
      <div class="doctors_section layout_padding">
         <div class="container-fluid">
            <div class="row">
               <div class="col-sm-12">
                  <div class="taital_main">
                     <div class="taital_left">
                        <div class="play_icon"><img src="images/play-icon.png"></div>
                     </div>
                     <div class="taital_right">
                        <h1 class="doctor_taital" style="color: black;"><b>What doctors say..</b></h1>
                        <p class="doctor_text" style="color: black;"><b>Blood transfusion saves lives and improves health, but many patients requiring transfusion do not have timely access to safe blood. Providing safe and adequate blood should be an integral part of every countryâs national health care policy and infrastructure.
                           WHO recommends that all activities related to blood collection, testing, processing, storage and distribution be coordinated at the national level through effective organization and integrated blood supply networks. The national blood system should be governed by national blood policy and legislative framework to promote uniform implementation of standards and consistency in the quality and safety of blood and blood products. </b></p>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- doctor section end -->
      <!-- news section start -->
      <div class="news_section layout_padding">
         <div class="container">
            <div id="main_slider" class="carousel slide" data-ride="carousel">
               <div class="carousel-inner">
                  <div class="carousel-item active">
                     <h1 class="news_taital">Latest News</h1>
                     <p class="news_text">Blood donations in India are conducted by organisations and hospitals through blood donation camps. Donors can also visit blood banks in hospitals to donate blood. Efforts by the government and advocacy groups over the years have helped bridge the gap between demand and supply. </p>
                     <div class="news_section_2 layout_padding">
                        <div class="box_main">
                           <div class="image_1"><img src="images/news-img.png"></div>
                           <h2 class="design_text">Blood Donation is Recommended</h2>
                           <p class="lorem_text">The regulatory framework for blood donation and blood bank management rests with the Central Drugs Standard Control Organisation, while technical bodies like the National Blood Transfusion Council and National AIDS Control Organisation formulate guidelines and recommendations for transfusion medicine and blood bank management. Challenges persist with regards to regulation of blood banks and transfusion practices as the sector is largely fragmented with uneven distribution of blood banks and supply of blood in parts of the country.</p>
                        </div>
                     </div>
                  </div>
                  <div class="carousel-item">
                    <h1 class="news_taital">Latest News</h1>
                     <p class="news_text">Blood donations in India are conducted by organisations and hospitals through blood donation camps. Donors can also visit blood banks in hospitals to donate blood. Efforts by the government and advocacy groups over the years have helped bridge the gap between demand and supply. </p>
                     <div class="news_section_2 layout_padding">
                        <div class="box_main">
                           <div class="image_1"><img src="images/blooddonation.jpg"></div>
                           <h2 class="design_text">Eat And Avoid These Foods Before Donating Blood</h2>
                           <p class="lorem_text"> Along with iron rich food items, one should also take care of the vitamin C intake in daily diet.
                               Your plate will be complete if you include Vitamin C rich foods such as oranges, pineapple, lemon, capsicum, green leafy vegetables, tomato and kiwi. Vitamin C plays an vital role in the absorption of iron in the body.
                               So, it is also essential to consume foods that have good amount of vitamin C before donating blood. 
                               Along with drinking water, it is important to increase the intake of homemade fresh fruit or vegetable juices, 
                               especially before 48 hours of blood donation. </p>
                        </div>
                     </div>
                  </div>
                  <div class="carousel-item">
                    <h1 class="news_taital">Latest News</h1>
                     <p class="news_text">Blood donations in India are conducted by organisations and hospitals through blood donation camps. Donors can also visit blood banks in hospitals to donate blood. Efforts by the government and advocacy groups over the years have helped bridge the gap between demand and supply.</p>
                     <div class="news_section_2 layout_padding">
                        <div class="box_main">
                           <div class="image_1"><img src="images/Bdonation.png"></div>
                           <h2 class="design_text">Centre preps for nation-wide blood donation drive to celebrate Prime Minister's birthday</h2>

                              <p class="lorem_text">A massive nationwide blood donation drive will be launched by the health ministry on PM Narendra Modi's birthday on September 17 to encourage people to donate blood.

                                 This will address the gap between demand and supply of blood in the country, an official said. Ministry officials said the government is also ramping efforts to ensure each of the nine lakh TB patients who have consented to be cared for by a donor is adopted before October 2.
                                 
                                 Read more at:
                                 https://economictimes.indiatimes.com/news/india/centre-preps-for-nation-wide-blood-donation-drive-to-celebrate-prime-ministers-birthday/articleshow/94164231.cms?utm_source=contentofinterest&utm_medium=text&utm_campaign=cppst     </div>
                     </div>      
                  </div>
               </div>
               <a class="carousel-control-prev" href="#main_slider" role="button" data-slide="prev">
               <i class="fa fa-angle-left"></i>
               </a>
               <a class="carousel-control-next" href="#main_slider" role="button" data-slide="next">
               <i class="fa fa-angle-right"></i>
               </a>
            </div>
            </div>
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

                        
                     </div>
                  <div class="col-lg-3 col-sm-6">
                     <h2 class="useful_text">Contact Us</h2>
                     <div class="location_text">
                        <ul>
                           <li>
                              <a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i>
                              <span class="padding_15">Location</span></a>
                           </li>
                           <li>
                              <a href="#"><i class="fa fa-phone" aria-hidden="true"></i>
                              <span class="padding_15">Call +01 1234567890</span></a>
                           </li>
                           <li>
                              <a href="#"><i class="fa fa-envelope" aria-hidden="true"></i>
                              <span class="padding_15">lifesaver@gmail.com</span></a>
                           </li>
                        </ul>
                     </div>
                  </div>
                  <div class="col-lg-3 col-sm-6">
                     <h2 class="useful_text">countrys</h2>
                     <div class="map_image"><img src="images/map-bg.png"></div>
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
                  <p class="copyright_text">Â© 2020 All Rights Reserved.<a href="https://html.design">Life Saver</a></p>
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
         $(document).ready(function(){
         $(".fancybox").fancybox({
         openEffect: "none",
         closeEffect: "none"
         });
              
         $(".zoom").hover(function(){
              
         $(this).addClass('transition');
         }, function(){
              
         $(this).removeClass('transition');
         });
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