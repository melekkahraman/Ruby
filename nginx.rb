array=Array.new
line=""
pot=IO.readlines("request.txt")
array=pot[1]
array=line.split(" ")
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
def pid_random
  kem=rand(1000..65536)
   print "PID=",kem
end
$x=0
while $x<array[0]  #access log
  File.open('accesslog.rb', 'w') do |f2|
  f2.print ip_random,"--",date_random,dir_random,"200396","\"-\"","\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:24.0) Gecko/20100101 Firefox/24.0\""
  $x=$x+1
end
$y=0
while $y<array[1] #error log
  File.open('errorlog.rb', 'w') do |f3|
  f3.print date_random,"(server.c.1546) server stopped by UID = 0",pid_random
  File.open('errorlog.rb', 'w') do |f4|
  f4.print date_random,"(log.c.166) server started"

  $y=$y+1
end
