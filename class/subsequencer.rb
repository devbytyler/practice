sentence1 = "Your mom goes to college"
sentence2 = "The quick brown fox goes to college everyday"

subsequence = []

sentence1.split('').each do |l1|
  if sentence2.include?(subsequence.to_s) 
    subsequnce << l1
  end
  subsequence
end