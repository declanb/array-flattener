require "array-flattener/array-flattener.rb"
require "test/unit"
require 'benchmark'

class TestArrayFlattener < Test::Unit::TestCase

  def test_flatten

    nested_array = [-2, -1, 0, [2, [3], 1, 1, []], 4, [[5]], [], [6, [7, 7], 7]]

    puts Benchmark.measure {
      100.times {
        assert_equal(nested_array.flatten, flatten_using_each(nested_array))
      }
    }

    puts Benchmark.measure {
      100.times {
        assert_equal(nested_array.flatten, flatten_iteratively(nested_array))
      }
    }

  end

  def test_flatten_with_char
    nested_array_with_char = [-2, -1, 0, [1, 2, [3]], 4, [[5, 'a']], [], [6]]
    assert_raise ArgumentError do
      flatten_iteratively(nested_array_with_char)
    end
    assert_raise ArgumentError do
      flatten_using_each(nested_array_with_char)
    end
  end

  def test_flatten_with_empty_array
    empty_array = []
    assert_equal(empty_array.flatten, flatten_iteratively(empty_array))
    assert_equal(empty_array.flatten, flatten_using_each(empty_array))
  end

  def test_flatten_with_nil
    assert_nil(flatten_iteratively(nil))
    assert_nil(flatten_using_each(nil))
  end

  def test_check_if_int_raises_error
    assert_raise ArgumentError do
      check_if_int('a')
    end
  end
end