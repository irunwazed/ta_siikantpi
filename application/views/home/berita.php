<!DOCTYPE html>
<html lang="en">
<head>
	<?php
	foreach ($seo->result_array() as $value) {
		$tittle = $value['tittle'];
		$keyword = $value['keyword'];
		$description = $value['description'];
	}
	?>
	<?php
							foreach ($logo->result_array() as $value) {
								$logo = $value['gambar'];
							}?>
	<link rel="icon" href="<?php echo base_url();?>images/logo/<?php echo $logo;?>">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="keyword" content="<?php echo $keyword;?>">
    <meta name="description" content="<?php echo $description;?>">
    <meta name="author" content="">
    <title>Home | <?php echo $tittle;?></title>
    <link href="<?php echo base_url();?>asset/css/bootstrap.min.css" rel="stylesheet">
    <link href="<?php echo base_url();?>asset/css/font-awesome.min.css" rel="stylesheet">
    <link href="<?php echo base_url();?>asset/css/prettyPhoto.css" rel="stylesheet">
    <link href="<?php echo base_url();?>asset/css/price-range.css" rel="stylesheet">
    <link href="<?php echo base_url();?>asset/css/animate.css" rel="stylesheet">
	<link href="<?php echo base_url()?>/asset/css/main.css" rel="stylesheet">
	<link href="<?php echo base_url();?>/asset/css/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="<?php echo base_url();?>asset/js/html5shiv.js"></script>
    <script src="<?php echo base_url();?>asset/js/respond.min.js"></script>
    <![endif]-->       
    <!-- <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png"> -->
</head><!--/head-->

