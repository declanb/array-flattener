def flatten_iteratively (input_array)
  return nil if input_array.nil?
  flatList = []
  while input_array.length > 0
    item = input_array.shift
    if item.is_a? Array
      # add the nested array back so elements can be added
      input_array = item + input_array
    else
      flatList << check_if_int(item)
    end
  end
  return flatList
end

def flatten_using_each(input_array)
  return nil if input_array.nil?
  flattened_array = []
  input_array.each_with_index do |element, index|
    # puts "#{index}: #{element}"
    unless element.is_a? Array
      # p flattened_array
      flattened_array << check_if_int(element)
    else
      flatten_using_each(element).each {|element| flattened_array << element}
    end
  end
  flattened_array
end

# def flatten_using_reduce(input_array)
#   return nil if input_array.nil?
#   input_array.reduce([]) do |result, element|
#     unless element.is_a? Array
#       result << check_if_int(element)
#     else
#       result + flatten_using_reduce(element)
#     end
#   end
# end

def check_if_int(element)
  if element.is_a? Integer
    return element
  else
    raise ArgumentError.new("Only integers are allowed")
  end
end
