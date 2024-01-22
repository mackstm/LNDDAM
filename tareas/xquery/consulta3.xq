for $baile in doc("bailes.xml") //baile

return 
<bailes>
  <nombre>{$baile/nombre/text()}</nombre>
  <precio-plazas>{$baile/(precio * plazas)}</precio-plazas>
</bailes>