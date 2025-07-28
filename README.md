# String Calculator Ruby Project

A simple Ruby project that implements a string calculator with the ability to add comma-separated numbers.

## Features

- Handles empty strings (returns 0)
- Handles single numbers
- Handles multiple comma-separated numbers
- Returns the sum as an integer

## Usage

```ruby
require_relative 'string_calculator'

# Examples
StringCalculator.add("")     # => 0
StringCalculator.add("1")    # => 1
StringCalculator.add("1,5")  # => 6
StringCalculator.add("1,2,3,4,5")  # => 15
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
