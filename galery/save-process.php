<?php include('../includes/header.php') ?>
<?php include('../db.php') ?>

<?php 

    $title = $_POST['title'];
    $description = $_POST['description'];
    $imagen = addslashes(file_get_contents($_FILES['imagen']['tmp_name']));

    $query = "INSERT INTO memories (title, description, image) VALUES ('$title', '$description', '$imagen')";

    $result = mysqli_query($conn, $query); 

    if ($result) {
        // Redirige a galery.php
        header("Location: galery.php");
        exit; // Asegúrate de salir del script después de redirigir
    } else {
        echo "Error al insertar datos: " . mysqli_error($conn);
    }
    


?>


<?php include('../includes/footer.php') ?>