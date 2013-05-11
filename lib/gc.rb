# http://rosalind.info/problems/gc/

def gc(sequence)
  return sequence.count("GC").to_f / sequence.count("GATC").to_f
end

greatest_gc, greatest_name = 0.0, ""
data = File.read('../test/gc')
data.scan(/>(Rosalind_\d{4})\s([GATC\s]+)/m) { |sequence_name, sequence |
  gc = gc(sequence)
  if gc > greatest_gc
    greatest_gc = gc
    greatest_name = sequence_name
  end
}

puts greatest_name, greatest_gc*100


