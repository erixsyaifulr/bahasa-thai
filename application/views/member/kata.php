<div class="box">
<div class="box-header">
    <center><h1 class="box-title">Kata</h1></center>
</div>
<div class="box-body">
<div class="row">
<?php
$alfabet = $this->db->query("SELECT * from tbl_kata order by id desc")->result();
    foreach ($alfabet as $row) {

    ?>
    <div class="col-sm-2">
        <div class="card" style="width: 18rem;">
        <!-- <img class="profile-user-img img-responsive img-circle" src="<?= base_url('assets/uploads/images/kata/'.$row->gambar); ?>" style="width:125px; height:125px"> -->
            <div class="card-body">
            <center><h1 class="card-title"><?= $row->kata ?></h1></center>
            <center><p class="card-text"><?= $row->keterangan ?></p></center>
                <center>
                <audio controls style="width: 150px; height:40px;"> 
                    <source src="<?= site_url('assets/uploads/music/kata/'.$row->suara); ?>" type="audio/mpeg">
                </audio>
                </center>
            </div>
        </div>
    </div>
        <?php
        }
?>
</div>
</div>
</div>

