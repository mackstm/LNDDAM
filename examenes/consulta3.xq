<html>
  <body>
    <table border="2">
      <tr>
        <th>ReferenciaCli</th>
        <th>NombreCli</th>
        <th>Dirección</th>
        <th>Ciudad</th>
      </tr>
        {
          for $cli in doc ("neptunoExamen.xml") //cliente
            where $cli/CiudadCliente = 'Madrid'
           
            return
                <tr>
                 <td>{$cli/RefCliente}</td>
                 <td>{$cli/NombreCliente}</td>
                 <td>{$cli/DireccionCliente}</td>
                 <td>{$cli/CiudadCliente}</td>
                </tr>
        }
      </table>
   </body>
</html>