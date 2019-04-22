require "pry"
# Returns a new array to that contains elements in the intersection of the two input arrays
# Time complexity: Time complexity is O(n) (or, O(n+m)) we are looping through one array O(n), then searching worst case for a look up a hash table O(n)
# Space complexity: O(n) with n elements in the hash table.
def intersection(array1, array2)
  if array1 == nil || array2 == nil
    return []
  else
    return array1.length >= array2.length ? sorting(array1, array2) : sorting(array2, array1)
  end
end

def sorting(longer, shorter)
  holder_hash = Hash.new
  longer.each do |num|
    holder_hash[num] = 1
    #it won't work of I just do holder_hash = Hash.new, should set default value to nil, but it errors on the tests, why?
  end
  intersec = []
  shorter.each do |num|
    if holder_hash.include? num
      intersec << num
    end
  end
  return intersec
end
