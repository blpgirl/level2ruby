#for the ruby oop lesson - final level 2
class BankAccount
  attr_accessor :account_name

   #get method, instead of get and set i can just use attr_accessor and is the same. attr_reader is get
   def account_number
        @account_number
   end

   #set method, attr_writer is same as set
   def account_number=( value )
        @account_number = value
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

   def customer_phone
        @customer_phone
   end

   def customer_phone=( value )
        @customer_phone = value
   end

end

account = BankAccount.new
account.account_number = "54321"
account.account_name = "Fred Flintstone"

puts account.account_number
puts account.account_name
puts account.calc_interest( 1000 )

account2 = NewBankAccount.new
account2.account_number = "54321"
account2.customer_phone = "555-123-5433"

puts account2.account_number
puts account2.account_name
puts account2.customer_phone
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

time_in_seconds = ((time_until) * 24 * 60 * 60).to_i #convert to seconds until my birthday
puts time_in_seconds

puts Date.parse('2001-02-03')     # string to date
puts Date.parse('3rd Feb 2001')
puts Date.strptime('03-02-2001', '%d-%m-%Y') #change date format


class Warrior
  attr_accessor :name, :ki

  def initialize(name:, ki:)
    @name = name
    @ki = ki
  end

  def make_technique(technique:)
    puts "Making #{technique}"
  end
end #class Warrior

class Sayayin < Warrior #inherits warrior
    attr_accessor :phase

    def initialize(phase:, **options) #options con los ** los vuelve hash
      super(**options) #executes the method with the same name in the parent class
                      #so initialize in Warrior class
      @phase = phase
    end

    def transform_to(phase:, ki:) #so ii's easier to read the parameters but doesnt work if passing symbols
      @ki = ki
      @phase = phase
      puts "Transforming to #{phase}"
    end
end #class sayayin

vegeta = Sayayin.new(
  phase: "base",
  name: "vegeta",
  ki: 3000
)

vegeta.make_technique(technique: "Final flash") #so it's easier to read, had to define it in parameters like name:
puts vegeta.phase
puts vegeta.ki
vegeta.transform_to(phase: "Ozaru", ki: 3000*10)
puts vegeta.phase
puts vegeta.ki

cadena = "ruby desde cero"
resultado = cadena.upcase
puts resultado
puts cadena #todavia en minuscula

resultado = cadena.upcase!
puts resultado
puts cadena #se modifico a mayusculas por el !
