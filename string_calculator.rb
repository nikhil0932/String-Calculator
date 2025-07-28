class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?
    
    # Parse numbers based on delimiter format
    parsed_numbers = if numbers.start_with?("//")
      # Custom delimiter format: "//[delimiter]\n[numbers...]"
      delimiter_line, number_string = numbers.split("\n", 2)
      custom_delimiter = delimiter_line[2..-1] # Remove "//" prefix
      return 0 if number_string.nil? || number_string.empty?
      number_string.split(custom_delimiter).map(&:to_i)
    else
      # Default behavior: handle commas and newlines
      numbers.split(/[,\n]/).map(&:to_i)
    end
    
    # Check for negative numbers
    negative_numbers = parsed_numbers.select { |num| num < 0 }
    unless negative_numbers.empty?
      raise ArgumentError, "negative numbers not allowed #{negative_numbers.join(', ')}"
    end
    
    parsed_numbers.sum
  end
end
