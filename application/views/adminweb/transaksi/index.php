<div class="row-fluid">
					<div class="span12">
						<!-- BEGIN EXAMPLE TABLE PORTLET-->
						<div class="portlet box blue">
							<div class="portlet-title">
								<div class="caption"><i class="icon-edit"></i>Transaksi Proses</div>
								<div class="tools">
									<a href="javascript:;" class="collapse"></a>
									
								</div>
							</div>
							<div class="portlet-body">
								<div class="table-toolbar">
									<div class="btn-group">
										
										
									</div>
									<?php 
									
													 if($this->session->flashdata('berhasil')){
														echo "<div class='alert alert-block alert-success show'>
															  <button type='button' class='close' data-dismiss='alert'>×</button>
																 <span>Transaksi Sudah Di Proses</span>
																</div>";
													}
													
							?>
								</div>
								<table class="table table-striped table-hover table-bordered" id="sample_editable_1">
									<thead>
										<tr>
											<th>No</th>
											<th>Kode Transaksi</th>
											<th>Nama Penerima</th>
											<!--<th>Email</th>-->
											<th>Alamat</th>
											<th>No Telp</th>
											<th>Batas Pembayaran</th>
											<th>Aksi</th>
											
										</tr>
									</thead>
									<tbody>
										<?php
										$no=1;
										if ($data_transaksi->num_rows()>0) {
											foreach ($data_transaksi->result_array() as $tampil) { ?>
										<tr >
										<?php 
										if($tampil['status']==2)
										{
											echo '<td><a class="btn green" href="">'.$no.'</a></td>';
										}
										else{
											echo '<td><a class="btn red" href="'.base_url('adminweb/transaksi_kemas').'/'.$tampil['id_transaksi_header'].'">'.$no.'</a></td>';
										}
										?>
											<td><?php echo $tampil['kode_transaksi'];?></td>
											<td><?php echo $tampil['penerima'];?></td>
											<!--<td><?php echo $tampil['email'];?></td>-->
											<td><?php echo $tampil['alamat'];?></td>

											<td><a href="<?php echo base_url('adminweb/transaksi_KirimPesan');?>/<?php echo $tampil['id_transaksi_header']?>/<?php echo $tampil['kode_transaksi'];?>"><b><?php echo $tampil['no_telepon'];?></a></td>
											<?php
											date_default_timezone_set('Asia/Jakarta'); 

											$tgl = date('Y-m-d H:i:s');

											$waktu = date('Y-m-d H:i:s',(mktime(date('H')+12,date('i'),date('s'),date("m"), date("d")-1, date("Y"))));

										

											if($tgl >= $tampil['tanggal_transfer']) 
											{
												echo '<td class="portlet box red"><div class="portlet-title">pembayaran Terlewat</div></td>';
											}

											else{
												echo '<td>'.$tampil['tanggal_transfer'].'</td>';
											
											}
											?>
										
											
											<td>						
												<a class="btn green" href="<?php echo base_url();?>adminweb/transaksi_proses/<?php echo $tampil['id_transaksi_header'];?>/<?php echo $tampil['kode_transaksi'];?>"><i class="icon-edit"></i> Proses</a>
												<a class="btn blue" href="<?php echo base_url();?>adminweb/transaksi_detail/<?php echo $tampil['id_transaksi_header'];?>/<?php echo $tampil['kode_transaksi'];?>"><i class="icon-search"></i> Detail</a>
												<a class="btn red" href="<?php echo base_url();?>adminweb/transaksi_hapus/<?php echo $tampil['kode_transaksi'];?>"><i class="icon-trash"></i></a>
											
											</td>
										</tr>
										<?php
										$no++;
										}
										}
										
										else { ?>
										<tr>
											<td colspan="10">No Result Data</td>
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

				


				


