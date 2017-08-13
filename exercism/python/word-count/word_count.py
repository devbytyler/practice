#solved aug 12, 2017

import re

def word_count(str):
  count = {}
  for word in re.sub('[^0-9a-zA-Z]+', ' ', str).lower().split():
    if word in count:
      count[word] += 1
    else: 
      count[word] = 1
  return count