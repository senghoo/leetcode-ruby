# @param {Integer} x
# @return {Integer}
def reverse(x)

  max = 2147483647
  min = -2147483648


  def inner(x, sum)
    return sum if x == 0
    inner x / 10, sum * 10 + x % 10
  end

  res = x < 0 ? -inner(-x, 0) : inner(x, 0)

  (res > max or res < min) ? 0 : res
end
