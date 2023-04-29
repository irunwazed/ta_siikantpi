<div class="row-fluid">
					<div class="span12">
						
						<div class="portlet box blue">
							<div class="portlet-title">
								<div class="caption"><i class="icon-reorder"></i>Edit Produk</div>
								<div class="tools">
									<a href="javascript:;" class="collapse"></a>
									
								</div>
							</div>
							<div class="portlet-body form">
								
								<div id="form_sample_2" class="form-horizontal">
								
								<?php echo form_open_multipart('arsip/pemasar_update/','class="form-horizontal"'); ?>
									<input type="hidden" name='id_pemasar' value="<?php echo $id_pemasar;?>"> 

									<div class="control-group">
										<label class="control-label">Nama </label>
										<div class="controls">
											<input type="text" name="nama_pemasar" id="nama_pemasar" class="span6 m-wrap" value="<?php echo $nama_pemasar;?>" />
										</div>
									</div>

									<div class="control-group">
										<label class="control-label">Alamat</label>
										<div class="controls">
											<input type="text" name="alamat_pemasar" id="alamat_pemasar" class="span6 m-wrap" value="<?php echo $alamat_pemasar;?>" />
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">No HP</label>
										<div class="controls">
											<input type="text" name="no_hp_pemasar" id="no_hp_pemasar" class="span6 m-wrap" value="<?php echo $no_hp_pemasar;?>" />
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">NIK</label>
										<div class="controls">
											<input type="text" name="nik_pemasar" id="nik_pemasar" class="span6 m-wrap" value="<?php echo $nik_pemasar;?>"/>
										</div>
									</div>

									<div class="form-actions">
										<button type="submit" id="simpan" class="btn green"><i class="icon-ok"></i> Update</button>
										<a href="<?php echo base_url();?>arsip/pemasar" class="btn white"><i class="icon-long-arrow-left"></i> Kembali</a>
										
									</div>
									<?php echo form_close(); ?>
								</div>
								
							</div>
						</div>
						
					</div>
				</div>