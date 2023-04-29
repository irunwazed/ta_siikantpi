<?php

class home extends CI_controller {

	public function __construct() {
		parent::__construct();
		$this->load->model('home_model');

	}

	public function index() {
		$this->load->library('pagination');
		$data['logo'] 			= $this->home_model->GetLogo();
		$data['kontak'] 		= $this->home_model->GetKontak();
		$data['sosial_media'] 	= $this->home_model->GetSosialMedia();
		$data['seo'] 			= $this->home_model->GetSeo(); 
		$data['slider']			= $this->home_model->GetSlider();
		$data['bank'] 			= $this->home_model->GetBank(); 
		$data['brand'] 			= $this->home_model->GetBrand(); 
		$data['kategori'] 		= $this->home_model->GetKategori(); 
		$data['produk']			= $this->home_model->GetProduk();
		$data['random']			= $this->home_model->GetRandomProduk();
		$data['random_active']	= $this->home_model->GetRandomActiveProduk();
		//$data['jasapengiriman']	= $this->home_model->GetJasaPengiriman();
		

		$data['produk'] = $this->selectionSortTgl($data['produk']->result_array());

		// testing selection sort biasa
		// $arr = [1,3,2,5,7,3,5,3,6,8,4,3,5,8,9,3,1,3,5,7,8];
		// $this->selectionSort($arr);
		
		$this->load->view('home/index',$data);
	}

	function selectionSortTgl($arr){

		$result = [];
		for($i = 0; $i < count($arr); $i++){

			// mengubah tanggal menjadi angka
			$nilai = strtotime($arr[$i]['tanggal'])-strtotime(date('Y-m-d'));

			// bila tanggal sudah kadaluarsa, maka produk tidak diambil
			if($nilai < 0){
				continue;
			}

			// memasukkan produk diawal sebagai nilai awal pembanding
			$min = $min = [
				'index' => $i,
				'nilai' => $nilai,
			];

			// selection sort
			for($j = $i+1; $j < count($arr); $j++){
				$nilai = strtotime($arr[$j]['tanggal'])-strtotime(date('Y-m-d'));
				if($min['nilai'] > $nilai){
					$min = [
						'index' => $j,
						'nilai' => $nilai,
					];
				}
			}
			array_push($result, $arr[$min['index']]);
		}

		return $result;
	}

	function selectionSort($arr){
		for($i = 0; $i < count($arr); $i++){

			// menyimpan nilai awal sebagai pembanding nilai minimal
			$min = [
				'index' => $i,
				'nilai' => $arr[$i],
			];
			for($j = $i+1; $j < count($arr); $j++){
				// bila nilai minimal lebih besar dari nilai index, maka ganti nilai minimal
				if($min['nilai'] > $arr[$j]){
					$min = [
						'index' => $j,
						'nilai' => $arr[$j],
					];
				}
			}
			// lakukan penukaran nilai minimal dengan index 
			$temp = $arr[$i];
			$arr[$i] = $arr[$min['index']];
			$arr[$min['index']] = $temp;
		}
	}

	public function tentang_kami () {
		$data['logo'] 			= $this->home_model->GetLogo();
		$data['kontak'] 		= $this->home_model->GetKontak();
		$data['sosial_media'] 	= $this->home_model->GetSosialMedia();
		$data['seo'] 			= $this->home_model->GetSeo(); 
		$data['bank'] 			= $this->home_model->GetBank(); 
		$data['brand'] 			= $this->home_model->GetBrand(); 
		$data['kategori'] 		= $this->home_model->GetKategori(); 
		$data['tentangkami'] 	= $this->home_model->GetTentangKami();
		$data['produk']			= $this->home_model->GetProduk();
		$data['jasapengiriman']	= $this->home_model->GetJasaPengiriman();
		
		$this->load->view('home/tentang_kami',$data);
	}

	public function cara_belanja() {
		$data['logo'] 			= $this->home_model->GetLogo();
		$data['kontak'] 		= $this->home_model->GetKontak();
		$data['sosial_media'] 	= $this->home_model->GetSosialMedia();
		$data['seo'] 			= $this->home_model->GetSeo(); 
		$data['bank'] 			= $this->home_model->GetBank(); 
		$data['brand'] 			= $this->home_model->GetBrand(); 
		$data['kategori'] 		= $this->home_model->GetKategori(); 
		$data['carabelanja'] 	= $this->home_model->GetCaraBelanja();
		$data['jasapengiriman']	= $this->home_model->GetJasaPengiriman();
		
		
		$this->load->view('home/cara_belanja',$data);
	}

