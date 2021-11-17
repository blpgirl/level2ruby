puts "e".getbyte(0)  #Convert a Character to the ASCII Character Code
print Math.constants #predefined constants. what is domain error?
print "\n"
puts Math::PI

#empty array
days_of_week = Array.new
puts days_of_week.empty?

#new array with 7 length full of today, otherwise it would be filled with nil
days_of_week = Array.new(7, "today")
print days_of_week
print "\n"

days_of_week = Array[ "Mon", "Tues", "Wed", "Thu", "Fri", "Sat", "Sun" ]
print days_of_week
print "\n"
puts days_of_week.size
puts days_of_week[3] #same as days_of_week.at(2)
puts days_of_week[-1] #last element of an array
puts days_of_week.first #first element, also .last

puts days_of_week.index("Wed") #index of element Wed
start, numberElements = 1, 3
puts days_of_week[start, numberElements] #leo desde el 1, 3 elementos
print "3 elements read now a range \n"
start, finish = 2, 4
puts days_of_week[start..finish] #rango de elementos desde el 2 al 4

days1 = ["Mon", "Tue", "Wed"]
days2 = ["Thu", "Fri", "Sat", "Sun"]
days = days1 + days2 #add them together, sames as days = days1.concat(days2)
# also sames as days1 << "Thu" << "Fri" << "Sat" << "Sun"
print days
print "\n"

#array operators
operating_systems = ["Fedora", "SuSE", "RHEL", "Windows", "MacOS"]
linux_systems = ["RHEL", "SuSE", "PCLinuxOS", "Ubuntu", "Fedora"]
print operating_systems | linux_systems #add both arrays without duplicates
print "\n"
print operating_systems & linux_systems #new array with elements in common and without duplicates
print "\n"
print operating_systems - linux_systems #removes the elements in linux_systems from the first array
print "\n"

linux_systems = ["RHEL", "SuSE", "PCLinuxOS", "Ubuntu", "Fedora", "RHEL", "SuSE"]
linux2 = linux_systems.uniq #removes duplicates
print linux_systems #no change
print "\n"
print linux2 #result
print "\n"
linux_systems.uniq! #changes the original arrays
print linux_systems
print "\n"

colors = ["red", "green", "blue"]
colors.push "indigo" #add to the arrays
print colors
print "\n"

puts colors.pop #get the last element on array and remove it
print colors
print "\n"

colors.insert( 1, "orange" ) #add orange in the index 1
print colors
print "\n"

colors[1] = "yellow" #replace orange for yellow
print colors
print "\n"

colors[1..2] = "orange", "pink" #change multiple elements
print colors
print "\n"

colors.delete_at(1) #delete orange
print colors
print "\n"

colors.delete("red") #remove the red element
print colors
print "\n"

numbers = [1, 4, 6, 7, 3, 2, 5]
numbers.sort! #de menor a mayor
print numbers
print "\n"
numbers.reverse! #de mayor a menor
print numbers
print "\n"

#ranges to arrays
print ('a'..'l').to_a #a to letter l of leyla
print "\n"

print ('cab'..'car').to_a #the last letter is the one changing
print "\n"

words = 'cab'..'car'
puts words.min         # get lowest value in range
puts words.max         # get highest value in range
words.include?('can') # check to see if a value exists in the range

words.each {|word| puts "Hello word: " + word} # iterate through each value and perform a task

numbers = 1...10 #1 a 9
puts numbers.reject {|subrange| subrange < 7} # reject values below a specified range value

puts (1..20) === 15       # Does the number fit in the range 1 to 20

myString = "This is also my string.\nGet your own string" #prints new line
puts myString
myString = 'This is also my string.\nGet your own string' #print the \n
puts myString

myString = "This is \"my\" String"
puts myString
myString = "This is 'my' String"
puts myString

myText = <<DOC
Please Detach and return this coupon with your payment.
Do not send cash or coins.

Please write your name and account number on the check and
make checks payable to:

        Acme Corporation

Thank you for your business.
DOC
puts myText #this is cool, mantains the same format I wrote it

myString = "Welcome " + "to " + "Ruby!"
puts myString #sames as "Welcome " << "to " or "Welcome ".concat("to ")

myString = "Welcome to Ruby!"
puts myString["Ruby"]
puts myString["Perl"] #see if the string contains Perl, if not returns nil
puts myString[11, 4] #extract a subsection of a string
puts myString.index("Ruby") #location of a matching substring

myArray = "ABCDEFGHIJKLMNOP".split(//) #split by regular expression, in this case each character
print myArray
print "\n"

myArray = "Paris in the Spring".split(/ /) #split by regular expression, in this case each space
print myArray
print "\n"

myArray = "Red, Green, Blue, Indigo, Violet".split(/, /) #split by regular expression, in this case comma and space
print myArray
print "\n"

puts "paris in the spring".capitalize #first letter capitalize, so Paris...
puts "speak up. i can't here you!".upcase #all uppercase

myArray = "abdfsdfasdfsdabzdsasdasdsolob".split(/abz?/) #split by regular expression, ab or abz
print myArray
print "\n"

=begin
  gets to get input by user
  if I write start or end anywhere in my screen, it will print
  what I wrote and the word triggered
  ?????????
=end
input = gets
puts input + " triggered" if input =~ /start/ .. input =~ /end/
