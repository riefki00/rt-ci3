<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>Sistem Informasi RT 005</title>
  <meta content="" name="description">
  <meta content="" name="keywords">
  <link href="assets/img/logo_gundar.png" rel="shorcut icon">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
  <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  <link href="assets/css/style.css" rel="stylesheet">
</head>
<body>
  <header id="header" class="fixed-top">
    <div class="container d-flex align-items-center">
      <h1 class="logo me-auto"><a href="<?= base_url() ?>">RT 005</a></h1>
      <nav id="navbar" class="navbar order-last order-lg-0">
        <ul>
          <li><a class="active" href="<?= base_url() ?>">BERANDA</a></li>
          <li><a href="<?= base_url('admin/dashboard') ?>">DASHBOARD</a></li>
          <li><a href="<?= base_url('auth') ?>">LOGIN</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav>
      <a href="<?= base_url('register') ?>" class="get-started-btn">DAFTAR</a>
    </div>
  </header>
  <section id="hero" class="d-flex justify-content-center align-items-center">
    <div class="container position-relative" data-aos="zoom-in" data-aos-delay="100">
      <h1>Selamat Datang di Aplikasi RT 005</h1>
      <h2>Aplikasi laporan keuangan dan informasi RT 005 Pondok Kelapa Jakarta Timur</h2>
      <a href="<?= base_url('register') ?>" class="btn-get-started">Get Started</a>
    </div>
  </section>
  <div id="preloader"></div>
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>
  <script src="assets/vendor/purecounter/purecounter.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/js/main.js"></script>
  <main id="main">
<section id="popular-courses" class="courses">
  <div class="container" data-aos="fade-up">
    <div class="section-title">
      <h2>BERITA</h2>
      <p>Berita & Pengumuman</p>
    </div>
    <div class="row" data-aos="zoom-in" data-aos-delay="100">
      <?php foreach ($humas_berita as $hb) : ?>
      <div class="col-lg-4 col-md-6 d-flex align-items-stretch">
        <div class="course-item">
          <img src="<?php echo base_url() . '/assets/img/'. $hb->gambar; ?>" width="300" height="300">
          <div class="course-content">
            <h3><a href="course-details.html"><?= $hb->judul ?></a></h3>
            <p><?= $hb->berita ?></p>
            <div class="trainer d-flex justify-content-between align-items-center">
              <div class="trainer-profile d-flex align-items-center">
                <img src="assets/img/trainers/trainer-1.jpg" class="img-fluid" alt="">
                <span><?= $hb->id_admin ?></span>
              </div>
              <div class="trainer-rank d-flex align-items-center">
                <td><?= $hb->tgl ?></td>
              </div>
            </div>
          </div>
        </div>
      </div>
      <?php endforeach; ?>
    </div>
    <section id="popular-courses" class="courses">
  <div class="container" data-aos="fade-up">
    <div class="section-title">
      <h2>KEUANGAN</h2>
      <p>Rekapitulasi Finansial RT</p>
    </div>
    <div class="row">
<div class="col-xl-6 col-md-6 mb-4">
    <div class="card border-left-primary shadow h-100 py-2">
        <div class="card-body">
            <div class="row no-gutters align-items-center">
                <div class="col mr-2">
                    <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                        Total Pemasukkan</div>
                    <div class="h5 mb-0 font-weight-bold text-gray-800">Rp. <?= $totalm ?></div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="col-xl-6 col-md-6 mb-4">
    <div class="card border-left-success shadow h-100 py-2">
        <div class="card-body">
            <div class="row no-gutters align-items-center">
                <div class="col mr-2">
                    <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                      Total Pengeluaran</div>
                    <div class="h5 mb-0 font-weight-bold text-gray-800">Rp. <?= $totalk ?></div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row">
</section>
</main>
</footer>
</body>
<script src="<?= base_url() ?>assets/vendor/jquery/jquery.min.js"></script>
<script src="<?= base_url() ?>assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="<?= base_url() ?>assets/vendor/jquery-easing/jquery.easing.min.js"></script>
<script src="<?= base_url() ?>assets/js/sb-admin-2.min.js"></script>
<script src="<?= base_url() ?>assets/vendor/chart.js/Chart.min.js"></script>
<script src="<?= base_url() ?>assets/js/demo/chart-area-demo.js"></script>
<script src="<?= base_url() ?>assets/js/demo/chart-pie-demo.js"></script>
</html>