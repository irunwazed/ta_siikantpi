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
	<link href="<?php echo base_url();?>asset/css/responsive.css" rel="stylesheet">
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
					<div class="col-sm-6">
						<div class="social-icons pull-right">
							<?php 
							foreach ($sosial_media->result_array() as $value) {
								$tw = $value['tw'];
								$fb = $value['fb'];
								$gp = $value['gp'];
							}
							?>
							<ul class="nav navbar-nav">
								<li><a href="<?php echo $fb;?>"><i class="fa fa-facebook"></i></a></li>
								<li><a href="<?php echo $tw;?>"><i class="fa fa-envelope"></i></a></li>
								<li><a href="<?php echo $gp;?>"><i class="fa fa-phone"></i></a></li>
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
							
							<a href="<?php echo base_url();?>"><img src="<?php echo base_url();?>images/logo/<?php echo $logo;?>" alt="" /></a>
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
					<div class="col-sm-9">
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
					<div class="col-sm-3">
						
					</div>
				</div>
			</div>
		</div><!--/header-bottom-->
	</header><!--/header-->

	
	
	
	
	<section>
		<div class="container">
			<div class="row">
				<div class="col-sm-3">
					<div class="left-sidebar">
					<h2>Daftar</h2>
						<div class="panel-group category-products" id="accordian"><!--category-productsr-->
						<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordian" href="#mens">
											<span class="badge pull-right"><i class="fa fa-plus"></i></span>
											Kategori
										</a>
									</h4>
								</div>
								<div id="mens" class="panel-collapse collapse">
									<div class="panel-body">
									<?php
										foreach ($kategori->result_array() as $value) {?>
										<div class="panel panel-default">
										<div class="panel-heading">
											<h4 class="panel-title"><a href="<?php echo base_url();?>home/kategori/<?php echo $value['id_kategori'];?>"><?php echo $value['nama_kategori'];?></a></h4>
										</div>
										</div>		
										<?php
											}
											?>
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordian" href="#menss">
											<span class="badge pull-right"><i class="fa fa-plus"></i></span>
											Jenis Ikan
										</a>
									</h4>
								</div>
								<div id="menss" class="panel-collapse collapse">
									<div class="panel-body">
									<?php
										foreach ($brand->result_array() as $value) {?>
										<div class="panel panel-default">
										<div class="panel-heading">
											<h4 class="panel-title"><a href="<?php echo base_url();?>home/brand/<?php echo $value['id_brand'];?>"><?php echo $value['nama_brand'];?></a></h4>
										</div>
										</div>		
										<?php
											}
											?>
									</div>
								</div>
							</div>

							<div class="panel panel-default">
								<div class="panel-heading">
									<div>
										<?php echo form_open('home/cari');?>
										<div class="search_box pull-left">
											<input style="font-size: medium;" type="text" name="cari" placeholder="Cari"/>
										</div>
										<?php echo form_close();?>
									</div>
								</div>
							</div>
							
		
						</div><!--/category-products-->	
					</br>

						<!--Jasa Pengiriman
						<div class="brands_products">Jasa Pengiriman
							<h2>Pengiriman</h2>
							<div class="brands-name">
								<ul class="nav nav-pills nav-stacked">
								<?php
									foreach ($jasapengiriman->result_array() as $value) { ?>
									<li><a href=""> <span class="pull-right"></span>
										<img src="<?php echo base_url();?>images/jasapengiriman/<?php echo $value['gambar'];?>">
										</a>
									</li>
									
									<?php
									}
									?>
								</ul>
							</div>
						</div>-->
	
					</div>
				</div>
				
				<div class="col-sm-9 padding-right">
					<div class="features_items"><!--features_items-->
						<h2 class="title text-center">Features Producs</h2>
						<h4><?php foreach ($nama_brand->result_array() as $value) {
							echo $value['nama_brand'];
						}
						?>

						</h4>
						
						<?php
						if ($produk_brand->num_rows()>0) {

							foreach ($produk_brand->result_array() as $value) { 
							$no;
							?>
						<div class="col-xs-6">
								<div class="single-products">
								<div class="productinfo text-center">
													<img width="140" height="140" src="<?php echo base_url();?>images/produk/<?php echo $value['gambar'];?>" alt="" />
													<h5>Rp.<?php echo $this->cart->format_number($value['harga']);?></h5>
													<a href="<?php echo base_url();?>home/produk/<?php echo $value['id_produk'];?>"><h5> <?php echo $value['nama_brand'];?></h5></a>
													<?php
														date_default_timezone_set('Asia/Jakarta'); 
														$a =date('Y-m-d');
														if($value['stok']<=0||$a>=$value['tanggal']){
														echo '<h5 class="btn btn-danger">Stok Habis</h5>';
													}
													else{
														echo '<h5><a href="'.base_url();?>home/produk/<?php echo $value['id_produk'].'"class="btn btn-primary">Detail</a></h5>';
													}
													?>
													</div>
									
								</div>
						</div>
						<?php
						
	 					
						}
						

						}
						else {
							echo "Tidak Ada Products";
						}
						?>
						

						
						
						
						
						
						
						
					</div><!--features_items-->
					
					
						
							<?php
								echo $paginator;
							?>
						
						
						
					
					
					
				</div>
			</div>
		</div>
	</section>
	
	<footer id="footer"><!--Footer-->
		<div class="footer-top">
			<div class="container">
				<div class="row">
					<div class="col-sm-2">
						<div class="companyinfo">
						<h2><span>SMART TPI MOROWALI</span></h2>
							<!-- <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,sed do eiusmod tempor</p> -->
						</div>
					</div>
					<div class="col-sm-3">
						<div class="address">
							
						</div>
					</div>
				</div>
			</div>
		</div>
		
		
		
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