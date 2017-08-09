#Complete Aug 8, 2017

def distance(dna1, dna2):
    if (len(dna1) != len(dna2)):
        raise ValueError
    else:
        length = len(dna1)
        distance = 0
        for i in xrange(length):
            if dna1[i] != dna2[i]:
                distance += 1
        return distance
