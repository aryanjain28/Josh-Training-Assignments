def prime(no)
    return false if no < 2
  (2..(no-1)).each do |i|
    return false if no % i == 0
  end
  return true
end
