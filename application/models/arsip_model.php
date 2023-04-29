<?php

class arsip_model extends CI_Model {

	///Pemasar Awal///
    function GetPemasar() {
		return $this->db->query("select *from tbl_pemasar  order by id_pemasar desc");
	}
	function DeletePemasar($id) {
		return $this->db->query("delete from tbl_pemasar where id_pemasar='$id'");
		}
	
	function GetpemasarEdit($id) {
		return $this->db->query("select * from tbl_pemasar where id_pemasar='$id' ");
		}

	function GetPemasarCari($cari) {
			return $this->db->query("select * from tbl_pemasar  where alamat_pemasar like '%".$cari."%' or nama_pemasar like '%".$cari."%' or no_hp_pemasar like '%".$cari."%' or nik_pemasar like '%".$cari."%' order by id_pemasar desc"); 
		} 
	///Pemasar Akhir///
}