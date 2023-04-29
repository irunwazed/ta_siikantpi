<div class="row-fluid">
	
					<div class="span12">
						<!-- BEGIN EXAMPLE TABLE PORTLET-->
						<div class="portlet box blue">
							<div class="portlet-title">
						
								<div class="caption"><i class="icon-edit"></i>Data Pengolah dan Pemasar Hasil Perikanan</div>
								<div class="tools">
									<a href="javascript:;" class="collapse"></a>
									
								</div>
							</div>
							<div class="portlet-body">
								<div class="table-toolbar">
									<div class="btn-group">
									
										
										<a  class="btn green" href="<?php echo base_url();?>arsip/pemasar_tambah" >
													Add New <i class="icon-plus"></i>
													</a> 
									</div>
									<?php 
									
													if ($this->session->flashdata('message')){
														echo "<div class='alert alert-block alert-error show'>
															  <button type='button' class='close' data-dismiss='alert'>×</button>
																 <span>Produk Berhasil Dihapus</span>
																</div>";
													}
													else if($this->session->flashdata('berhasil')){
														echo "<div class='alert alert-block alert-success show'>
															  <button type='button' class='close' data-dismiss='alert'>×</button>
																 <span>Produk Berhasil Disimpan</span>
																</div>";
													}
													else if($this->session->flashdata('update')){
														echo "<div class='alert alert-block alert-success show'>
															  <button type='button' class='close' data-dismiss='alert'>×</button>
																 <span>Produk Berhasil Diupdate</span>
																</div>";
													}
												
							?>
								<div class="col-sm-2">
						<?php echo form_open('arsip/cari');?>
						<div class="search_box pull-right">
							<input type="text" name="cari" placeholder="Search"/>
						</div>
						<?php echo form_close();?>
					</div>
								</div>
								<h2>Hasil Pencarian</h2>
								<table class="table table-striped table-hover table-bordered" id="sample_editable_1">
									<thead>
										<tr>
											<th>No</th>
											<th>Nama</th>
											<th>No HP</th>
											<th>Alamat</th>
											<th>NIK</th>
											<th>Action</th>
											
										</tr>
									</thead>
									<tbody>
										<?php
										$no=1;
										if ($pemasar_cari->num_rows()>0) {
											foreach ($pemasar_cari->result_array() as $tampil) { ?>
										<tr >
											<td><?php echo $no;?></td>
											<td><?php echo $tampil['nama_pemasar'];?></td>
											<td><?php echo $tampil['no_hp_pemasar'];?></td>
											<td><?php echo $tampil['alamat_pemasar'];?></td>
											<td><?php echo $tampil['nik_pemasar'];?></td>
											
											<td><a class="btn green" href="<?php echo base_url();?>arsip/pemasar_edit/<?php echo $tampil['id_pemasar'];?>"><i class="icon-edit"></i> Edit</a>
											<a class="btn red" href="<?php echo base_url();?>arsip/pemasar_delete/<?php echo $tampil['id_pemasar'];?>" onclick="return confirm('Yakin Ingin Menghapus <?php echo $tampil['nama_pemasar'];?>?')"><i class="icon-trash"></i> Delete</a>


										</td>
										</tr>
										
										<?php
										$no++;
										}
										}
										
										else { ?>
										<tr>
											<td colspan="8">No Result Data</td>
										</tr>
										<?php

										}
										?>
										
									</tbody>
								</table>
							</div>
						</div>
						
					</div>
				</div>

				


				


