# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  max = 0
  hash = Hash.new
  start = 0
  cur = 0
  s.chars.each.with_index do |char, index|
    if hash.has_key? char and hash[char] >= start
      cur = index - hash[char]
      start = hash[char] + 1
    else
      cur += 1
    end
    hash[char] = index
    max = max < cur ? cur : max
  end
  max
end
