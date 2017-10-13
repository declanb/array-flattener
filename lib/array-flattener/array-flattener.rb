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
