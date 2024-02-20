<html>
  <body>
    <table border="2">
      <tr>
        <th>ReferenciaPedido</th>
        <th>ReferenciaCli</th>
        <th>RefArticulo</th>
        <th>Fecha Pedido</th>
      </tr>
        {
          for $cli in doc ("neptunoExamen.xml") //cliente
            where ($cli/RefArticulo = //articulo/RefArticulo) and ($cli/RefCliente = 'PICCO')
           
            return
                <tr>
                 <td>{$cli/RefPedido}</td>
                 <td>{$cli/RefCliente}</td>
                 <td>{$cli/RefArticulo}</td>
                 <td>{$cli/FechaPedido}</td>
                </tr>
        }
      </table>
   </body>
</html>