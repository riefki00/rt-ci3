<div class="container-fluid">
    <div class="alert alert-success" role="alert">
        <h5><i class="fas fa-fw fa-book"></i> Halaman Administrasi Warga</h5>
    </div>
    <?= $this->session->flashdata('pesan') ?>
    <?= anchor('admin/administrasi/add','<button class="btn btn-sm btn-primary mb-3"><i class="fas fa-plus"> Tambah Data Warga</i></button>') ?>
    <table class="table table-bordered table-striped table-hover">
        <tr>
            <th>NO</th>
            <th>NAMA WARGA</th>
            <th>NKK</th>
            <th>NIK</th>
            <th>JENIS KELAMIN</th>
            <th>ALAMAT</th>
            <th>TELEPON</th>
            <th colspan="2">AKSI</th>
            <?php
            $no = 1;
            foreach ($admin_warga as $aw) : ?>
            <tr>
                <td width="20px"><?= $no++ ?></td>
                <td><?= $aw->nm_warga ?></td>
                <td><?= $aw->nkk ?></td>
                <td><?= $aw->nik ?></td>
                <td><?= $aw->jk ?></td>
                <td><?= $aw->alamat ?></td>
                <td><?= $aw->telp ?></td>
                <td width="20px"><?= anchor('admin/administrasi/edit/'.$aw->id_warga,'<div class="btn btn-sm btn-primary"><i class="fa fa-edit"></i></div>') ?></td>
                <td width="20px"><?= anchor('admin/administrasi/delete/'.$aw->id_warga,'<div class="btn btn-sm btn-danger"><i class="fa fa-trash"></i></div>') ?></td>
            </tr>
            <?php endforeach; ?>
        </tr>
    </table>
</div>