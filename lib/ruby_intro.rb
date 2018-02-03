# When done, submit this entire file to the autograder.

#Michael Plaster 225002309

# Part 1

puts "Hello World!"

def sum arr
  sumTotal = 0
  
  if arr.size == 0
    return 0
  else
    #num = 0
    arr.each do |num|
    sumTotal = (sumTotal + num)
    #while num < arr.length
      #sumTotal = (sumTotal + arr[num])
      #num = num + 1
    end
  end
  
  return sumTotal
end

def max_2_sum arr
  max = 0
  max2 = 0
  
  if (arr.size == 0)
    return 0
  elsif (arr.length == 1)
    return arr[0]
  else 
    max = -2300000
    max2 = -2300000
    #count = 0
    arr.each do |num|
      if num > max
        max = num
      elsif (num > max2) && (num <= max)
        max2 = num
      end
      
      
    end
  end
  
  return (max + max2)
end

def sum_to_n? arr, n
  
  if (arr.size == 0)
    return false
  elsif (arr.length == 1)
    return false
  else
    i = 0
    j = 0
    
    while i < arr.size
      j = (i + 1)
      while j < arr.size
        if arr[j] + arr[i] == n
          return true
        end
        j = j + 1
      end
      i = i + 1  
    end
  end
  
  return false
  
end

# Part 2

def hello(name)
  return ('Hello, ' + name)
end


def starts_with_consonant? s
  
  if s.size == 0
    return false
  end
  #puts s[0]
  #firstLetter = s[0]
  #puts firstLetter
  
  #if (firstLetter == 'A') ||  (firstLetter == 'E') || (firstLetter == 'I') || (firstLetter == 'O') || (firstLetter == 'U') || (firstLetter == 'a') ||  (firstLetter == 'e') || (firstLetter == 'i') || (firstLetter == 'o') || (firstLetter == 'u')
    #return false
  #end
  
  return (s[0] =~ /[b-df-hj-np-tv-zB-DF-HJ-NP-TV-Z]/)
end

def binary_multiple_of_4? s
  #from stackoverflow
  
  if s =~ /^[0-1]+$/
    return s.to_i(2) % 4 == 0
  end
  
  return false
end

# Part 3

class BookInStock
  
  attr_accessor :price
  attr_accessor :isbn
  
  def initialize(isbn, price)
    if(price > 0 && isbn != '')
      @isbn = isbn
      @price = price
    else
      raise ArgumentError.new("failure to put in proper input.")
    end
  end
  
  def price_as_string
    stringPrice = "$"
    
    newPrice = @price.to_s
    i = 0
    checkIfDecimal = false
    count = 0
    
    while i < newPrice.size
      if checkIfDecimal == true
        count = count + 1
      end
      
      if newPrice[i] == '.'
        checkIfDecimal = true
      end
      
      stringPrice = stringPrice + newPrice[i]
      
      i = i + 1
    end
    
    while count != 2
      if count == 0
        stringPrice = stringPrice + '.'
      end
    
      stringPrice = stringPrice + '0'
      count = count + 1
    end
    
    return (stringPrice)
  end
  
end
