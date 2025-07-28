require 'minitest/autorun'
require_relative 'string_calculator'

class StringCalculatorTest < Minitest::Test
  def test_empty_string_returns_zero
    assert_equal 0, StringCalculator.add("")
  end

  def test_single_number_returns_that_number
    assert_equal 1, StringCalculator.add("1")
    assert_equal 5, StringCalculator.add("5")
    assert_equal 42, StringCalculator.add("42")
  end

  def test_two_numbers_returns_sum
    assert_equal 6, StringCalculator.add("1,5")
    assert_equal 3, StringCalculator.add("1,2")
    assert_equal 10, StringCalculator.add("4,6")
  end

  def test_multiple_numbers_returns_sum
    assert_equal 15, StringCalculator.add("1,2,3,4,5")
    assert_equal 21, StringCalculator.add("1,5,10,5")
    assert_equal 100, StringCalculator.add("10,20,30,40")
  end

  def test_handles_zero_in_input
    assert_equal 5, StringCalculator.add("0,5")
    assert_equal 10, StringCalculator.add("1,0,9")
  end
end