	public function hubungi_kami () {
		$data['logo'] 			= $this->home_model->GetLogo();
		$data['kontak'] 		= $this->home_model->GetKontak();
		$data['sosial_media'] 	= $this->home_model->GetSosialMedia();
		$data['seo'] 			= $this->home_model->GetSeo(); 
		$data['bank'] 			= $this->home_model->GetBank(); 
		$data['kategori'] 		= $this->home_model->GetKategori(); 

		
		
		$this->load->view('home/hubungi_kami',$data);
	}

	public function hubungi_kami_kirim() {
		$tanggal 		= date('Y-m-d');
		$nama 		= $this->input->post('nama');
		$email 		= $this->input->post('email');
		$no_telepon		= $this->input->post('hp');

		$nohp = $no_telepon;
				// kadang ada penulisan no hp 0811 239 345
				$nohp = str_replace(" ","",$nohp);
				// kadang ada penulisan no hp (0274) 778787
				$nohp = str_replace("(","",$nohp);
				// kadang ada penulisan no hp (0274) 778787
				$nohp = str_replace(")","",$nohp);
				// kadang ada penulisan no hp 0811.239.345
				$nohp = str_replace(".","",$nohp);

				// cek apakah no hp mengandung karakter + dan 0-9
				if(!preg_match('/[^+0-9]/',trim($nohp))){
					// cek apakah no hp karakter 1-3 adalah +62
					if(substr(trim($nohp), 0, 3)=='+62'){
						$hp = trim($nohp);
					}
					//cek ap
					elseif(substr(trim($nohp), 0, 2)=='62'){
						$hp = '+62'.substr(trim($nohp), 1);
					}
					// cek apakah no hp karakter 1 adalah 0
					elseif(substr(trim($nohp), 0, 1)=='0'){
						$hp = '+62'.substr(trim($nohp), 1);
					}
					
					else{
						$hp = $nohp;
					}
		$alamat 		= $this->input->post('alamat');
		$pesan 		= $this->input->post('pesan');

		$this->home_model->InsertHubungiKami($nama,$email,$nohp,$alamat,$pesan,$tanggal);

		$this->session->set_flashdata('sukses','Data Berhasil Dikirim');
		redirect("home/hubungi_kami");
	}
}

