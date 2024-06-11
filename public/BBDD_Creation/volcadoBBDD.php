<?php
// Incluir la biblioteca PhpSpreadsheet
require __DIR__ . '/../vendor/autoload.php';


use PhpOffice\PhpSpreadsheet\IOFactory;


// Establecer conexión a la base de datos
$conexion = new mysqli("localhost", "root", "", "mealmarket");


// Verificar la conexión
if ($conexion->connect_error) {
    echo "Ha ocurrido un error.";
    die("Error de conexión: " . $conexion->connect_error);
    
}


// Ruta al archivo Excel
$ruta_excel = 'C:\xampp\htdocs\TFG\productos-de-supermercados-sample(usada).ods';


// Cargar el archivo Excel
$archivo = IOFactory::load($ruta_excel);


// Seleccionar la primera hoja del archivo Excel
$hoja = $archivo->getActiveSheet();


// Obtener el número de filas en la hoja
$num_filas = $hoja->getHighestRow();


// Preparar la consulta SQL con una sentencia preparada
$sql = "INSERT INTO productos (NOMBRE, SUPERMERCADO, CATEGORIA, PRECIO)
        VALUES (?, ?, ?, ?)";
$stmt = $conexion->prepare($sql);


// Verificar si la preparación fue exitosa
if (!$stmt) {
    die("Error al preparar la consulta: " . $conexion->error);
}


// Vincular parámetros y ejecutar la sentencia para cada fila del archivo Excel
for ($fila = 2; $fila <= $num_filas; $fila++) {
    // Obtener los valores de cada columna en la fila actual
    $supermarket = $hoja->getCell('A' . $fila)->getValue();
    $category = $hoja->getCell('B' . $fila)->getValue();
    $name = $hoja->getCell('C' . $fila)->getValue();
    $price = (float) str_replace(',', '.', $hoja->getCell('E' . $fila)->getFormattedValue()); // Reemplazar comas por puntos


    // Verificar si 'name' está vacío o nulo y pasar al siguiente registro si es así
    if ($name === null || $name === '') {
        echo "Error: El valor de 'name' está vacío o nulo en la fila $fila. Saltando al siguiente registro.";
        continue; // Saltar al siguiente registro
    }

    // Vincular los parámetros y ejecutar la sentencia
    $stmt->bind_param("sssd", $name, $supermarket, $category, $price);
    if (!$stmt->execute()) {
        die("Error al ejecutar la consulta: " . $stmt->error);
    }
}


// Cerrar la conexión a la base de datos
$conexion->close();


echo "Datos insertados correctamente.";
?>
