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
							
							<a href="<?php echo base_url();?>"><img src="<?php echo base_url();?>images/logo/<?php echo $logo;?>" alt="SI IKAN TPI" /></a>
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
	
	
	<section id="cart_items">
		<div class="container">
			<div class="breadcrumbs">
				<ol class="breadcrumb">
				  <li><a href="<?php echo base_url();?>">Home</a></li>
				  <li class="active">Shopping Cart</li>
				</ol>
			</div>
			<?= $this->session->flashdata('pesan');?>
			<?php if(!$this->cart->contents()):
									
				
				echo 'Maaf, Keranjang Belanja Anda Masih Kosong.';
				
			else:
			?>
			<?php echo form_open('home/keranjang_update'); ?>
			<div class="table-responsive cart_info">
				<table style="font-size: 12px;"  class="table table-condensed">
					<thead>
						<tr style="font-size: 12px;"  class="cart_menu">
							<td class="image">input Jumlah</td>
							<td class="price">Jumlah</td>
							<td class="description">Nama Barang</td>
							<td class="price">Harga</td>
							<td class="total">Hapus</td>
							<td></td>
						</tr>
					</thead>
					<tbody>
						
						<?php $i = 1; ?>
		<?php foreach($this->cart->contents() as $items): ?>
		
		
		<?php echo form_hidden('rowid[]', $items['rowid']); ?>
		<tr <?php if($i&1){ echo 'class="alt"'; }?>>
	  		<td class="td-keranjang">
			<select name="qty[]" class="input-teks">
	  			<?php 
				for($i=1;$i<=$items['stok'];$i+=1)
				{
				if($i==$items['qty'])
				{
					echo "<option selected>".$items['qty']."</option>";
					
				}
				else 
				{
					echo "<option>".$i."</option>";
				}
				}	
				?>
			</select>
	  		</td>
	  		<td class="td-keranjang"><b><?php echo $items['qty']; ?>.Kg</b></td>
	  		<td class="td-keranjang"><?php echo $items['name']; ?></td>
	  		<td class="td-keranjang">Rp. <?php echo $this->cart->format_number($items['price']); ?></td>
 		 	<td class="td-keranjang" align="center"><a  href="<?php echo base_url(); ?>home/keranjang_hapus/<?php echo $items['rowid']; ?>"><i class="fa fa-times"></i></a>
</td>
	  	</tr>
	  	
	  	<?php $i++; ?>
		<?php endforeach; ?>
		
		<tr>
			<td class="td-keranjang" colspan=3><b>Total Belanja</b></td>
 		 	<td class="td-keranjang" colspan=2>Rp. <?php echo $this->cart->format_number($this->cart->total()); ?></td>
		</tr>
						
						
					</tbody>
				</table>
				<div class="">
					<input style="font-size: 12px;"  type="submit" class="btn btn-default get" value="Update Keranjang">
					<a href="<?php echo base_url(); ?>home"><div style="font-size: 12px;" class="btn btn-default get">Lanjut Belanja</div></a>
					<a href="<?php echo base_url(); ?>home/checkout"><div style="font-size: 12px;" class="btn btn-default get">Selesai Belanja</div></a>
				</div>
				<!--<a href="<?php echo base_url(); ?>home/checkout"><div class="btn btn-default get">Selesai Belanja</div></a>-->
			</div>

		<div class="register-req">
			<ul>
				<li>Setelah menginput jumlah, klik <b>Update Keranjang</b></li>
				<!-- <li>Total harga di atas belum termasuk ongkos kirim yang akan dihitung saat Selesai Belanja</li> -->
			</ul>
		</div>
			<?php 
echo form_close(); 
endif;
?>

			

		</div>

		
		
	</section> <!--/#cart_items-->
	
	
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