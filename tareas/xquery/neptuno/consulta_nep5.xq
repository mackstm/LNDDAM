<html>
  <body>
    <table border="2">
      <tr>
        <th>ReferenciaArt</th>
        <th>NombreArt</th>
        <th>ReferenciaProv</th>
        <th>NombreProv</th>
        <th>NombreCli</th>
      </tr>
        {
          for $art in doc ("neptuno.xml") //articulos
            for $prov in doc ("neptuno.xml" ) //proveedores
            where $art/ReferenciaProveedor = $prov/ReferenciaProveedor and $art/NombreCategoria = "alimentación"
            return
                <tr>
                  <td>{$art/RefArticulo}</td>
                  <td>{$art/NombreArticulo}</td>
                  <td>{$prov/ReferenciaProveedor}</td>
                  <td>{$prov/NombreProveedor}</td>
                  <td>{//clientes/NombreCliente}</td>
                </tr>
        }
      </table>
   </body>
</html>