<center>
    <h1>BASIS DATA ONLINE_SHOP</h1>
    <p>Menampilkan pembeli yang hanya dari Bandung dan berapa rata-rata berat barang mereka</p>
    <table border="1" style="border:2px solid green;">
    <thead>
        <tr>
            <th>No</th>
            <th>Total berat barang</th>
            <th>Kota</th>
            <th>Rata-rata</th>
        </tr>
    </thead>

    <tbody>
    <?php
        $i = 1;
        while ($row = $result->fetch_array()) {
            ?>
        <tr>
            <td><?= $i++ ?></td>
            <td><?= $row['TotalBerat_Barang']?></td>
            <td><?= $row['kota']?></td>
            <td><?= $row['rata_rata']?></td>
        </tr>
        <?php } ?>
    </tbody>
</table>