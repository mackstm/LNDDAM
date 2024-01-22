for $baile in doc("bailes.xml") //baile
where $baile/nombre[contains(text(), "Lozano")]
return 
<baile>
  <nombre>{$baile/nombre/text()}</nombre>
  <precio>{$baile/precio/text()}</precio>
</baile>