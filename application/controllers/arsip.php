<?php

class arsip extends CI_Controller {

	public function __construct() {
		parent::__construct();
		$this->load->model('arsip_model');
	}


	///// Awal Pemasar ///
	public function pemasar() {
		if($this->session->userdata("logged_in")!=="LoginOke") {
			redirect('adminweb');
		}
		else{
		$data['data_pemasar'] = $this->arsip_model->GetPemasar();
		$this->template->load('template','arsip/pemasar/index',$data);
		}
	}
	public function pemasar_tambah(){
		if($this->session->userdata("logged_in")!=="LoginOke") {
			redirect('adminweb');
		}
		else{
			$this->template->load('template','arsip/pemasar/add');
		}
	}
	public function pemasar_simpan() {
		$this->form_validation->set_rules('nama_pemasar','Nama pemasar','required');
		$this->form_validation->set_rules('alamat_pemasar','Alamat pemasar','required');
		$this->form_validation->set_rules('no_hp_pemasar','No_hp_pemasar','required');
		$this->form_validation->set_rules('nik_pemasar','NIK','required');

		
		if ($this->form_validation->run() == FALSE)
		{
			$this->template->load('template','arsip/pemasar/add');
		}
		else {

					$in_data['nama_pemasar'] 		= $this->input->post('nama_pemasar');
					$in_data['alamat_pemasar'] 			= $this->input->post('alamat_pemasar');
					$in_data['no_hp_pemasar'] 		= $this->input->post('no_hp_pemasar');
					$in_data['nik_pemasar'] 		= $this->input->post('nik_pemasar');
				
					$this->db->insert("tbl_pemasar",$in_data);

				$this->session->set_flashdata('berhasil','Data Berhasil Disimpan');
				redirect("arsip/pemasar");
			
		}
	

	}
	
	public function pemasar_edit() {
		if($this->session->userdata("logged_in")!=="LoginOke") {
			redirect('adminweb');
		}
		else{
		$id = $this->uri->segment(3);
		$query = $this->arsip_model->GetpemasarEdit($id);
		foreach ($query->result_array() as $tampil) {
			$data['id_pemasar'] = $tampil['id_pemasar'];
			$data['nama_pemasar'] = $tampil['nama_pemasar'];
			$data['alamat_pemasar'] = $tampil['alamat_pemasar'];
			$data['no_hp_pemasar'] = $tampil['no_hp_pemasar'];
			$data['nik_pemasar'] = $tampil['nik_pemasar'];
			
		}
		$this->template->load('template','arsip/pemasar/edit',$data);
	}
	}
	
	public function pemasar_update() {
		$id['id_pemasar'] = $this->input->post("id_pemasar");
		
			$in_data['nama_pemasar'] = $this->input->post('nama_pemasar');
			$in_data['alamat_pemasar'] = $this->input->post('alamat_pemasar');
			$in_data['no_hp_pemasar'] = $this->input->post('no_hp_pemasar');
			$in_data['nik_pemasar'] = $this->input->post('nik_pemasar');
		
								
		$this->db->update("tbl_pemasar",$in_data,$id);

		$this->session->set_flashdata('update','Data Berhasil Diupdate');
		redirect("arsip/pemasar");
		
	}
	public function pemasar_delete() {
		$id_pemasar = $this->uri->segment(3);
		$this->arsip_model->DeletePemasar($id_pemasar);
		$this->session->set_flashdata('message','Data Berhasil Dihapus');
		redirect('arsip/pemasar');

	}
	public function cari() {
		$cari = $this->input->post('cari');

		if ($cari=="") {

		}
		else {

			$data['pemasar_cari']	= $this->arsip_model->GetPemasarCari($cari);

			$this->template->load('template','arsip/pemasar/cari',$data);

		}
	}
	///// Akhir Pemasar ///
}