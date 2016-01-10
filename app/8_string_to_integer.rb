# @param {String} str
# @return {Integer}
def my_atoi(str)
  arr = str.chars
  res = nil
  neg = nil

  arr.each do |i|
    if (i >= '0' and i <= '9')
      res = res * 10 + i.to_i
    elsif neg.nil? and i == '+' and res == nil
      neg = false
    elsif neg.nil? and i == '-' and res == nil
      neg = true
    elsif res == 0 and i == ' '
      next
    else
      break
    end

  end

  res = neg ? -res : res

  case
  when res > 2147483647
    2147483647
  when res < -2147483648
    -2147483648
  else
    res
  end

end
