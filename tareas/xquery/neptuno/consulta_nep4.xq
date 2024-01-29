<html>
  <body>
    <table border="2">
      <tr>
        <th>Referencia</th>
        <th>Nombre</th>
        <th>Dirección</th>
      </tr>
        {
          for $cliente in doc ("neptuno.xml") //clientes
          where $cliente/CiudadCliente = "París"
          return
            <resultado>
              <tr>
                <td>{$cliente/RefCliente}</td>
                <td>{$cliente/NombreCliente}</td>
                <td>{$cliente/DireccionCliente}</td>
              </tr>
            </resultado>
        }
      </table>
   </body>
</html>