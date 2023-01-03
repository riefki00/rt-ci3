<div class="container-fluid">
<?= $this->session->flashdata('pesan') ?>
    <div class="alert alert-success" role="alert">
        <h5><i class="fas fa-fw fa-tachometer-alt"></i> Dashboard</h5>
    </div>
    <div class="alert alert-success" role="alert">
        <h5 class="alert-heading">Selamat Datang!</h5>
        <p>Hai, <strong><?= $username; ?></strong>. Anda telah berhasil login di Sistem Informasi RT sebagai <strong><?= $level; ?></strong>.</p>
        <hr>
    <button type="button" class="btn btn-sm btn-info" data-toggle="modal" data-target="#exampleModal">
        <i class="fas fa-cogs"></i>  Control Panel
        </button>
    </div>
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
        <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel"><i class="fas fa-cogs"></i>  Control Panel</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
            </button>
        </div>
        <div class="modal-body">
            <div class="row">
                <div class="col-md-4 text-info text-center">
                    <a href="<?= base_url() ?>"><p class="nav-link text-info">FORM LAPOR</p>
                    <i class="fas fa-3x fa-edit"></i></a>
                </div>
                <div class="col-md-4 text-info text-center">
                    <a href="<?= base_url() ?>"><p class="nav-link text-info">DATA DIRI</p>
                    <i class="fas fa-3x fa-user"></i></a>
                </div>
                <div class="col-md-4 text-info text-center">
                    <a href="<?= base_url() ?>"><p class="nav-link text-info">KEUANGAN RT</p>
                    <i class="fas fa-3x fa-chart-area"></i></a>
                </div>
            </div>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        </div>
    </div>
</div>