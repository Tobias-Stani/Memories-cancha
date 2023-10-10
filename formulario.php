<?php include('includes/header.php')?>
<?php include('includes/navAbajoDelHeader.php')?>

<style>
    input[type="text"], input[type="date"] {
        text-transform: uppercase;
    }

    /* Excluye la transformación de mayúsculas para el campo de enlace */
    input.no-uppercase {
        text-transform: none;
    }
</style>

<div class="col md-4 m-5 p-5">

    <!-- alerta de guardado -->
    <?php if(isset($_SESSION['message'])) { ?>
        <div class="alert alert-success alert-dismissible fade show" role="alert">
            <?= $_SESSION['message']?>
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
        <?php
        unset($_SESSION['message']); // Eliminar la variable de sesión después de mostrar la alerta
    } ?>
    <!-- alerta de guardado -->

    <div class="card card-body">
        <form action="save-task.php" method="post">
            <div class="form-group">
                <input type="text" name="partido" class="form-control m-3 p-2" placeholder="Partido" autofocus>
            </div>
            <div class="form-group">
                <input type="text" name="resultado" class="form-control m-3 p-2" placeholder="Resultado" autofocus>
            </div>
            <div class="form-group">
                <input type="date" name="fecha" rows="2" class="form-control m-3 p-2" placeholder="Fecha"></input>
            </div>
            <div class="form-group">
                <input type="text" name="competencia" class="form-control m-3 p-2" placeholder="Competencia" autofocus>
            </div>
            <div class="form-group">
                <input type="text" name="link" class="form-control m-3 p-2 no-uppercase" placeholder="Link" autofocus>
            </div>
            <input type="submit" class="btn btn-success btn-block mt-1" name="save-task" value="Guardar">
        </form>
    </div>

</div>

<?php include('includes/footer.php')?>
