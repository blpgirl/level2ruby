#for the ruby oop lesson - final level 2
class BankAccount
   def initialize ()
   end

   #get method
   def accountNumber
        @accountNumber
   end

   #set method
   def accountNumber=( value )
        @accountNumber = value
   end

   def accountName
        @accountName
   end

   def accountName=( value )
        @accountName = value
   end

   def interest_rate
        @@interest_rate = 0.2 #all BankAccount instances will use the same interest_rate
   end

   def calc_interest ( balance )
       puts balance * interest_rate
   end

end #class BankAccount

#NewBankAccount inherits all the BankAccount class functions
class NewBankAccount < BankAccount

   def customerPhone
        @customerPhone
   end

   def customerPhone=( value )
        @customerPhone = value
   end

end

account = BankAccount.new
account.accountNumber = "54321"
account.accountName = "Fred Flintstone"

puts account.accountNumber
puts account.accountName
puts account.calc_interest( 1000 )

account2 = NewBankAccount.new
account2.accountNumber = "54321"
account2.customerPhone = "555-123-5433"

puts account2.accountNumber
puts account2.accountName
puts account2.customerPhone
puts account2.calc_interest( 1000 )

def coffee
  puts self #self is a keyword. It's value depends on where you use it
end
coffee #main it’s an object where you’ll find all the methods defined outside a class

class Cat
  def meow
    puts self
  end
end
Cat.new.meow #now the class is Cat instead of main since it's inside it

class Example
  def do_something
    banana = "variable"
    puts banana
    puts self.banana #we need to use self here if we want to call the banana method
                    #because a local variable takes priority.
  end
  def banana
    "method"
  end
end
Example.new.do_something

1.itself #is a method. It's value depends on what object you use it on. not really sure why use it?

require 'date'

date = Date.new(2008, 12, 22)
print date, "\n"
print date.day, " - ", date.month, " - ", date.year, "\n"

date = DateTime.new(2008, 12, 22, 14, 30)
puts date
today = DateTime.now
puts today

birthday = Date.new(2022, 5, 12)

time_until = birthday - today
puts time_until
puts time_until.to_i  # get the number of days until my birthday
