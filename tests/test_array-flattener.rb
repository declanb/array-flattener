require "array-flattener/array-flattener.rb"
require "test/unit"
require 'benchmark'

class TestArrayFlattener < Test::Unit::TestCase

  def test_flatten
    test_array = [1, 2, 3, [4, 5], [[6]], 7, [[[8, 9], 10], 11], [], [[[[[[[[[[[[[[[[[[[[[1000]]]]]]]]]]]]]]]]]]]]]]
    puts Benchmark.measure {
      50_000.times {
        assert_equal(test_array.flatten, flatten(test_array))
      }
    }
    puts Benchmark.measure {
      50_000.times {
        assert_equal(test_array.flatten, flatten2(test_array))
      }
    }
  end

  def test_flatten_with_char
    test_array_with_char = [1, 2, 3, [4, 5], [[6]], 'a']
    assert_equal(test_array_with_char.flatten, flatten(test_array_with_char))
  end

  def test_flatten_empty
    empty_array = []
    assert_equal(empty_array.flatten, flatten(empty_array))
  end

  def test_flatten_null
    nil_var = nil
    assert_equal(false, flatten(nil_var))
  end

  def test_check_only_numeric
    test_array_with_char = [1, 2, 3, [4, 5], [[6]], 'a']
    assert_equal(true, check_only_numeric(test_array_with_char))
  end

end