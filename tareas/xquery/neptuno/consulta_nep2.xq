<html>
  <head><title>Consulta en página web</title></head>
  <body>
    <table border="2">
      <tr>
        <th>Nº Referencia</th>
        <th>Nombre</th>
        <th>País</th>
      </tr>
      {
        for $prov in doc ("neptuno.xml") //proveedores
        return
        <tr>
          <td>{$prov/ReferenciaProveedor/text()}</td>
          <td>{$prov/NombreProveedor/text()}</td>
          <td>{$prov/PaisProveedor/text()}</td>
        </tr> 
        
      }
    </table>
  </body>
</html>