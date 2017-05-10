// solved on may 10, 2017

DnaTranscriber = function(){}

var builder = function(dna){
  strand = '';
  for (var i = 0 ; i <= dna.length - 1; i++)
  {
    letter = dna[i];
    if (letter !== 'C' && letter !== 'G' && letter !== 'A' && letter !== 'T') throw new Error('Invalid input');
    else {
      strand += (letter === 'C') ? 'G' :
        (letter === 'G') ? 'C' :
        (letter === 'A') ? 'U' :
        (letter === 'T') ? 'A' : '';
      }
    }
  return strand;
}

DnaTranscriber.prototype.toRna = function(dna) {
  return builder(dna, 0);
}

module.exports = DnaTranscriber;