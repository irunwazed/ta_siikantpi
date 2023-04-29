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
							
							<a href="<?php echo base_url();?>"><img src="<?php echo base_url();?>images/logo/<?php echo $logo;?>" alt="SMART TPI" /></a>
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
	
	
	<div id="contact-page" class="container">
    	<div class="bg">
	    	  	
    		<div class="row">  	
	    		<div class="col-sm-8">
	    			<div class="contact-form">
					    <div class="shopper-informations">
				<div class="row">
					<div class="col-sm-8">
						<div class="shopper-info">
							<h2 class="title text-center">Data Pembeli</h2>
							<?php echo form_open('home/checkout_invoice');?>
								<input type="text" placeholder="Nama Penerima" name="penerima">
								<?php echo form_error('penerima','<small class="text-danger pl-3">','</small>')?>
								<!--<input type="text" placeholder="Email Penerima" name="email">
								<?= form_error('email','<small class="text-danger pl-3">','</small>')?>-->

								<input type="text" placeholder="Alamat Penerima" name="alamat">
								<?= form_error('alamat','<small class="text-danger pl-3">','</small>')?>

								<input type="text" placeholder="No Telp" name="no_telepon" value="">
								<?= form_error('no_telpon','<small class="text-danger pl-3">','</small>')?>
								
								
								<div class="bill-to">
								<div class="form-group">
									<button class="btn btn-primary" type="submit">Kirim</button><?php echo form_close();?>
				            		</div>
						</div>
								
						</div>
					</div>
					<div class="col-sm-5 clearfix">
						<div class="bill-to">
							<div class="form-two">
								
							</div>
						</div>
					</div>
								
				</div>
			</div>
	    			</div>
	    		</div>
	    		<div class="col-sm-4">
	    			<div class="contact-info">
	    				<h2 class="title text-center">Keranjang</h2>
	    				<?php if(!$this->cart->contents()):
				echo 'Maaf, Keranjang Belanja Anda Masih Kosong.';
			else:
			?>
			<?php echo form_open('home/checkout_update'); ?>
			<div class="table-responsive cart_info">
				<table class="table table-condensed">
					<thead>
						<tr class="table">
							<td class="image">Jumlah</td>
							<td class="description">Ikan</td>
							<td class="quantity">Sub Total</td>
							
						</tr>
					</thead>
					<tbody>
						
						<?php $i = 1; ?>
			<?php foreach($this->cart->contents() as $items): ?>
			<tr <?php if($i&1){ echo 'class="alt"'; }?>>
	  			<td class="td-keranjang"><?php echo $items['qty']; ?></td>
	  			<td class="td-keranjang"><?php echo $items['name']; ?></td>
	  			<td class="td-keranjang">Rp. <?php echo $this->cart->format_number($items['subtotal']); ?></td>
	  		</tr>
	  	
	  	<?php $i++; ?>
		<?php endforeach; ?>
		
		<tr>
			<td class="td-keranjang" colspan=2><b>Total Belanja</b></td>
 		 	<td class="td-keranjang" colspan=3>Rp. <?php echo $this->cart->format_number($this->cart->total()); ?></td>
		</tr>
						
						
					</tbody>
				</table>	
			</div>
			<?php echo form_close(); 
			endif;?>
		
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