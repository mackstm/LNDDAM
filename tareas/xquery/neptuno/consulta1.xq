<html>
  <body>
    <table border="2">
      <tr>
        <th>ReferenciaArt</th>
        <th>ReferenciaProv</th>
        <th>NombreArt</th>
      </tr>
        {
          for $art in doc("neptuno.xml") //articulos
            return
                <tr>
                  <td>{$art/RefArticulo}</td>
                  <td>{$art/ReferenciaProveedor}</td>
                  <td>{$art/NombreArticulo}</td>
                </tr>
        }
      </table>
   </body>
</html>