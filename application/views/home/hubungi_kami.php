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
							$alamat = $value['alamat'];
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
							
							<a href="<?php echo base_url();?>"><img src="<?php echo base_url();?>images/logo/<?php echo $logo;?>" alt="Adriano MX Online Shop" /></a>
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
					
				</div>
			</div>
		</div><!--/header-bottom-->
	</header><!--/header-->
	
	
	<div id="contact-page" class="container">
    	<div class="bg">
	    	  	
    		<div class="row">  	
	    		<div class="col-sm-8">
	    			<div class="contact-form">
	    				<h2 class="title text-center">Kirim Email</h2>
	    				<?php 
									
							if ($this->session->flashdata('sukses')){
								echo "<div class='alert alert-block alert-success show'>
									  	<button type='button' class='close' data-dismiss='alert'>×</button>
										<span>Pesan Berhasil Dikirim</span>
									</div>";
							}
												
							?>
	    				<div class="status alert alert-success" style="display: none"></div>
				    	<form id="main-contact-form" class="contact-form row" name="contact-form" method="post" action="<?php echo base_url();?>home/hubungi_kami_kirim">
				            <div class="form-group col-md-6">
				                <input type="text" name="nama" class="form-control" required="required" placeholder="Nama">
				            </div>
				            <div class="form-group col-md-6">
				                <input type="email" name="email" class="form-control" required="required" placeholder="Email">
				            </div>
				            <div class="form-group col-md-6">
				                <input type="text" name="hp" class="form-control" required="required" placeholder="Hp/Whatsapp">
						
				            </div>
				            <div class="form-group col-md-6">
				                <input type="text" name="alamat" class="form-control" required="required" placeholder="Alamat">
				            </div>
				            <div class="form-group col-md-12">
				                <textarea name="pesan" id="message" required="required" class="form-control" rows="8" placeholder="Ketikkan Pesan Anda Disini"></textarea>
				            </div>                        
				            <div class="form-group col-md-12">
				                <input type="submit" name="submit" class="btn btn-primary pull-right" value="Submit">
				            </div>
				        </form>
	    			</div>
	    		</div>
	    		<div class="col-sm-4">
	    			<div class="contact-info">
	    				<h2 class="title text-center">Kontak Kami</h2>
	    				<address>
	    					<p>SMART TPI MOROWALI</p>
							<p><?php echo $alamat;?></p>
							<p>Wa/phone: <?php echo $phone;?></p>
							<p>Email: <?php echo $email;?></p>
	    				</address>
	    				<div class="social-networks">
	    					<h2 class="title text-center">Sosial Media</h2>
							<ul>
							<?php
							foreach ($sosial_media->result_array() as $value){?>
								<li>
									<a href="<?php echo $value['fb'];?>"><i class="fa fa-facebook"></i></a>
								</li>
								<li>
									<a href="<?php echo$value['tw'];?>"><i class="fa fa-envelope"></i></a>
								</li>
								<li>
									<a href="<?php echo $value['gp'];?>"><i class="fa fa-phone"></i></a>
								</li>
								<?php }?>
							</ul>
	    				</div>
	    			</div>
    			</div>    			
	    	</div>  
    	</div>	
    </div><!--/#contact-page-->
	
	
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