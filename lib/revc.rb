
#http://rosalind.info/problems/revc/

data = File.read('../test/revc.txt')
puts data.reverse.gsub(/[GATC]/, 'G' => 'C', 'A' => 'T', 'C' => 'G', 'T' => 'A')

# Also, in ruby <1.9.2:
#complements = [ ['A','T'], ['C','G'],['G','C'],['T','A']]
#complements.each { | complement | data.gsub!(complement[0], complement[1])}
