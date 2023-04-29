
<?php session_start() ?>


<div class="portlet box purple">
<div class="portlet-title">
        <div class="caption"><i class="icon-calendar"></i><?php echo $tgl1 ?> Sampai Dengan <?php echo $tgl2 ?></div>
</div>
</div>
<div class="clearfix">
<div class="">
  <div class="span2">
    <div class="portlet box purple">
      <div class="portlet-title">
        <div class="caption"><i class="icon-calendar"></i>Jumlah Produk</div>
      </div>
      <div class="portlet-body">
        <div class="row-fluid">
          <div class="alert">
            <h3 class="bold"><?php echo $total_produk; ?></h3>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>


<div class="">
  <div class="span4">
    <div class="portlet box blue">
      <div class="portlet-title">
        <div class="caption"><i class="icon-calendar"></i>Jumlah Traansaksi</div>
      </div>
      <div class="portlet-body">
        <div class="row-fluid">
          <div class="alert">
            <h3 class="bold"><?php echo $total_transaksi?></h3>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>


<div class="">
  <div class="span4">
    <div class="portlet box green">
      <div class="portlet-title">
        <div class="caption"><i class="icon-dollar"></i>Total Pendapatan</div>
      </div>
      <div class="portlet-body">
        <div class="row-fluid">
          <div class="alert">
            <h3 class="bold">Rp.<?php echo $this->cart->format_number($total_pendapatan);?></h3>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
</div>

<div class="">
  <div class="span3">
    <div class="portlet box yellow">
      <div class="portlet-title">
        <div class="caption"><i class="icon-search"></i>Cari</div>
      </div>
      <div class="portlet-body">
        <div class="row-fluid">
          <div class="alert">
              <form method="POST" action="<?php echo base_url('adminweb/home_cari');?>">
              <p>Dari Tanggal</p><input type="date" name="tanggal1">
              <p>Sampai Tanggal</p><input type="date" name="tanggal2">
              <button class="btn yellow" type="submit"><i class="icon-edit"></i>Cari</button>
              </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
</div>