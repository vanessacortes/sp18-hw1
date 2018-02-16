class Foobar

  def self.baz(a)
    # Class method, not an instance method
    # Call with `Foobar.baz`
    # Q4 CODE HERE
    # accepts an array of integers as strings, changes each string into an integer,
    #adds two to each number, keeps the even numbers only, removes any duplicates,
    #rejects the resulting numbers greater than or equal to ten, and finally returns the sum of the resulting array.
    a.map! do |element|
      element = element.to_i      #changes each string into an integer,
      element = element + 2       #adds two to each number,
    end
    a.select! { |number| number%2 == 0 }
    a = a.uniq

    a.reject! { |element| element>=10 }
    sum = 0
    a.each do |element|
       sum += element
     end
    sum

  end
end
