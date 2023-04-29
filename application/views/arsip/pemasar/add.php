<div class="row-fluid">
					<div class="span12">
						<!-- BEGIN VALIDATION STATES-->
						<div class="portlet box blue">
							<div class="portlet-title">
								<div class="caption"><i class="icon-reorder"></i>Tambah Data</div>
								<div class="tools">
									<a href="javascript:;" class="collapse"></a>
									
								</div>
							</div>
							<div class="portlet-body form">
								<!-- BEGIN FORM-->
								<?php if(validation_errors()) { ?>
								<div class="alert alert-block alert-error">
								  <button type="button" class="close" data-dismiss="alert">×</button>
									<?php echo validation_errors(); ?>
								</div>
								<?php 
								} 
								?>

								<div id="form_sample_2" class="form-horizontal">
								
									<?php echo form_open_multipart('arsip/pemasar_simpan/','class="form-horizontal"'); ?>
									<div class="control-group">
										<label class="control-label">Nama </label>
										<div class="controls">
											<input type="text" name="nama_pemasar" id="nama_pemasar" class="span6 m-wrap" placeholder="Nama Pemasar..." />
										</div>
									</div>

									<div class="control-group">
										<label class="control-label">Alamat</label>
										<div class="controls">
											<input type="text" name="alamat_pemasar" id="alamat_pemasar" class="span6 m-wrap" placeholder="Alamat Pemasar..." />
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">No HP</label>
										<div class="controls">
											<input type="text" name="no_hp_pemasar" id="no_hp_pemasar" class="span6 m-wrap" placeholder="No hp pemasar..." />
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">NIK</label>
										<div class="controls">
											<input type="text" name="nik_pemasar" id="nik_pemasar" class="span6 m-wrap" placeholder="NIK..." />
										</div>
									</div>
									

									
									<div class="form-actions">
										<button type="submit" id="simpan" class="btn green"><i class="icon-ok"></i> Simpan</button>
										<a href="<?php echo base_url();?>arsip/pemasar" class="btn white"><i class="icon-long-arrow-left"></i> Kembali</a>
										
									</div>
									<?php echo form_close(); ?>
								</div>
								
							</div>
						</div>
						
					</div>
				</div>


