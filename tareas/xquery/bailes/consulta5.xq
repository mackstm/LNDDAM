<html>
  <head><title>Consulta en página web</title></head>
  <body>
    <table border="2">
      <tr>
        <th>Nombre baile</th>
        <th>Precio</th>
      </tr>
      {
        for $baile in doc ("bailes.xml") //baile
        where $baile/number(precio) > 20
        return
          <tr>
            <td>{$baile/nombre/text()}</td>
            <td>{$baile/precio/text()}</td>
          </tr>
      }
    </table>
  </body>
</html>