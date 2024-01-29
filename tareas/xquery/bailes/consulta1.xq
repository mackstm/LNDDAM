for $baile in doc("bailes.xml") //baile
where $baile/precio[@cuota = "mensual"]
return 
<baile>
  <profesor>{$baile/profesor/text()}</profesor>
</baile>