<body>
	<header id="header"><!--header-->
		<div class="header_top"><!--header_top-->
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<?php 
						foreach ($kontak->result_array() as $value) {
							$phone = $value['phone'];
							$email = $value['email'];
						}
						?>
						<div class="contactinfo">
							<ul class="nav nav-pills">
								<li><a href="#"><i class="fa fa-phone"></i> <?php echo $phone ?></a></li>
								<li><a href="#"><i class="fa fa-envelope"></i> <?php echo $email ?></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header_top-->
		
		<div class="header-middle"><!--header-middle-->
			<div class="container">
				<div class="row">
					<div class="col-sm-4">
						<div class="logo pull-left">
						
							<a href="<?php echo base_url();?>"><img src="<?php echo base_url();?>images/logo/<?php echo $logo;?>" alt="SI IKAN" /></a>
						</div>
						<div class="btn-group pull-right">
							
							
							
						</div>
					</div>
				</div>
			</div>
		</div><!--/header-middle-->
	
	
		
		<div class="header-bottom"><!--header-bottom-->
			<div class="container">
				<div class="row">
					<div class="col-sm-10">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
						</div>
						<div class="mainmenu pull-left">
							<ul class="nav navbar-nav collapse navbar-collapse">
								<li><a href="<?php echo base_url();?>" class="active">Home</a></li>
								<li><a href="<?php echo base_url();?>home/tentang_kami"> Tentang Kami</a></li>
								<li><a href="<?php echo base_url();?>home/cara_belanja"> Cara Belanja</a></li>
								<li><a href="<?php echo base_url();?>home/hubungi_kami"> Hubungi Kami</a></li>
								<li><a href="<?php echo base_url();?>home/keranjang"> Keranjang Belanja</a></li>
								<li><a href="<?php echo base_url();?>home/berita">Berita</a></li>	
							</ul>
						</div>
					</div>
					<div class="col-sm-2">
						<?php echo form_open('home/cari');?>
						<div class="search_box pull-right">
							<input type="text" name="cari" placeholder="Search"/>
						</div>
						<?php echo form_close();?>
					</div>
				</div>
			</div>
		</div><!--/header-bottom-->
	</header><!--/header-->

	
	
	<section id="slider"><!--slider-->
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div id="slider-carousel" class="carousel slide" data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
							<li data-target="#slider-carousel" data-slide-to="1"></li>
							<li data-target="#slider-carousel" data-slide-to="2"></li>
						</ol>
						
						<div class="carousel-inner">
							
							<?php
							$terakhir = $this->db->query("select max(id_slider) as terakhir from tbl_slider where status='1' ");
								foreach ($terakhir->result_array() as $value) {
									$t = $value['terakhir'];
								}
							?>
							<?php
							foreach ($slider->result_array() as $value) { 

								if ($value['id_slider']==$t) { ?>
								<div class="item active">
									<div class="col-sm-6">
										<h1><span>SMART TPI MOROWALI</span></h1>
										<h2><?php echo $value['tittle'];?></h2>
										<p><?php echo strip_tags(substr($value['description'],0,200));?></p>
										<a href="<?php echo base_url();?>home/info/<?php echo $value['id_slider'];?>/<?php echo $value['tittle'];?>" class="btn btn-default get"> Read More</a>
									</div>
									<div class="col-sm-6">
										<img src="<?php echo base_url();?>images/slider/<?php echo $value['gambar'];?>" class="girl img-responsive" alt="<?php echo $value['tittle'];?>" />
									</div>
								</div>

								<?php
								}
								else { ?>
								<div class="item">
									<div class="col-sm-6">
										<h1><span>SMART TPI MOROWALI</span></h1>
										<h2><?php echo $value['tittle'];?></h2>
										<p><?php echo strip_tags(substr($value['description'],0,200));?></p>
										<a href="<?php echo base_url();?>home/info/<?php echo $value['id_slider'];?>" class="btn btn-default get"> Read More</a>
									</div>
									<div class="col-sm-6">
										<img src="<?php echo base_url();?>images/slider/<?php echo $value['gambar'];?>" class="girl img-responsive" alt="<?php echo $value['tittle'];?>" />
										
									</div>
								</div>
								<?php
								}

							?>
							
							<?php
							}
							?>
							
							
						</div>
						
						<a href="#slider-carousel" class="left control-carousel hidden-xs" data-slide="prev">
							<i class="fa fa-angle-left"></i>
						</a>
						<a href="#slider-carousel" class="right control-carousel hidden-xs" data-slide="next">
							<i class="fa fa-angle-right"></i>
						</a>
					</div>
					
				</div>
			</div>
		</div>
	</section><!--/slider-->
	
      
				<div class="features_items"><!--Berita Lainya-->
						<h2 class="title text-center">Berita Lainya</h2>
						
						<?php
						foreach ($berita->result_array() as $value) { ?>
						<div class="col-xs-4 col-sm-2">
							<div class="product-image-wrapper">
								<div class="single-products">
										<div class="productinfo text-center">
										<img src="<?php echo base_url();?>images/slider/<?php echo $value['gambar'];?>" alt="" />
										<a href="<?php echo base_url();?>home/info/<?php echo $value['id_slider'];?>" ><h5><u><?php echo $value['tittle'];?></u></h5></a>
										</div>
									
								</div>
							</div>
						</div>
						<?php
						}
						?>
					
					</div><!--Berita Lainya-->
	
	<footer id="footer"><!--Footer-->
	
		
		
		
		<div class="footer-bottom">
			<div class="container">
				<div class="row">
					<p class="pull-left">Copyright © 2021 Informatika Untad. All rights reserved.</p>
					
				</div>
			</div>
		</div>
		
	</footer><!--/Footer-->
	

  
    <script src="<?php echo base_url();?>asset/js/jquery.js"></script>
	<script src="<?php echo base_url();?>asset/js/bootstrap.min.js"></script>
	<script src="<?php echo base_url();?>asset/js/jquery.scrollUp.min.js"></script>
	<script src="<?php echo base_url();?>asset/js/price-range.js"></script>
    <script src="<?php echo base_url();?>asset/js/jquery.prettyPhoto.js"></script>
    <script src="<?php echo base_url();?>asset/js/main.js"></script>
</body>
</html>