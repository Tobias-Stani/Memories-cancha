<?php include("db.php")?>
<?php include("includes/header.php")?>
<?php include("includes/navAbajoDelHeader.php")?>
<?php include("save-task.php")?>

<div class="container p-4">

<!-- TABLA DE TAREAS -->
        
<div class="col-md-12">
    <h1 class="title mb-5">Historial partidos vistos en cancha</h1>
    <div class="table-responsive">
        <table id="myTable" class="table"> 
            <thead>
                <tr>
                    <th scope="col">PARTIDOS</th>
                    <th scope="col">RESULTADO</th>
                    <th scope="col">FECHA</th>
                    <th scope="col">COMPETENCIA</th>
                    <th scope="col">LINK</th>
                    <th scope="col">ACCIONES</th>
                </tr>
            </thead>
            <tbody>
                <?php
                    $query = "SELECT * FROM partidos ORDER BY fecha DESC";
                    $resultTask = mysqli_query($conn, $query);

                    while ($row = mysqli_fetch_assoc($resultTask)) {
                        $rowColorClass = ''; // Puedes definir la clase CSS según tus necesidades

                        echo '<tr class="' . $rowColorClass . '">';
                        echo '<td>' . $row['partido'] . '</td>';
                        echo '<td>' . $row['resultado'] . '</td>';
                        echo '<td>' . $row['fecha'] . '</td>';
                        echo '<td>' . $row['competencia'] . '</td>';
                        echo '<td><a href="' . $row['link'] . '" class="btn btn-primary" target="_blank">Resumen</a></td>';
                        echo '<td>';
                        echo '<a href="edit.php?id=' . $row['id'] . '" class="btn btn-dark">Editar</a>';
                        echo '</td>';
                        echo '</tr>';
                    }
                ?>
            </tbody>
        </table>
    </div>
</div>
 <!-- TABLA DE TAREAS -->
        
        <!--TABLA PARTIDO MAS RECIENTE -->
        <div class="col-md-12">
            
        <h1 class="title mb-5 mt-5">Partido mas reciente</h1>
        
        <div class="table-responsive">
            <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">PARTIDOS</th>
                                <th scope="col">RESULTADO</th>
                                <th scope="col">FECHA</th>
                                <th scope="col">COMPETENCIA</th>
                                <th scope="col">LINK</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                                $query = "SELECT * FROM partidos ORDER BY fecha DESC LIMIT 1";
                                $resultTask = mysqli_query($conn, $query);
                                
                                if ($row = mysqli_fetch_assoc($resultTask)) {
                                    // Aquí dentro del bucle while, puedes acceder a los datos del partido más reciente
                                    $rowColorClass = ''; // Puedes definir la clase CSS según tus necesidades
                                    
                                    echo '<tr class="' . $rowColorClass . '">';
                                    echo '<td>' . $row['partido'] . '</td>';
                                    echo '<td>' . $row['resultado'] . '</td>';
                                    echo '<td>' . $row['fecha'] . '</td>';
                                    echo '<td>' . $row['competencia'] . '</td>';
                                    echo '<td><a href="' . $row['link'] . '" class="btn btn-primary" target="_blank">Resumen</a></td>';
                                    echo '</tr>';
                                } else {
                                    echo '<tr><td colspan="6">No hay partidos registrados</td></tr>';
                                }
                                ?>

                        </tbody>
                </table>
            </div>
        </div>
        <!--TABLA PARTIDO MAS RECIENTE -->

        <!-- tabla total partidos -->
        <h1 class="title mb-5 mt-5">Total partidos</h1>
            <?php
            $query = "SELECT COUNT(id) AS total_partidos FROM partidos";
            $result = mysqli_query($conn, $query);
            
            if ($row = mysqli_fetch_assoc($result)) {
                $totalPartidos = $row['total_partidos'];
                echo '<tr>';
                echo '<td colspan="6">Total de partidos: ' . $totalPartidos . '</td>';
                echo '</tr>';
            } else {
                echo '<tr><td colspan="6">No hay partidos registrados</td></tr>';
            }
            ?>

        <!-- tabla total partidos -->

        <!-- partidos en el anio -->
        
        <h1 class="title mb-5 mt-5">Total partidos por año</h1>
            <?php
            $query = "SELECT YEAR(fecha) AS anio, COUNT(*) AS total_partidos FROM partidos GROUP BY YEAR(fecha) ORDER BY anio DESC";
            $result = mysqli_query($conn, $query);
            ?>

            <table class="table">
                <thead>
                    <tr>
                        <th>Año</th>
                        <th>Total de Partidos</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    while ($row = mysqli_fetch_assoc($result)) {
                        echo '<tr>';
                        echo '<td>' . $row['anio'] . '</td>';
                        echo '<td>' . $row['total_partidos'] . '</td>';
                        echo '</tr>';
                    }
                    ?>
                </tbody>
            </table>

        <!-- partidos en el anio -->
        
    </div>

    
        <script>
        $(document).ready(function() {
            $('#myTable').DataTable({
                "paging": true,       
                "pageLength": 10 , 
                autoFill: true,
            });
        });
        </script>

<?php include("includes/footer.php")?>
        
        
        
        
        
        
        
        
        
        
        
        