<?php

class home_model extends CI_Model {

	function GetLogo() {
		return $this->db->query("select * from tbl_logo");
	}

	function GetKontak() {
		return $this->db->query("select * from tbl_kontak");
	}

	function GetSosialMedia() {
		return $this->db->query("select * from tbl_sosial_media");
	}

	function GetSeo() {
		return $this->db->query("select * from tbl_seo");
	}

	function GetBank() {
		return $this->db->query("select * from tbl_bank order by id_bank desc");
	}

	function GetBrand() {
		return $this->db->query("select * from tbl_brand order by id_brand desc");
	}

	function GetSlider(){
		return $this->db->query("select * from tbl_slider where status='1' order by id_slider desc");
	}
	function GetBerita(){
		return $this->db->query("select * from tbl_slider order by id_slider desc limit 0,6");
	}
	function GetSliderheader($id) {
		return $this->db->query("select * from tbl_slider 
		where tbl_slider.id_slider='$id' ");
	}

	function GetKategori() {
		return $this->db->query("select * from tbl_kategori order by id_kategori desc");
	}

	function GetProduk() {
		return $this->db->query("select a.*,b.*,c.* from tbl_produk a join tbl_brand b on a.brand_id=b.id_brand join tbl_kategori c on a.kategori_id=c.id_kategori where a.stok != '0' order by id_produk desc limit 0,20 ");
	}

	function GetRandomProduk() {
		return $this->db->query("select a.*,b.*,c.* from tbl_produk a join tbl_brand b on a.brand_id=b.id_brand join tbl_kategori c on a.kategori_id=c.id_kategori order by RAND('id_produk') asc limit 0,3 ");
	}

	function GetRandomActiveProduk() {
		return $this->db->query("select a.*,b.*,c.* from tbl_produk a join tbl_brand b on a.brand_id=b.id_brand join tbl_kategori c on a.kategori_id=c.id_kategori order by RAND('id_produk') desc limit 0,3 ");
	}

	function GetTentangKami(){
		return $this->db->query("select * from tbl_tentangkami");
	}

	function GetCaraBelanja() {
		return $this->db->query("select * from tbl_carabelanja");
	}

	function InsertHubungiKami($nama,$email,$hp,$alamat,$pesan,$tanggal) {
		return $this->db->query("insert into tbl_hubungikami values('','$nama','$email','$hp','$alamat','$pesan','$tanggal','')");
	}

	function GetJasaPengiriman() {
		return $this->db->query("select * from tbl_jasapengiriman order by id_jasapengiriman desc");
	}

	function GetProdukKategori($id_kategori) {
		return $this->db->query("select a.*,b.* from tbl_produk a join tbl_kategori b on a.kategori_id=b.id_kategori  where a.kategori_id='$id_kategori' order by a.id_produk desc");
	}

	function GetNamaKategoriId($id_kategori) {
		return $this->db->query("select * from tbl_kategori where id_kategori='$id_kategori'");
	}

	function GetProdukBrand($id_brand) {
		return $this->db->query("select a.*,b.* from tbl_produk a join tbl_brand b on a.brand_id=b.id_brand  where a.brand_id='$id_brand' order by a.id_produk desc");
	}

	function GetNamaBrandId($id_brand) {
		return $this->db->query("select * from tbl_brand where id_brand='$id_brand'");
	}


	function GetProdukCari($cari) {
		return $this->db->query("select a.*,b.*,c.* from tbl_produk a join tbl_kategori b on a.kategori_id=b.id_kategori join tbl_brand c on a.brand_id=c.id_brand where a.nama_nelayan like '%".$cari."%' or b.nama_kategori like '%".$cari."%' or c.nama_brand like '%".$cari."%' order by a.id_produk desc"); 
	} 

	function GetProdukId($id_produk) {
		return $this->db->query("select a.*,b.*,c.* from tbl_produk a join tbl_kategori b on a.kategori_id=b.id_kategori join tbl_brand c on a.brand_id=c.id_brand where a.id_produk='$id_produk'");
	}


	function cek_kode($tgl)
	{
		$query=$this->db->query("select MAX(kode_transaksi) as kd from tbl_transaksi_header where kode_transaksi like '%$tgl%'");
		return $query;
	}


	function update_dibeli($kd,$bl)
	{
		$query=$this->db->query("update tbl_produk set stok = stok -'$bl'  where kode_produk='$kd'");
		//$query=$this->db->query("update tbl_produk set laku = laku +'$bl'  where kode_produk='$kd'");
		//$query=$this->db->query("update tbl_produk set status = '1'  where kode_produk='$kd'");
		return $query;
	}

	function keranjang($id) {
		return $this->db->query("select *from tbl_produk where id_produk= '$id'");
		
	}

	function simpan_pesanan($kode_transaksi,$kode_produk,$nama_produk,$harga,$jumlah)
	{
		return $this->db->query("insert into tbl_transaksi_detail values('','$kode_transaksi','$kode_produk','$nama_produk','$harga','$jumlah','')");
		
	}

	function update_pesanan($id,$kd)
	{
		return $this->db->query("update tbl_produk set stok = stok +'$kd' where kode_produk='$id'");
		//return $this->db->query("update tbl_produk set laku = laku -'$kd' where kode_produk='$id'");
		//return $this->db->query("update tbl_produk set status = '0' where kode_produk='$id'");
		
	}

	function delete_transaksi($id)
	{
		return $this->db->query(" DELETE tbl_transaksi_header , tbl_transaksi_detail FROM tbl_transaksi_header INNER JOIN tbl_transaksi_detail ON tbl_transaksi_detail.kode_transaksi = tbl_transaksi_header.kode_transaksi  WHERE tbl_transaksi_header.kode_transaksi = '$id'");
		
	}

	function InsertTransaksiHeader($kode_trans,$penerima,$email,$alamat,$no_telepon,$tanggal_transfer) {
		return $this->db->query("insert into tbl_transaksi_header values('','$kode_trans','$penerima','$email','$alamat','$no_telepon','','$tanggal_transfer')");
	}
	function GetDetailTransaksi($kode_transaksi) {
		return $this->db->query("select a.*,b.* from tbl_transaksi_detail a join tbl_produk b on a.kode_produk=b.kode_produk where a.kode_transaksi='$kode_transaksi' order by id_produk desc ");
		
	}

}