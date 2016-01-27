class CharSort
  def self.sort_string(string)
    string.split('').sort.join
  end

  def self.count_character(string)
    string.split('').inject(Hash.new(0)) do |memo, char|
      memo[char] += 1
      memo
    end
  end
end
