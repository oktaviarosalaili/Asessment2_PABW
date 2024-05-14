<?php
// Koneksi ke database
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "e-literasi_db";

// Membuat koneksi
$conn = new mysqli($servername, $username, $password, $dbname);

// Cek koneksi
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Query untuk mengambil data dari tabel buku
$sql = "SELECT Book_ID, Judul, User_ID, Genre, Sinopsis FROM buku";
$result = $conn->query($sql);

if (!$result) {
    die("Query failed: " . $conn->error);
}

$books = array();

if ($result->num_rows > 0) {
    // Output data untuk setiap row
    while($row = $result->fetch_assoc()) {
        $books[] = $row;
    }
}

// Mengeluarkan data dalam format JSON
header('Content-Type: application/json');
echo json_encode($books);

$conn->close();
?>
