<html>
  <body>
    <table border="2">
      <tr>
        <th>ReferenciaCliente</th>
        <th>NombreCliente</th>
        <th>RefArticulo</th>
      </tr>
        {
          for $art in doc ("neptuno.xml") //articulos
            for $cli in doc ("neptuno.xml" ) //clientes
            where $art/RefCliente = $cli/RefCliente and $art/NombreCategoria = "bebida"
            return
                <tr>
                  <td>{$cli/RefCliente}</td>
                  <td>{$cli/NombreCliente}</td>
                  <td>{$art/RefArticulo}</td>
                </tr>
        }
      </table>
   </body>
</html>