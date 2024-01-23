for $x at $i in doc("books.xml")//title
return 
<books>
  <book>{$i}. {data($x)}</book>
  <numauthors>{$x/../count(author)}</numauthors>
</books>