	public function kategori() {
		$id_kategori= $this->uri->segment(3);
		$data['logo'] 			= $this->home_model->GetLogo();
		$data['kontak'] 		= $this->home_model->GetKontak();
		$data['sosial_media'] 	= $this->home_model->GetSosialMedia();
		$data['seo'] 			= $this->home_model->GetSeo(); 
		$data['bank'] 			= $this->home_model->GetBank(); 
		$data['brand'] 			= $this->home_model->GetBrand(); 
		$data['kategori'] 		= $this->home_model->GetKategori(); 
		$data['nama_kategori']  = $this->home_model->GetNamaKategoriId($id_kategori);
		$data['jasapengiriman']	= $this->home_model->GetJasaPengiriman();

			$page=$this->uri->segment(4);
			$limit=12;
			if(!$page):
			$offset = 0;
			else:
			$offset = $page;
			endif;
			
			$data['tot'] = $offset;
			$tot_hal = $this->home_model->GetProdukKategori($id_kategori);
			$config['base_url'] = base_url() . 'home/kategori/'.$id_kategori.'/';
			$config['total_rows'] = $tot_hal->num_rows();
			$config['per_page'] = $limit;
			$config['uri_segment'] = 4;
			$config['first_link'] = 'Awal';
	        $config['last_link'] = 'Akhir';
	        $config['next_link'] = 'Selanjutnya';
	        $config['prev_link'] = 'Sebelumnya';
	        $config['full_tag_open'] = '<ul class="pagination">';
	        $config['full_tag_close'] = '</ul>';

	        $config['first_link'] = 'Awal';
	        $config['first_tag_open'] = '<li class="prev page">';
	        $config['first_tag_close'] = '</li>';

	        $config['last_link'] = 'Akhir';
	        $config['last_tag_open'] = '<li class="next page">';
	        $config['last_tag_close'] = '</li>';

	        $config['next_link'] = 'Selanjutnya';
	        $config['next_tag_open'] = '<li class="next page">';
	        $config['next_tag_close'] = '</li>';

	        $config['prev_link'] = 'Sebelumnya';
	        $config['prev_tag_open'] = '<li class="prev page">';
	        $config['prev_tag_close'] = '</li>';

	        $config['cur_tag_open'] = '<li class="active"><a href="">';
	        $config['cur_tag_close'] = '</a></li>';

	        $config['num_tag_open'] = '<li class="page">';
	        $config['num_tag_close'] = '</li>';

			$this->pagination->initialize($config);
			$data["paginator"] =$this->pagination->create_links();
			
			$data['produk_kategori'] = $this->db->query("select a.*,b.*,c.* from tbl_produk a join tbl_kategori b on a.kategori_id=b.id_kategori join tbl_brand c on a.brand_id=c.id_brand  where a.kategori_id='$id_kategori' order by a.id_produk desc 
			LIMIT ".$offset.",".$limit."");

		$this->load->view('home/kategori',$data);

	}

	public function brand() {
		$id_brand= $this->uri->segment(3);
		$data['logo'] 			= $this->home_model->GetLogo();
		$data['kontak'] 		= $this->home_model->GetKontak();
		$data['sosial_media'] 	= $this->home_model->GetSosialMedia();
		$data['seo'] 			= $this->home_model->GetSeo(); 
		$data['bank'] 			= $this->home_model->GetBank(); 
		$data['brand'] 			= $this->home_model->GetBrand(); 
		$data['kategori'] 		= $this->home_model->GetKategori(); 
		$data['nama_brand']  = $this->home_model->GetNamaBrandId($id_brand);
		$data['jasapengiriman']	= $this->home_model->GetJasaPengiriman();

			$page=$this->uri->segment(4);
			$limit=12;
			if(!$page):
			$offset = 0;
			else:
			$offset = $page;
			endif;
			
			$data['tot'] = $offset;
			$tot_hal = $this->home_model->GetProdukBrand($id_brand);
			$config['base_url'] = base_url() . 'home/brand/'.$id_brand.'/';
			$config['total_rows'] = $tot_hal->num_rows();
			$config['per_page'] = $limit;
			$config['uri_segment'] = 4;
			$config['first_link'] = 'Awal';
	        $config['last_link'] = 'Akhir';
	        $config['next_link'] = 'Selanjutnya';
	        $config['prev_link'] = 'Sebelumnya';
	        $config['full_tag_open'] = '<ul class="pagination">';
	        $config['full_tag_close'] = '</ul>';

	        $config['first_link'] = 'Awal';
	        $config['first_tag_open'] = '<li class="prev page">';
	        $config['first_tag_close'] = '</li>';

	        $config['last_link'] = 'Akhir';
	        $config['last_tag_open'] = '<li class="next page">';
	        $config['last_tag_close'] = '</li>';

	        $config['next_link'] = 'Selanjutnya';
	        $config['next_tag_open'] = '<li class="next page">';
	        $config['next_tag_close'] = '</li>';

	        $config['prev_link'] = 'Sebelumnya';
	        $config['prev_tag_open'] = '<li class="prev page">';
	        $config['prev_tag_close'] = '</li>';

	        $config['cur_tag_open'] = '<li class="active"><a href="">';
	        $config['cur_tag_close'] = '</a></li>';

	        $config['num_tag_open'] = '<li class="page">';
	        $config['num_tag_close'] = '</li>';

			$this->pagination->initialize($config);
			$data["paginator"] =$this->pagination->create_links();
			
			$data['produk_brand'] = $this->db->query("select a.*,b.* from tbl_produk a join tbl_brand b on a.brand_id=b.id_brand join tbl_brand c on a.brand_id=c.id_brand where a.brand_id='$id_brand' order by a.id_produk desc 
			LIMIT ".$offset.",".$limit."");

		$this->load->view('home/brand',$data);

	}

	public function cari () {
		$cari = $this->input->post('cari');

		if ($cari=="") {

		}
		else {

			$data['logo'] 			= $this->home_model->GetLogo();
			$data['kontak'] 		= $this->home_model->GetKontak();
			$data['sosial_media'] 	= $this->home_model->GetSosialMedia();
			$data['seo'] 			= $this->home_model->GetSeo(); 
			$data['bank'] 			= $this->home_model->GetBank(); 
			$data['brand'] 			= $this->home_model->GetBrand(); 
			$data['kategori'] 		= $this->home_model->GetKategori(); 
			$data['jasapengiriman']	= $this->home_model->GetJasaPengiriman();
			$data['produk_cari']	= $this->home_model->GetProdukCari($cari);

			$this->load->view('home/cari',$data);

		}
	}

	public function produk () {
		$id_produk = $this->uri->segment(3);

		$data['logo'] 			= $this->home_model->GetLogo();
		$data['kontak'] 		= $this->home_model->GetKontak();
		$data['sosial_media'] 	= $this->home_model->GetSosialMedia();
		$data['seo'] 			= $this->home_model->GetSeo(); 
		$data['bank'] 			= $this->home_model->GetBank(); 
		$data['brand'] 			= $this->home_model->GetBrand(); 
		$data['kategori'] 		= $this->home_model->GetKategori(); 
		$data['jasapengiriman']	= $this->home_model->GetJasaPengiriman();
		$data['random']			= $this->home_model->GetRandomProduk();
		$data['random_active']	= $this->home_model->GetRandomActiveProduk();

		$data['data_produk']= $this->home_model->GetProdukId($id_produk);

		$this->load->view('home/produk',$data);
	}

	public function keranjang() {
		$id_produk = $this->uri->segment(3);
		$data['logo'] 			= $this->home_model->GetLogo();
		$data['kontak'] 		= $this->home_model->GetKontak();
		$data['sosial_media'] 	= $this->home_model->GetSosialMedia();
		$data['seo'] 			= $this->home_model->GetSeo(); 
		$data['bank'] 			= $this->home_model->GetBank(); 
		$data['kategori'] 		= $this->home_model->GetKategori(); 
		$data['data_produk'] 	= $this->home_model->GetProduk();
		$data['data_produk']= $this->home_model->GetProdukId($id_produk);
	

		$id_produk = $this->uri->segment(3);

		if ($id_produk!="") {

			$query  = $this->home_model->GetProdukId($id_produk);

			foreach ($query->result_array() as $value) {

				$id_produk = $value['id_produk'];
				$kode_produk = $value['kode_produk'];
				$harga = $value['harga'];	
				$nama_produk = $value['nama_brand'];	
				$stok 	= 1;
				$stook = $value['stok'];
				
			}

			$masuk = array(
				'id'      => $kode_produk,
				'qty'     => $stok,
				'kode'   => $id_produk,
			    'price'   => $harga,
				'name'    => $nama_produk,
				'stok'	 =>$stook);
			$this->cart->insert($masuk);

		}
		else {

		}
		
		
		$this->load->view('home/keranjang',$data);
	}

	public function keranjang_hapus($kode) {

		$data = array(
			'rowid' => $kode,
			'qty'   => 0);
			$this->cart->update($data);
		redirect('home/keranjang');

	}

	public function keranjang_update() {



		//$cek = $this->db->query("SELECT * FROM produk where id_produk=".$this->input->post('produk')."'")->row_array();
		//if ($cek['stok']<$this->input->post('jumlah_beli')){
  		// Pesan / Notifikasi Stok Habis}else{
  // Proses sukses}




		$total = $this->cart->total_items();
		$item = $this->input->post('rowid');
		$qty = $this->input->post('qty');
		$i = $this->input->post('i');
		for($i=0;$i < $total;$i++)
		{
			$data = array(
			'rowid' => $item[$i],
			'qty'   => $qty[$i]);
			if(isset($item[$i]) and isset($qty[$i]) ){

			
			$this->cart->update($data);
			}
			else{
				redirect('home/keranjang');
			}
		}
		
		redirect('home/keranjang');
	}

	public function checkout () {

		$data['logo'] 			= $this->home_model->GetLogo();
		$data['kontak'] 		= $this->home_model->GetKontak();
		$data['sosial_media'] 	= $this->home_model->GetSosialMedia();
		$data['seo'] 			= $this->home_model->GetSeo(); 
		$data['bank'] 			= $this->home_model->GetBank(); 
		$data['kategori'] 		= $this->home_model->GetKategori(); 
		$data['jasapengiriman']	= $this->home_model->GetJasaPengiriman();

		$this->load->view('home/checkout',$data);

	}

	public function checkout_hapus($kode) {

		$data = array(
			'rowid' => $kode,
			'qty'   => 0);
			$this->cart->update($data);
		redirect('home/checkout');

	}

	public function checkout_update() {
		$total = $this->cart->total_items();
		$item = $this->input->post('rowid');
		$qty = $this->input->post('qty');
		for($i=0;$i <$total;$i++)
		{
			$data = array(
			'rowid' => $item[$i],
			'qty'   => $qty[$i]);
			$this->cart->update($data);
		}
		redirect('home/checkout');
	}

	public function checkout_invoice () {

		$this->form_validation->set_rules('penerima','Nama Penerima','required|');
		//$this->form_validation->set_rules('email', 'Email' ,'required|trim|valid_email');
		$this->form_validation->set_rules('alamat','Alamat','required|');
		$this->form_validation->set_rules('no_telepon','No Telp','required|trim');
		$data['produk']			= $this->home_model->GetProduk();

		if ($this->form_validation->run()==FALSE) {

				$data['logo'] 			= $this->home_model->GetLogo();
				$data['kontak'] 		= $this->home_model->GetKontak();
				$data['sosial_media'] 	= $this->home_model->GetSosialMedia();
				$data['seo'] 			= $this->home_model->GetSeo(); 
				$data['kategori'] 		= $this->home_model->GetKategori(); 

			$this->load->view('home/checkout',$data);
			

		}
		else {
		
			date_default_timezone_set('Asia/Jakarta'); 
			$tgl_skr = date('Ymd');
			$cek_kode = $this->home_model->cek_kode($tgl_skr);
			$kode_trans = "";
			foreach($cek_kode->result() as $ck)
			{
				if($ck->kd==NULL)
				{
					$kode_trans = $tgl_skr.'001';
				}
				else
				{
					$kd_lama = $ck->kd;
					$kode_trans = $kd_lama+1;
				}
			}
		
			$penerima 			= $this->input->post("penerima");
			$email 				= $this->input->post("email");
			$alamat 			= $this->input->post("alamat");

			$no_telepon 		= $this->input->post("no_telepon");

				
				$nohp = $no_telepon;
				// kadang ada penulisan no hp 0811 239 345
				$nohp = str_replace(" ","",$nohp);
				// kadang ada penulisan no hp (0274) 778787
				$nohp = str_replace("(","",$nohp);
				// kadang ada penulisan no hp (0274) 778787
				$nohp = str_replace(")","",$nohp);
				// kadang ada penulisan no hp 0811.239.345
				$nohp = str_replace(".","",$nohp);

				// cek apakah no hp mengandung karakter + dan 0-9
				if(!preg_match('/[^+0-9]/',trim($nohp))){
					// cek apakah no hp karakter 1-3 adalah +62
					if(substr(trim($nohp), 0, 3)=='+62'){
						$hp = trim($nohp);
					}
					//cek ap
					elseif(substr(trim($nohp), 0, 2)=='62'){
						$hp = '+62'.substr(trim($nohp), 1);
					}
					// cek apakah no hp karakter 1 adalah 0
					elseif(substr(trim($nohp), 0, 1)=='0'){
						$hp = '+62'.substr(trim($nohp), 1);
					}
					
					else{
						$hp = $nohp;
					}
				}

				date_default_timezone_set('Asia/Jakarta'); 
			$tanggal_transfer = date('y-m-d H:i:s',(mktime(date('H'),date('i'),date('s'),date("m"), date("d")+1, date("Y"))));
			

			$this->home_model->InsertTransaksiHeader($kode_trans,$penerima,$email,$alamat,$hp,$tanggal_transfer);
			foreach($this->cart->contents() as $items)
						{
						$this->home_model->simpan_pesanan($kode_trans,$items['id'],$items['name'],$items['subtotal'],$items['qty']);
							$this->home_model->update_dibeli($items['id'],$items['qty']);
							
						}
						$data_detail=$this->home_model->GetDetailTransaksi($kode_trans);
						foreach ($data_detail->result_array() as $tampil){
						
							if($tampil['stok'] < 0 )
							{
									$this->cart->destroy();
									$this->home_model->delete_transaksi($kode_trans);
									$this->home_model->update_pesanan($tampil['kode_produk'],$tampil['jumlah']);
									
									$this->session->set_flashdata('pesan','<div class="alert alert-danger" role="alert">Jumlah stok telah berubah, stok tidaak sesuai dengan jumlah pesanan /n silahkan tambah kembali keranjang anda</div>');
									redirect('home/keranjang');
								
							}
							else
							{
									$isi_psn ='<table style="border:1px solid #000;" border="1" cellpadding=0><tr><td>Kode Produk</td><td>Nama Produk</td><td>Harga</td><td>Jumlah</td><td>Subtotal</td></tr>';
									foreach($this->cart->contents() as $items)
									{
									$isi_psn2 = '<tr><td>'.$items["id"].'</td><td>'.$items["name"].'</td><td>Rp.'.$this->cart->format_number($items["price"]).'</td><td>'.$items["qty"].'</td><td>Rp.'.$this->cart->format_number($items["subtotal"]).'</td></tr></table>';
									}
									$isi_psn3 = '<p>Total Belanja : <b>Rp.'.$this->cart->format_number($this->cart->total()).'</b></p><br><p>Pesanan anda akan kami proses, selahkan ke Tempat Pelelangan Ikan (TPI) kelurahan Matano untuk melakukan transaksi<br> Salam, SMART TPI BUNGKU</p>';
									// Konfigurasi email
									$query=$this->home_model->Getkontak();
									foreach ($query->result_array() as $kontak) {
										
									}
									
										$config = array(
											'mailtype'  => 'html',
											'charset'   => 'utf-8',
											'protocol'  => 'smtp',
											'smtp_host' => 'mail.morowalikab.go.id',
											'smtp_user' => 'diskan@morowalikab.go.id',  // Email gmail
											'smtp_pass'   => 'perikanan21',  // Password gmail
											'smtp_crypto' => 'ssl',
											'smtp_port'   => 465,
											'smtp_timeout' =>5,
											'crlf'    => "\r\n",
											'wordwrap' => TRUE,
											'newline' => "rn"
										);
									
									
							
									$this->load->library('email',$config);
									$this->email->initialize($config);
									$this->email->set_mailtype('html');
									$this->email->from($kontak['email'], "Admin SMART TPI MOROWALI");
									$this->email->to($email);
									$this->email->subject('Detail Boking/Tempat Pelelangan Ikan Bungku');
									$this->email->message($isi_psn.$isi_psn2.$isi_psn3);
									//$this->email->send();
									// Tampilkan pesan sukses atau error
									//if ($this->email->send()) {
										//echo 'Sukses! email berhasil dikirim.';
									//} else {echo 'Error! email tidak dapat dikirim.';}
									////////////////////////////////////////////////////////////////////////////////
									$this->cart->destroy();
									?>
									<script type="text/javascript">	
									alert("Pesanan anda telah terkirim,Untuk Pembayaran Silahkan Ke TPI(Tempat Pelelangan Ikan) Kelurahan Matano.\nBatas Pembayaran 24 Jam setelah pemesanan\nTerima Kasih");			
									</script>
									<?php
									echo "<meta http-equiv='refresh' content='0; url=".base_url()."home/'>";


		
								
							}
							
						}
		
			

						
		
		}
		
	}

	//Detail Slider
	public function info($id)
	{
		$data['logo'] 			= $this->home_model->GetLogo();
		$data['kontak'] 		= $this->home_model->GetKontak();
		$data['sosial_media'] 	= $this->home_model->GetSosialMedia();
		$data['seo'] 			= $this->home_model->GetSeo(); 
		$data['bank'] 			= $this->home_model->GetBank(); 
		$data['brand'] 			= $this->home_model->GetBrand(); 
		$data['kategori'] 		= $this->home_model->GetKategori(); 
		$data['produk']			= $this->home_model->GetProduk();
		$data['random']			= $this->home_model->GetRandomProduk();
		$data['random_active']	= $this->home_model->GetRandomActiveProduk();
		$data['jasapengiriman']	= $this->home_model->GetJasaPengiriman();
		$data['slider']			= $this->home_model->GetSliderheader($id);
		$data['berita']			= $this->home_model->GetBerita();
		$this->load->view('home/info',$data);
	}
	public function berita()
	{
		$data['logo'] 			= $this->home_model->GetLogo();
		$data['kontak'] 		= $this->home_model->GetKontak();
		$data['sosial_media'] 	= $this->home_model->GetSosialMedia();
		$data['seo'] 			= $this->home_model->GetSeo(); 
		$data['slider']			= $this->home_model->GetSlider();
		$data['bank'] 			= $this->home_model->GetBank(); 
		$data['brand'] 			= $this->home_model->GetBrand(); 
		$data['kategori'] 		= $this->home_model->GetKategori(); 
		$data['produk']			= $this->home_model->GetProduk();
		$data['random']			= $this->home_model->GetRandomProduk();
		$data['random_active']	= $this->home_model->GetRandomActiveProduk();
		$data['jasapengiriman']	= $this->home_model->GetJasaPengiriman();
		$data['berita']			= $this->home_model->GetBerita();
		//////////////////////////////////////////////

		$this->load->view('home/berita',$data);
	}

}