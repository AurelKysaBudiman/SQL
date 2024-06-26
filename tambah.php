<?php
    include'lib/lib.php';

    if ($_SERVER ['REQUEST_METHOD'] == 'POST'){
        $nis                    = $_POST['nis'];
        $nama_lengkap           = $_POST['nama_lengkap'];
        $jenis_kelamin          = $_POST['jenis_kelamin'];
        $kelas                  = $_POST['kelas'];
        $jurusan                = $_POST['jurusan'];
        $Alamat                 = $_POST['Alamat'];
        $Golongan_darah         = $_POST['Golongan_darah'];
        $Nama_ibu_kandung       = $_POST['Nama_ibu_kandung'];

        $sql = "INSERT INTO siswa (nis, nama_lengkap, jenis_kelamin, kelas, jurusan, Alamat, Golongan_darah, Nama_ibu_kandung) VALUES ('$nis', '$nama_lengkap', '$jenis_kelamin', '$kelas', '$jurusan', '$Alamat', '$Golongan_darah', '$Nama_ibu_kandung')";

        $mysqli->query($sql) or die ($mysqli->error);

        header('location: index.php');
    }
    include'views/v_tambah.php';