<?php
include 'koneksi.php';
?>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Tampilan Matakuliah</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');
    body{
      font-family: "Poppins"; 
    }
    </style>
</head>

<body>
<nav class="navbar navbar-expand-lg bg-body-tertiary" data-bs-theme="dark">
  <div class="container-fluid ">
    <a class="navbar-brand" href="#">KRS Mahasiswa</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" href="from-mahasiswa.php">Mahasiswa</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="from-matakuliah.php">Mata Kuliah</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="from-krs.php">KRS</a>
        </li>
      </ul>
    </div>
  </div>
</nav>    
    <div class="container mt-5">
        <div class="container-fluid bg-secondary text-light d-flex justify-content-between align-items-center mb-3 p-3 rounded-3 ">
            <h2>Daftar Mata Kuliah</h2>
            <a href="from-matakuliah.php" class="btn btn-warning">Tambah Mata Kuliah</a>
        </div>
        <table class="table table-hover">
            <thead class="thead-dark">
                <tr>
                    <th class="text-center">Kode MK</th>
                    <th class="text-center">Nama Mata Kuliah</th>
                    <th class="text-center">Jumlah SKS</th>
                    <th class="text-center">Aksi</th>
                </tr>
            </thead>
            <tbody>
                <?php
                $sql = "SELECT * FROM matakuliah";
                $result = mysqli_query($conn, $sql);
                while ($row = mysqli_fetch_assoc($result)) {
                    echo "<tr>";
                    echo "<td class='text-center'>" . $row['kodemk'] . "</td>";
                    echo "<td class='text-center'>" . $row['nama_matakuliah'] . "</td>";
                    echo "<td class='text-center'>" . $row['jumlah_sks'] . "</td>";
                    echo "<td class='text-center'><a href='edit-matakuliah.php?kodemk=" . $row['kodemk'] . "' class='btn btn-primary'>Edit</a> | <a href='delete-matakuliah.php?kodemk=" . $row['kodemk'] . "' class='btn btn-danger' onclick=\"return confirm('Are you sure?')\">Delete</a></td>";
                    echo "</tr>";
                }
                ?>
            </tbody>
        </table>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>

</html>