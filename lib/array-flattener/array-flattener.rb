def flatten(arr)

  if arr.nil?
    return false
  end

  return [arr] unless arr.is_a? Array

  arr.inject([]) {|result, element| #explain
    result.concat(flatten(element))}
end

def check_only_numeric(arr)
  # check if elements in array are numeric
  if arr.any?
    return true
  end
end

def flatten2(array)
  result = []
  array.each do |element|
    unless element.is_a? Array
      result << element
    else
      flatten2(element).each {|element| result << element}
    end
  end

  result
end