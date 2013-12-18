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
  show=Time.at(rand(date1..date2))
  puts show
end
def dir_random
  o = [('a'..'z'), ('A'..'Z')].map { |i| i.to_a }.flatten
  string = (0...20).map{ o[rand(o.length)] }.join
  puts "\"GET/"+string+"HTTP/1.1\""
end
def error_code
  array2=[100,101,200,202,203,204,205,206,300,301,302,303,304,305,307,400,401,403,404,405,406,407,408,409,410,411,412,413,414,415,416,417,500,501,502,503,505]
  report=rand(0..36)
  write=array2[report]
  puts write
end
def scanner
  array3=["Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B405",
"Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:25.0) Gecko/20100101 Firefox/25.0",
"Mozilla/5.0 (Windows NT 6.1; rv:14.0) Gecko/20100101 Firefox/14.0.1",
"Mozilla/5.0 (Windows NT 6.1; rv:22.0) Gecko/20100101 Firefox/22.0",
"Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko",
"Mozilla/5.0 (compatible; MSIE 10.0; Windows Phone 8.0; Trident/6.0; IEMobile/10.0; ARM; Touch; NOKIA; Lumia 920)",
"Mozilla/5.0 (Windows NT 6.1; rv:22.0) Gecko/20100101 Firefox/22.0",
"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.02",
"Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.2; Win64; x64; Trident/6.0; .NET4.0E; .NET4.0C; .NET CLR 3.5.30729; .NET CLR3.0.30729;", .NETCLR 2.0.5
"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36",
"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.15 Safari/537.36",
"Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:25.0) Gecko/20100101 Firefox/25.0",
"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6; rv:25.0) Gecko/20100101 Firefox/25.0",
"Mozilla/5.0 (X11; U; Linux i686; fr-fr) AppleWebKit/525.1+ (KHTML, like Gecko, Safari/525.1+) midori/1.19",
"Mozilla/5.0 (X11; Linux; rv:2.0.1) Gecko/20100101 Firefox/4.0.1 Midori/0.4",
"Opera/9.80 (Windows NT 6.0) Presto/2.12.388 Version/12.14",
"Mozilla/5.0 (Windows NT 6.0; rv:2.0) Gecko/20100101 Firefox/4.0 Opera 12.14",
"Mozilla/5.0 (iPad; CPU OS 6_0 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) Version/6.0 Mobile/10A5355d Safari/8536.25",
"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/537.13+ (KHTML, like Gecko) Version/5.1.7 Safari/534.57.2",
"Mozilla/5.0 (X11; U; Linux x86_64; en-us) AppleWebKit/531.2+ (KHTML, like Gecko) Version/5.0 Safari/531.2+"]
  puts array3[rand(0..19)]

def pid_random
  kem=rand(1000..65536)
   print "PID=",kem
end
$x=0
while $x<array[0]  #access log
  File.open('accesslog.rb', 'w') do |f2|
  f2.print ip_random,"--",date_random,dir_random,"200396","\"-\"",scanner
  File.open('accesslog.rb', 'w') do |f1|
  f1.print ip_random,"--",date_random,scanner,"\"-\"","\"-\""
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
