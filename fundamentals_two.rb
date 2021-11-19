car = "Patriot"
manufacturer = case car
   when "Focus" then "Ford"
   when "Navigator" then "Lincoln"
   when "Camry" then "Toyota"
   when "Civic" then "Honda"
   when "Patriot" then "Jeep"
   when "Jetta" then "VW"
   when "Ceyene" then "Porsche"
   when "Outback" then "Subaru"
   when "520i" then "BMW"
   when "Tundra" then "Nissan"
   else "Unknown"
end

puts "The " + car  + " is made by "  + manufacturer

score = 70
result = case score
   when 0..40 then "Fail"
   when 41..60 then "Pass"
   when 61..70 then "Pass with Merit"
   when 71..100 then "Pass with Distinction"
   else "Invalid Score"
end
puts result

hash1 = { 1 => "eins", 2 => "zwei", 3 => "drei" }
print hash1
print "\n"
hash2 =  { :one => "eins", :two => "zwei", :three => "drei" } #sames as { one: "eins", two: "zwei", three: "drei" }
print hash2
print "\n"
hash3 = { "weights" => ["pound", "kilogram"], "lengths" => ["meter", "mile"] }
print hash3
print "\n"
hash4 = { :de => { :one => "eins", :two => "zwei", :three => "drei" } }
print hash4
print "\n"

merge_hash = { "one" => "eins" }.merge({ "two" => "zwei" })
print merge_hash
print "\n"
puts merge_hash.keys #all the keys
puts merge_hash.length #same as merge_hash.size

dictionary = { :one => 'uno', :two => 'dos', :three => 'tres', :four => 'cuatro' }

puts dictionary[:four].capitalize
print dictionary.invert #changes values to keys and keys to values
print "\n"

for i in(1..10)
  puts "ten times #{i}"
end

for i in(1..10)
  puts "won't do ten times #{i}"
  if i==2
    break #get out of the loop
  end
end

for i in(1..4)
  puts "four times #{i}"
  if i==2
    next #jump to next i and don't do anything else
  end
  puts "next code line"
end

(1..10).each{ |i| print i } #same as 1.upto(10){ |i| print i }
                            #same as 10.times{ |i| print i+1 } porque empieza de ceros
print "\n"
10.downto(1){ |i| print i } #cuenta regresiva del 10 al 1

puts "start while"
i = 0
while i<5 do
  print i.to_s + "\n"
  i+=1
end

puts "start second while"
i = 0
while i < 5
   puts i
   i += 1
   break if i == 2
end

puts "start unless"
i=0 #restart the variable
until i==5 do
  print i.to_s + "\n"
  i+=1
end

customerName = "John"
if customerName == "Fred"
      puts "Hello Fred!"
elsif customerName == "John"
      puts "Hello John!"
elsif customername == "Robert"
      puts "Hello Bob!"
end

#if customerName == "Fred" : print "Hello Fred!" not working for me???? maybe old syntax???
if customerName == "Fred" then puts "Hello Fred!"
elsif customerName == "John" then puts "Hello John!"
elsif customername == "Robert" then puts "Hello Bob!"
end

puts customerName == "Fred" ? "Hello Fred" : "Who are you?" #[condition] ? [true expression] : [false expression]

for j in 1..5 do
     for i in 1..5 do #nested for
         print j, " - ", i,  " \n"
         break if i == 2 #get out this loop but will continue with the outer
     end
end
