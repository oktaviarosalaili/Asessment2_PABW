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

if (isset($_GET['Book_ID'])) {
    $bookID = $_GET['Book_ID'];

    // Query untuk menghapus data buku
    $sql = "DELETE FROM buku WHERE Book_ID = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("i", $bookID);

    if ($stmt->execute()) {
        echo "Data berhasil dihapus.";
    } else {
        echo "Gagal menghapus data.";
    }

    $stmt->close();
} else {
    echo "ID buku tidak ditemukan.";
}

$conn->close();
?>
