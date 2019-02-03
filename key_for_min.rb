# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value
# {:blake => 10, :ashley => 50, :adam => 17}


def key_for_min_value(name_hash)
  smallest_value = nil
  sorted_hash = name_hash.sort_by {|k,v| v}
  sorted_hash.each do |key, value|

  if smallest_value == nil
      smallest_value = value
    elsif value <= smallest_value
      smallest_value = value
    end

    if value == smallest_value
      name = key
    end
    
    return name
  end

  if smallest_value == nil
    nil
  else
    puts name
  end
end


# def key_for_min_value(name_hash)
#   smallest_value = nil
#   name_hash.each do |key, value|
#     if smallest_value == nil
#       smallest_value = value
#     elsif value <= smallest_value
#       smallest_value = value
#     end
#
#     if value == smallest_value
#       name = key
#     end
#     return name
#   end
#   puts name
# end
