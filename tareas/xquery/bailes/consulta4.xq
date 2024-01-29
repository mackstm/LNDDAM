for $baile in doc ("bailes.xml") //baile
where $baile/number(precio) > 20
return
<baile>
  <nombre>{$baile/nombre/text()}</nombre>
  <precio>{$baile/precio/text()}</precio>
</baile>