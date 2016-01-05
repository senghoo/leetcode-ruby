# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  hash = Hash.new
  nums.each.with_index do |num, index|
    find_this = target - num
    if hash.include? find_this
      return [hash[find_this] + 1, index + 1]
    else
      hash[num] = index
    end
  end
end
