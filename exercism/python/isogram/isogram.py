#Solved Aug 6, 2017

def is_isogram(string):
  if (len(string) != 0):
    for x in string.lower():
      if x.isalpha():
        if string.lower().count(x) > 1:
          return False
  return True 

