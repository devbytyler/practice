// complete on May 9, 2017


Hamming = function() {};

counter = function(str1, str2) {
  var diff = 0;
  for (var i = 0; i <= str1.length - 1; i++)
  { 
    if (str1[i] !== str2[i]) {
      diff ++;
    }
  }
  return diff;
};

Hamming.prototype.compute = function(dna1, dna2) {
  if (dna1.length !== dna2.length) throw new Error('DNA strands must be of equal length.');
  return counter(dna1, dna2);
};

module.exports = Hamming;