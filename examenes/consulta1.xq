<html>
  <body>
    <table border="2">
      <tr>
        <th>ReferenciaArt</th>
        <th>ReferenciaProv</th>
        <th>Nombre</th>
        <th>Categoría</th>
        <th>Precio unidad</th>
        <th>Unidades</th>
      </tr>
        {
          for $art in doc ("neptunoExamen.xml") //articulo
            for $prov in doc ("neptunoExamen.xml") //proveedor
              where ($art/ReferenciaProveedor = $prov/ReferenciaProveedor) and ($art/NombreCategoria = 'Bebidas')
           
            return
                <tr>
                  <td>{$art/RefArticulo}</td>
                  <td>{$art/ReferenciaProveedor}</td>
                  <td>{$art/NombreArticulo}</td>
                  <td>{$art/NombreCategoria}</td>
                  <td>{$art/PrecioUnidad}</td>
                  <td>{$art/UnidadesExistencia}</td>
                </tr>
        }
      </table>
   </body>
</html>