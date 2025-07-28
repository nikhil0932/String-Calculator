class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?
    
    # Check for custom delimiter format: "//[delimiter]\n[numbers...]"
    if numbers.start_with?("//")
      delimiter_line, number_string = numbers.split("\n", 2)
      custom_delimiter = delimiter_line[2..-1] # Remove "//" prefix
      return 0 if number_string.nil? || number_string.empty?
      number_string.split(custom_delimiter).map(&:to_i).sum
    else
      # Default behavior: handle commas and newlines
      numbers.split(/[,\n]/).map(&:to_i).sum
    end
  end
end
