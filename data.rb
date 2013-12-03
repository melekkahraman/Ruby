dizi=Array.new
sakla=""
sakla1=""
pot=IO.readlines("input.txt")
sakla=pot[1]
sakla1=pot[2]
dizi=sakla.split(" ")
$i=0
sakla1=sakla1.to_i
while $i<sakla1
 $b=0
 dizi[0]=dizi[0].to_i
 while $b<dizi[0]
   a=rand(1..100)
   puts a
   $b=$b+1
 end
 dizi[1]=dizi[1].to_i
 $c=0
 while $c<dizi[1]
  o = [('a'..'z'), ('A'..'Z')].map { |i| i.to_a }.flatten
  string = (0...50).map{ o[rand(o.length)] }.join
  puts string
  $c=$c+1
 end
 require="Date"
 $d=0
 $yaz=0
 dizi[2]=dizi[2].to_i
 def random_date
  date2=0.0
  date1=Time.now
  Time.at((date2.to_f - date1.to_f)*rand + date1.to_f)
 end
 while $d<dizi[2]
  yaz=random_date
  print yaz
  print "\n"
  $d=$d+1
 end
 terelelli=["@gmail.com","@hotmail.com"]
 $e=0
 dizi[3]=dizi[3].to_i
 while($e<dizi[3])
  o = [('a'..'z'), ('A'..'Z')].map { |i| i.to_a }.flatten
  string = (0...50).map{ o[rand(o.length)] }.join
  ata=terelelli[rand(6)]
  puts string+ata
  $e=$e+1
 end
$i=$i+1
end


         
