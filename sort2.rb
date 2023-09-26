def reverse_phrase(phrase)
  phrase.split(' ').reverse.join(' ')
end

def generate_combinations(seed1, seed2)
  orientations_seed1 = [seed1, reverse_phrase(seed1)]
  orientations_seed2 = [seed2, reverse_phrase(seed2)]
  
  combinations = []

  orientations_seed1.each do |orient1|
    orientations_seed2.each do |orient2|
      combinations << "#{orient1} #{orient2}"
    end
  end

  orientations_seed2.each do |orient2|
    orientations_seed1.each do |orient1|
      combinations << "#{orient2} #{orient1}"
    end
  end

  combinations
end

seed1 = "word1 word2 word3 word4 word5 word6 word7 word8 word9 word10 word11 word12"
seed2 = "word13 word14 word15 word16 word17 word18 word19 word20 word21 word22 word23 word24"

combinations = generate_combinations(seed1, seed2)
combinations.each_with_index do |combo, index|
  puts "Combination #{index + 1}: #{combo}"
end





