﻿<%@ Page Language="C#" Inherits="ASPnetETicaret.Default" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags --> 
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Cutie-Pet Shop Admin Panel</title>
  <!-- base:css -->
  <link rel="stylesheet" href="regal/vendors/mdi/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="regal/vendors/feather/feather.css">
  <link rel="stylesheet" href="regal/vendors/base/vendor.bundle.base.css">
  <!-- endinject -->
  <!-- plugin css for this page -->
  <link rel="stylesheet" href="regal/vendors/flag-icon-css/css/flag-icon.min.css"/>
  <link rel="stylesheet" href="regal/vendors/font-awesome/css/font-awesome.min.css">
  <link rel="stylesheet" href="regal/vendors/jquery-bar-rating/fontawesome-stars-o.css">
  <link rel="stylesheet" href="regal/vendors/jquery-bar-rating/fontawesome-stars.css">
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="regal/css/style.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="regal/images/favicon.png" />
</head>
<body>
  <div class="container-scroller">
    <!-- partial:partials/_navbar.html -->
    <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
      <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
        <a class="navbar-brand brand-logo" href="#"><img src="regal/images/logo.svg" alt="logo"/></a>
        <a class="navbar-brand brand-logo-mini" href="#"><img src="regal/images/logo-mini.svg" alt="logo"/></a>
      </div>
      <div class="navbar-menu-wrapper d-flex align-items-center justify-content-end">
        <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
          <span class="icon-menu"></span>
        </button>
       
        <ul class="navbar-nav navbar-nav-right">
           
          <li class="nav-item dropdown d-flex">
            <a class="nav-link count-indicator dropdown-toggle d-flex justify-content-center align-items-center" id="messageDropdown" href="#" data-toggle="dropdown">
              <i class="icon-air-play mx-0"></i>
            </a>
            <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="messageDropdown">
              <p class="mb-0 font-weight-normal float-left dropdown-header">Mesajlar</p>
              <a class="dropdown-item preview-item">
                <div class="preview-thumbnail">
                    <img src="regal/images/faces/profile.png" alt="image" class="profile-pic">
                </div>
                <div class="preview-item-content flex-grow">
                  <h6 class="preview-subject ellipsis font-weight-normal">Selin Çağlar
                  </h6>
                  <p class="font-weight-light small-text text-muted mb-0">
                    Toplantı iptal
                  </p>
                </div>
              </a>
              <a class="dropdown-item preview-item">
                <div class="preview-thumbnail">
                    <img src="regal/images/faces/face2.jpg" alt="image" class="profile-pic">
                </div>
                <div class="preview-item-content flex-grow">
                  <h6 class="preview-subject ellipsis font-weight-normal">Tim Cook
                  </h6>
                  <p class="font-weight-light small-text text-muted mb-0">
                    Kargolar yolda
                  </p>
                </div>
              </a>
              <a class="dropdown-item preview-item">
                <div class="preview-thumbnail">
                    <img src="regal/images/faces/face3.jpg" alt="image" class="profile-pic">
                </div>
                <div class="preview-item-content flex-grow">
                  <h6 class="preview-subject ellipsis font-weight-normal"> Johnson
                  </h6>
                  <p class="font-weight-light small-text text-muted mb-0">
                    Siparişlerin durumu nedir?
                  </p>
                </div>
              </a>
            </div>
          </li>
          <li class="nav-item dropdown d-flex mr-4 ">
            <a class="nav-link count-indicator dropdown-toggle d-flex align-items-center justify-content-center" id="notificationDropdown" href="#" data-toggle="dropdown">
              <i class="icon-cog"></i>
            </a>
            <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="notificationDropdown">
              <p class="mb-0 font-weight-normal float-left dropdown-header">Ayarlar</p>
              <a class="dropdown-item preview-item">               
                  <i class="icon-head"></i> Profil
              </a>
              <a class="dropdown-item preview-item">
                  <i class="icon-inbox"></i> Çıkış Yap
              </a>
            </div>
          </li>
          <li class="nav-item dropdown mr-4 d-lg-flex d-none">
            <a class="nav-link count-indicatord-flex align-item s-center justify-content-center" href="#">
              <i class="icon-grid"></i>
            </a>
          </li>
        </ul>
        <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
          <span class="icon-menu"></span>
        </button>
      </div>
    </nav>
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
      <!-- partial:partials/_sidebar.html -->
  <nav class="sidebar sidebar-offcanvas" id="sidebar">
        <div class="user-profile">
          <div class="user-image">
            <img src="regal/images/faces/profile.png">
          </div>
          <div class="user-name">
             Selin Çağlar
          </div>
          <div class="user-designation">
              Co-Founder
          </div>
        </div>
        <ul class="nav">
          <li class="nav-item">
            <a class="nav-link" href="Dash.aspx">
              <i class="icon-box menu-icon"></i>
              <span class="menu-title"> Dashboard</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
              <i class="icon-disc menu-icon"></i>
              <span class="menu-title">Ürünler</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="ui-basic">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="Urunler.aspx">Ürün Ekle</a></li>
                <li class="nav-item"> <a class="nav-link" href="UrunListele.aspx">Ürün Listele</a></li>
              </ul>
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="Siparisler.aspx">
              <i class="icon-file menu-icon"></i>
              <span class="menu-title">Siparişler</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="Musteriler.aspx">
              <i class="icon-pie-graph menu-icon"></i>
              <span class="menu-title">Müşteriler</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="Kategoriler.aspx">
              <i class="icon-command menu-icon"></i>
              <span class="menu-title">Kategoriler</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="Hakkimizda.aspx">
              <i class="icon-help menu-icon"></i>
              <span class="menu-title">Hakkımızda</span>
            </a>
          </li>
         
        </ul>
      </nav>
      <!-- partial -->
      <div class="main-panel">
        <div class="content-wrapper">
          <div class="row">
            <div class="col-sm-12 mb-4 mb-xl-0">
              <h4 class="font-weight-bold text-dark">Cutie-PET A.Ş.</h4>
              <p class="font-weight-normal mb-2 text-muted">Since 2019</p>
            </div>
          </div>
          <div class="row mt-3">
            <div class="col-xl-3 flex-column d-flex grid-margin stretch-card">
              <div class="row flex-grow">
                <div class="col-sm-12 grid-margin stretch-card">
                    <div class="card">
                      <div class="card-body">
                          <h4 class="card-title">Müşteriler</h4>
                          <p>Kayıtlı Müşteri Sayısı</p>
                          <h4 class="text-dark font-weight-bold mb-2">43,981</h4>
                      </div>
                    </div>
                </div>
                <div class="col-sm-12 stretch-card">
                    <div class="card">
                      <div class="card-body">
                          <h4 class="card-title">Siparişler</h4>
                          <p>Alınan sipariş sayısı</p>
                          <h4 class="text-dark font-weight-bold mb-2">55,543</h4>
                      </div>
                    </div>
               </div>
              </div>
            </div>
            <div class="col-xl-9 d-flex grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                      <h4 class="card-title">Genel Özet</h4>
                      <div class="row">
                        <div class="col-lg-5">
                          <p>2022 yılı genel alım satım özetleri</p>
                        </div>
                        <div class="col-lg-7">
                          <div class="chart-legends d-lg-block d-none" id="chart-legends"></div>
                        </div>
                      </div>
                      <div class="row">
                          <div class="col-sm-12">
                               <h4 class="text-dark font-weight-bold mb-2">55,543</h4>
                          </div>
                      </div>
                        
                    </div>
                  </div>
            </div>
          </div>
    
        
        </div>
        <!-- content-wrapper ends -->
        <!-- partial:partials/_footer.html -->
        <footer class="footer">
          <div class="d-sm-flex justify-content-center justify-content-sm-between">
            <span class="text-muted d-block text-center text-sm-left d-sm-inline-block">Copyright © Selin Çağlar 2022</span>
            <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center"> Profesyonel <a href="https://www.cutiepetshop.com.tr/" target="_blank">Pet Bakım Ürünleri</a> - Cutie-Pet A.Ş.</span>
          </div>
          <span class="text-muted d-block text-center text-sm-left d-sm-inline-block mt-2">Distributed By: <a href="https://www.cutiepetshop.com.tr/" target="_blank">Cutie-Pet A.Ş.</a></span> 
        </footer>
        
        <!-- partial -->
      </div>
      <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->

  <!-- base:js -->
  <script src="regal/vendors/base/vendor.bundle.base.js"></script>
  <!-- endinject -->
  <!-- Plugin js for this page-->
  <!-- End plugin js for this page-->
  <!-- inject:js -->
  <script src="regal/js/off-canvas.js"></script>
  <script src="regal/js/hoverable-collapse.js"></script>
  <script src="regal/js/template.js"></script>
  <!-- endinject -->
  <!-- plugin js for this page -->
  <script src="regal/vendors/chart.js/Chart.min.js"></script>
  <script src="regal/vendors/jquery-bar-rating/jquery.barrating.min.js"></script>
  <!-- End plugin js for this page -->
  <!-- Custom js for this page-->
  <script src="regal/js/dashboard.js"></script>
  <!-- End custom js for this page-->
</body>

</html>

