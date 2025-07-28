# String Calculator Ruby Project

A Ruby implementation of the String Calculator kata that demonstrates test-driven development and incremental feature addition.

## Features

- **Basic Addition**: Handles empty strings (returns 0), single numbers, and multiple comma-separated numbers
- **Multiple Delimiters**: Supports both commas and newlines as delimiters (`"1\n2,3"` returns 6)
- **Custom Delimiters**: Supports custom delimiters with format `"//[delimiter]\n[numbers...]"` 
- **Input Validation**: Throws `ArgumentError` for negative numbers with descriptive error messages
- **Comprehensive Testing**: Full test suite with edge cases and error conditions

## Usage

```ruby
require_relative 'string_calculator'

# Basic examples
StringCalculator.add("")           # => 0
StringCalculator.add("1")          # => 1
StringCalculator.add("1,5")        # => 6
StringCalculator.add("1,2,3,4,5")  # => 15

# Newline delimiters
StringCalculator.add("1\n2,3")     # => 6

# Custom delimiters
StringCalculator.add("//;\n1;2")   # => 3
StringCalculator.add("//|\n1|2|3") # => 6

# Negative numbers (throws exception)
StringCalculator.add("1,-2,3")     # => ArgumentError: "negative numbers not allowed -2"
```

## Running Tests

To run the test suite:

```bash
ruby test_string_calculator.rb
```

## Files

- `string_calculator.rb` - Main implementation
- `test_string_calculator.rb` - Test cases using Minitest
- `README.md` - This file

## Requirements

- Ruby (tested with Ruby 2.7+)
- Minitest (included with Ruby standard library)
