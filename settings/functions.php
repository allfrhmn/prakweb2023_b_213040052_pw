<?php  

// Koneksi ke basis data
function koneksi() 
{
    $conn = mysqli_connect('localhost', 'root', '', 'prakweb2023_b_213040052') or die('Koneksi Gagal!');

    return $conn;
}

// Membuat fungsi query
function query($sql) 
{
    $conn = koneksi();
    $result = mysqli_query($conn, $sql) or die(mysqli_error($conn));
    
    $rows = [];
    while($row = mysqli_fetch_assoc($result)) 
    {
        $rows[] = $row;
    }
    
    // var_dump($rows);

    return $rows;
}