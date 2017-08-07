#completed aug 7, 2017

def is_pangram(string):
  alphabet = map(chr, range(97, 123))
  for letter in alphabet:
    if letter not in string.lower():
      return False
  return True


