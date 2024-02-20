<html>
  <body>
    <table border="2">
      <tr>
        <th>ReferenciaProv</th>
        <th>NombreProv</th>
        <th>Dirección</th>
        <th>Código Postal</th>
        <th>País</th>
        <th>Tfno</th>
      </tr>
        {
          for $prov in doc ("neptunoExamen.xml") //proveedor
            where $prov/PaisProveedor = 'Francia'
           
            return
                <tr>
                  <td>{$prov/ReferenciaProveedor}</td>
                  <td>{$prov/NombreProveedor}</td>
                  <td>{$prov/DireccionProveedor}</td>
                  <td>{$prov/CodigoPostal}</td>
                  <td>{$prov/PaisProveedor}</td>
                  <td>{$prov/TelefonoProveedor}</td>
                </tr>
        }
      </table>
   </body>
</html>