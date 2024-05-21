<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
<!--  <title>Material Design Bootstrap</title>-->
  <title><#if html_title?has_content>${html_title}</#if></title>
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
  <!-- Bootstrap core CSS -->
  <link href="/b2bstatic/css/bootstrap.min.css" rel="stylesheet">
  <!-- Material Design Bootstrap -->
  <link href="/b2bstatic/css/mdb.min.css" rel="stylesheet">
  <!-- Your custom styles (optional) -->
  <link href="/b2bstatic/css/style.min.css" rel="stylesheet">
  <link href="/b2bstatic/css/bootstrap-shopping-carts.min.css" rel="stylesheet">
  <style type="text/css">
    html,
    body,
    header,
    .carousel {
      height: 60vh;
    }

    @media (max-width: 740px) {

      html,
      body,
      header,
      .carousel {
        height: 100vh;
      }
    }

    @media (min-width: 800px) and (max-width: 850px) {

      html,
      body,
      header,
      .carousel {
        height: 100vh;
      }
    }

  </style>
</head>

<body>
<!-- Navbar -->
<nav class="navbar fixed-top navbar-expand-lg navbar-light white scrolling-navbar">
  <div class="container">

    <!-- Brand -->
    <a class="navbar-brand waves-effect" href="/b2b">
      <strong class="blue-text">Customer Portal</strong>
    </a>

    <!-- Collapse -->
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <!-- Links -->
    <div class="collapse navbar-collapse" id="navbarSupportedContent">

      <!-- Left -->
      <ul class="navbar-nav mr-auto">
        <li class="nav-item active">
          <a class="nav-link waves-effect" href="/b2b">Home
            <span class="sr-only">(current)</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link waves-effect" href="https://mdbootstrap.com/docs/jquery/" target="_blank">About MDB</a>
        </li>
        <li class="nav-item">
          <a class="nav-link waves-effect" href="https://mdbootstrap.com/docs/jquery/getting-started/download/"
             target="_blank">Free download</a>
        </li>
        <li class="nav-item">
          <a class="nav-link waves-effect" href="https://mdbootstrap.com/education/bootstrap/" target="_blank">Free
            tutorials</a>
        </li>
      </ul>

      <!-- Right -->
      <ul class="navbar-nav nav-flex-icons">
        <li class="nav-item">
          <a class="nav-link waves-effect" href="/b2b/cart">
            <span class="badge red z-depth-1 mr-1"> 1 </span>
            <i class="fas fa-shopping-cart"></i>
            <span class="clearfix d-none d-sm-inline-block"> Cart </span>
          </a>
        </li>
        <li class="nav-item">
          <a href="my-account" class="nav-link border border-light rounded waves-effect">
            <i class="far fa-user mr-2"></i>${ec.user.userAccount.userFullName}(${parentOrg.organizationName!})
          </a>
        </li>
      </ul>

    </div>

  </div>
</nav>
<!-- Navbar -->

<#if (SHOW_CAROUSEL!'N') == 'Y'>
<!--Carousel Wrapper-->
<div id="carousel-example-1z" class="carousel slide carousel-fade pt-4" data-ride="carousel">

  <!--Indicators-->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-1z" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-1z" data-slide-to="1"></li>
    <li data-target="#carousel-example-1z" data-slide-to="2"></li>
  </ol>
  <!--/.Indicators-->

  <!--Slides-->
  <div class="carousel-inner" role="listbox">

    <!--First slide-->
    <div class="carousel-item active">
      <div class="view" style="background-image: url('https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/8-col/img%282%29.jpg'); background-repeat: no-repeat; background-size: cover;">

        <!-- Mask & flexbox options-->
        <div class="mask rgba-black-strong d-flex justify-content-center align-items-center">

          <!-- Content -->
          <div class="text-center white-text mx-5 wow fadeIn">
            <h1 class="mb-4">
              <strong>Learn Bootstrap 4 with MDB</strong>
            </h1>

            <p>
              <strong>Best & free guide of responsive web design</strong>
            </p>

            <p class="mb-4 d-none d-md-block">
              <strong>The most comprehensive tutorial for the Bootstrap 4. Loved by over 500 000 users. Video and
                written versions
                available. Create your own, stunning website.</strong>
            </p>

            <a target="_blank" href="https://mdbootstrap.com/education/bootstrap/" class="btn btn-outline-white btn-lg">Start
              free tutorial
              <i class="fas fa-graduation-cap ml-2"></i>
            </a>
          </div>
          <!-- Content -->

        </div>
        <!-- Mask & flexbox options-->

      </div>
    </div>
    <!--/First slide-->

    <!--Second slide-->
    <div class="carousel-item">
      <div class="view" style="background-image: url('https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/8-col/img%283%29.jpg'); background-repeat: no-repeat; background-size: cover;">

        <!-- Mask & flexbox options-->
        <div class="mask rgba-black-strong d-flex justify-content-center align-items-center">

          <!-- Content -->
          <div class="text-center white-text mx-5 wow fadeIn">
            <h1 class="mb-4">
              <strong>Learn Bootstrap 4 with MDB</strong>
            </h1>

            <p>
              <strong>Best & free guide of responsive web design</strong>
            </p>

            <p class="mb-4 d-none d-md-block">
              <strong>The most comprehensive tutorial for the Bootstrap 4. Loved by over 500 000 users. Video and
                written versions
                available. Create your own, stunning website.</strong>
            </p>

            <a target="_blank" href="https://mdbootstrap.com/education/bootstrap/" class="btn btn-outline-white btn-lg">Start
              free tutorial
              <i class="fas fa-graduation-cap ml-2"></i>
            </a>
          </div>
          <!-- Content -->

        </div>
        <!-- Mask & flexbox options-->

      </div>
    </div>
    <!--/Second slide-->

    <!--Third slide-->
    <div class="carousel-item">
      <div class="view" style="background-image: url('https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/8-col/img%285%29.jpg'); background-repeat: no-repeat; background-size: cover;">

        <!-- Mask & flexbox options-->
        <div class="mask rgba-black-strong d-flex justify-content-center align-items-center">

          <!-- Content -->
          <div class="text-center white-text mx-5 wow fadeIn">
            <h1 class="mb-4">
              <strong>Learn Bootstrap 4 with MDB</strong>
            </h1>

            <p>
              <strong>Best & free guide of responsive web design</strong>
            </p>

            <p class="mb-4 d-none d-md-block">
              <strong>The most comprehensive tutorial for the Bootstrap 4. Loved by over 500 000 users. Video and
                written versions
                available. Create your own, stunning website.</strong>
            </p>

            <a target="_blank" href="https://mdbootstrap.com/education/bootstrap/" class="btn btn-outline-white btn-lg">Start
              free tutorial
              <i class="fas fa-graduation-cap ml-2"></i>
            </a>
          </div>
          <!-- Content -->

        </div>
        <!-- Mask & flexbox options-->

      </div>
    </div>
    <!--/Third slide-->

  </div>
  <!--/.Slides-->

  <!--Controls-->
  <a class="carousel-control-prev" href="#carousel-example-1z" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carousel-example-1z" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
  <!--/.Controls-->

</div>
<!--/.Carousel Wrapper-->
</#if>
<!--Main layout-->
<main <#if (SHOW_CAROUSEL!'N') != 'Y'>class="mt-5 pt-4"</#if>>
  <div class="container">