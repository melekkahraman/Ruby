def ip_random
  a=rand(1..255)
  b=rand(1..255)
  c=rand(1..255)
  d=rand(1..255)
  print a,".",b,".",c,".",d,"\n"
end
require="Date"
$i=0.0
def date_random
  date1=Time.now
  date2=date1+$i
  date1=date1.to_i
  date2=date2.to_i
  $i=$i+500.0
  yaz=Time.at(rand(date1..date2))
  puts yaz
end
def dir_random
  o = [('a'..'z'), ('A'..'Z')].map { |i| i.to_a }.flatten
  string = (0...20).map{ o[rand(o.length)] }.join
  puts "\"GET/"+string+"HTTP/1.1\""
end
def error_random
  array2=[100,101,200,202,203,204,205,206,300,301,302,303,304,305,307,400,401,403,404,405,406,407,408,409,410,411,412,413,414,415,416,417,500,501,502,503,505]
  report=rand(0..36)
  write=array2[report]
  puts write
end
def url_random
  array=[".com",".net",".org",".gov",".edu",".us","biz","com.tr",".biz.tr",".info.tr",".org.tr",".av.tr",".pol.tr",".bel.tr",".mil.tr",".bbs.tr",".k12.tr",".edu.tr",".name.tr",".net.tr","gov.tr"]
  o = [('a'..'z'), ('A'..'Z')].map { |i| i.to_a }.flatten
  string = (0...50).map{ o[rand(o.length)] }.join
  ata=array[rand(21)]
  puts "www." + string + ata
end
def pid_random
  kem=rand(1000..65536)
  print "PID=",kem
end
$x=0
while $x<100  #access log
  print ip_random,"--",date_random,dir_random,"200396","\"-\"","\"-\""
  print ip_random,"--",date_random,"\"-\"",error_random,"\"-\"","\"-\""
  $x=$x+1
end
$y=0
while $y<100 #error log
  print date_random,"(server.c.1546) server stopped by UID = 0",pid_random
  print date_random,"(log.c.166) server started"
  $y=$y+1
end
