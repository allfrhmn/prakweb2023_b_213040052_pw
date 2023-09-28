<?php
// Memerlukan 'functions.php' dari file settings untuk menampilkan beberapa fungsi tersebut
include 'settings/functions.php';

// Ambil data dari tabel buku
$buku = query("SELECT id_buku, gambar, judul, pengarang, penerbit, tahun, kategori FROM buku");

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PictBooks</title>
    <!-- Link Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <!-- Kustomisasi CSS -->
    <style>
        .card {
            margin: 10px;
        }
    </style>
</head>

<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
        <div class="container-fluid">
            <a class="fw-bold align-middle navbar-brand" href="index.php">ThePictim</a>
        </div>
    </nav>

    <!-- Awal Section -->
    <section class="main">
        <div class="container my-3">
            <h1 class="mb-4 text-center">Produk Buku</h1>
            <div class="container">
                <div class="row justify-content-center">
                    <?php foreach ($buku as $bk) : ?>
                        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
                            <div class="card mb-3" style="max-width: 300px; padding: 10px;"> 
                                <img src="img/<?= $bk['gambar']; ?>" class="card-img-top mx-auto d-block" style="max-width: 200px; height: 200px; object-fit: scale-down;">
                                <div class="card-body">
                                    <h5 class="card-title"><?= $bk['judul']; ?></h5>
                                    <p class="card-text">
                                        <?= $bk['kategori']; ?>
                                    </p>
                                    <p class="card-text">
                                        <?= $bk['pengarang']; ?>, <?= $bk['tahun']; ?>
                                    </p>
                                    <a href="#" class="btn btn-dark">Detail</a>
                                </div>
                            </div>
                        </div>
                    <?php endforeach; ?>
                </div>
            </div>
        </div>
    </section>
    <!-- Section Akhir -->

    <!-- Footer -->
    <footer class="bg-light py-4">
        <div class="container">
            <div class="row mt-3">
                <div class="col-md-12 text-center">
                    &copy; 2023 PictBooks. All Rights Reserved.
                </div>
            </div>
        </div>
    </footer>

    <!-- Script Bootstrap -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>

</html>