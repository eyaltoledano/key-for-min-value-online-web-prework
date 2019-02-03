# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value
# {:blake => 10, :ashley => 50, :adam => 17}


def key_for_min_value(name_hash)
  smallest_value = nil                        # instantiate 'smallest_value'
  sorted_hash = name_hash.sort_by {|k,v| v}   # sort the hash by descending values
  sorted_hash.each do |key, value|            # to each element of the hash (key:value pair)

  if smallest_value == nil                    # if smallest_value is nil
      smallest_value = value                    # assign the hash value to nil, returning nil if hash is empty
    elsif value <= smallest_value             # otherwise, if the hash value is smaller or equal to others that have been set at smallest_value
      smallest_value = value                      # make it the new smallest_value
    end

    if value == smallest_value                # if the value in the current loop is the smallest value
      name = key                                # assign it to the name variable
    end

    return name                               # return the name variable out of the loop (because each returns the original array)
  end

  if smallest_value == nil                    # if the smallest_value is actually nil, because there was nothing in there (hash was empty)
    nil                                         # return nil
  else
    puts name                                 # otherwise, puts out the name variable, which is == to smallest_value
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
