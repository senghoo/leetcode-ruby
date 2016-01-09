# @param {String} s
# @param {Integer} num_rows
# @return {String}
def convert(s, num_rows)
  len = s.size
  a = s.chars
  return s if len <= num_rows or num_rows == 1

  ret = ""
  lag = 2 * num_rows - 2
  (0...num_rows).each do |row|
    (row...len).step(lag).each do |i|
      ret << a[i]

      unless [0, num_rows - 1].include? row
        t = i + lag - 2 * row
        ret << a[t] if t < len
      end
    end
  end
  ret
end
