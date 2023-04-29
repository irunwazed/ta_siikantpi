<div class="row-fluid">
					<div class="span12">
						<!-- BEGIN EXAMPLE TABLE PORTLET-->
						<div class="portlet box blue">
							<div class="portlet-title">
								<div class="caption"><i class="icon-edit"></i>Produk</div>
								<div class="tools">
									<a href="javascript:;" class="collapse"></a>
									
								</div>
							</div>
							<div class="portlet-body">
								<div class="table-toolbar">
									<div class="btn-group">
										
										<a  class="btn green" href="<?php echo base_url();?>adminweb/produk_tambah" >
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
								</div>
								<table class="table table-striped table-hover table-bordered" id="sample_editable_1">
									<thead>
										<tr>
											<th>No</th>
											<th>Kode Produk</th>
											<th>Nama Pemasar</th>
											<th>Harga</th>
											<th>Stok</th>
											<th>Jenis Ikan</th>
											<th>Kategori</th>
											<th>Tanggal Kadaluarsa</th>
											<th>No HP Pemasar</th>
											<th>Action</th>
											
										</tr>
									</thead>
									<tbody>
										<?php
										$no=1;
										if ($data_produk->num_rows()>0) {
											foreach ($data_produk->result_array() as $tampil) { ?>
										<tr>
											<td><?php echo $no;?></td>
											<td><?php echo $tampil['kode_produk'];?></td>
											<td><?php echo $tampil['nama_nelayan'];?></td>
											
											<td><?php echo $tampil['harga'];?></td>
											<?php
											if($tampil['stok']<=0){
												echo'<td class="portlet box red"><div class="portlet-title">'.$tampil['stok'].'</div></td>';
											}
											else{
												echo'<td>'.$tampil['stok'].'</td>';
											}
											?>
											<td><?php echo $tampil['nama_brand'];?></td>
											<td><?php echo $tampil['nama_kategori'];?></td>
											<?php
											date_default_timezone_set('Asia/Jakarta'); 
											$a =date('Y-m-d');
											if($a>=$tampil['tanggal']){
												echo'<td class="portlet box red"><div class="portlet-title">'.$tampil['tanggal'].'</div></td>';
											}
											else{
												echo'<td>'.$tampil['tanggal'].'</td>';
											}
											?>

											<?php
											if($tampil['status']==1)
											{
												echo '<td><div><a class = "btn green" href="'.base_url().'adminweb/produk_proses/'.$tampil['id_produk'].'">Kirim Pesan</a></div></td>';
											}
											else
											{
												echo '<td class="bold "><a href="'.base_url().'adminweb/produk_proses/'.$tampil['id_produk'].'">'.$tampil['nelayan'].'</a></td>';
											}
											?>
										<td>
											<a class="btn green" href="<?php echo base_url();?>adminweb/produk_edit/<?php echo $tampil['id_produk'];?>"><i class="icon-edit"></i> Edit</a>
											<a class="btn red" href="<?php echo base_url();?>adminweb/produk_delete/<?php echo $tampil['id_produk'];?>" onclick="return confirm('Yakin Ingin Menghapus <?php echo $tampil['nama_nelayan'];?>?')"><i class="icon-trash"></i> Delete</a>


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

				


				


