# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  if name_hash != {}
    name_array = []
    name_hash.each do |key, value|
      name_array << "#{value},#{key}"
    end
  sorted_array = name_array.sort
  lowest_pair = sorted_array[0].split(",")
  lowest_pair[1].to_sym
end
end

def key_for_min_value(hash)
  lowest_key = nil
  lowest_value = nil
  hash.each do |k, v|
    if lowest_value == nil || v < lowest_value
      lowest_value = v
      lowest_key = k
    end
  end
  lowest_key
end
