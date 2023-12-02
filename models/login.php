<?php
mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);
define('DEBUG_MODE', true); // Atau false untuk mode produksi

try {
    $link = mysqli_connect("localhost", "root", "", "");
    mysqli_select_db($link, "db_bioskop");
} catch (mysqli_sql_exception $e) {
    die("Connection failed: " . $e->getMessage());
}

session_start();

if (isset($_POST['login'])) {
    $email = $_POST['user']; // Ganti 'user' dengan nama yang sesuai pada formulir
    $password = $_POST['pass'];

    $stmt = null;

    try {
        $sql5 = "SELECT * FROM member WHERE email = ?";
        $stmt = mysqli_prepare($link, $sql5);
        mysqli_stmt_bind_param($stmt, "s", $email);
        mysqli_stmt_execute($stmt);

        $result = mysqli_stmt_get_result($stmt);
        $row5 = mysqli_fetch_assoc($result);

        if (!$row5 || !password_verify($password, $row5['password'])) {
            echo "<script>alert('Gagal Login !!')</script>";
            echo "<script>document.location = '../index.php'</script>";
        } else {
            $_SESSION['id'] = $row5['id_member'];
            echo "<script>alert('Anda Berhasil login')</script>";
            echo "<script>document.location = '../index.php'</script>";
        }

    } catch (mysqli_sql_exception $e) {
        error_log('error: ' . $e->getMessage());
        if (defined('DEBUG_MODE') && DEBUG_MODE) {
            throw $e;
        }
    } finally {
        if ($stmt !== null) {
            mysqli_stmt_close($stmt);
        }
    }
}
?>
