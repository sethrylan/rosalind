# http://rosalind.info/problems/subs/

offset = -1
data = File.read('../test/subs')
data.scan(/([GATC]+)\s*([GATC]+)/m) { |string, substring |
  while offset && offset < string.length - substring.length
    offset = string.index(substring, offset + 1)
    if offset
      puts offset + 1
    end
  end
}



