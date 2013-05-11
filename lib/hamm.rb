# http://rosalind.info/problems/hamm/


class String
  def hd(s)
    count = 0
    each_codepoint.zip(s.each_codepoint) do |left, right|
      count += 1 unless left == right
    end
    count
  end
end

File.read('../test/hamm').scan(/(\S+)\s*(\S+)/m) { | s, t |
  puts s.hd(t)
}

