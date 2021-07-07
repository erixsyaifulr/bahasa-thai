<div class="box">
    <div class="box-header">
        <h3 class="box-title">Data Hasil Latihan</h3>
    </div>
    <div class="box-body table-responsive">
        <table class="table table-bordered table striped table-hover">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Nama User</th>
                    <th>Nama Latihan</th>
                    <th>Nilai</th>
                    <th class="text-center">Aksi</th>
                </tr>
            </thead>
            <tbody>
                <?php $no = 1;
                foreach ($row->result() as $key => $data) { ?>
                    <tr>
                        <td style="text-align: center;"><?= $no++ ?></td>
                        <td><?= $data->first_name ?> <?= $data->last_name ?></td>
                        <td style="text-align: center;"><?= $data->nama_latihan ?></td>
                        <td style="text-align: center;"><?= $data->nilai_bobot ?></td>
                        <td class="text-center">
                            tes
                        </td>
                    </tr>
                <?php
                } ?>
            </tbody>
        </table>
    </div>
</div>