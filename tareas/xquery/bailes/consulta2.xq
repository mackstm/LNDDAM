for $baile in doc("bailes.xml") //baile
where $baile[precio/@moneda="euro" and sala = 1]
return 
<baile>
  <nombre>{$baile/nombre/text()}</nombre>
</baile>