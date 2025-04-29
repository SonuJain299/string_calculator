class StringCalculator
  def self.add(numbers)
    begin
      return 0 if numbers.strip.empty?
  
      delimiters = [',', "'",'\n','|']
      numbers = numbers.split(Regexp.union(delimiters))
      numbers = numbers.map(&:to_i)
      negatives = numbers.select { |n| n < 0 }
      raise  if negatives.any?
     rescue Exception => ex
       return "negative numbers not allowed"
     end
    numbers.sum
  end
end

sum = StringCalculator.add("2,3")
puts sum
