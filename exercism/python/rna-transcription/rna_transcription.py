#Solved aug 8, 2017

def to_rna(dna):
    rna  = ''    
    pairs = {'G':'C', 
             'C':'G', 
             'T':'A', 
             'A':'U' }
    def getComp(base):
        return pairs.get(base, '')

    for x in dna:
        if (x not in pairs.keys()):
            return ''
        else:
            rna += getComp(x)
    return rna
            
