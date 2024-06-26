<?php
include 'lib/lib.php';

$sql = '
SELECT 
    kurir.TotalBerat_Barang, 
    pembeli.kota, 
    avg_subquery.rata_rata
FROM 
    kurir 
INNER JOIN 
    pembeli ON kurir.nomortelp = pembeli.nomortelp
CROSS JOIN (
    SELECT AVG(TotalBerat_Barang) AS rata_rata
    FROM kurir
    INNER JOIN pembeli ON kurir.nomortelp = pembeli.nomortelp
    WHERE pembeli.kota = "Bandung"
) AS avg_subquery
WHERE 
    pembeli.kota = "Bandung"
';

$result = $mysqli->query($sql);

include 'views/v_index.php';
?>
