# @param {String} str
# @return {Integer}
def my_atoi(str)
  arr = str.chars
  res = nil
  neg = nil

  arr.each do |i|
    if (i >= '0' and i <= '9')
      res ||= 0
      res = res * 10 + i.to_i
    elsif res.nil? and neg.nil? and i == '+'
      neg = false
      res = 0
    elsif res.nil? and neg.nil? and i == '-'
      neg = true
      res = 0
    elsif res.nil? and i == ' '
      next
    else
      break
    end

  end

  res ||= 0

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
