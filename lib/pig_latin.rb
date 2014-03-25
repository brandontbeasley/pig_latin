require "pig_latin/version"

module PigLatin
  # Your code goes here...
  def pig_latin(string)
    if string.start_with?('y')
      cut = string.slice!(1, string.length)
      cut << 'yay'
      return cut
    elsif string.start_with?('a', 'e', 'i', 'o', 'u')
      # string.match /^[aeiou](.*)/
      # return "#{$1}way"
      cut = string.slice!(1, string.length)
      cut << 'way'
      return cut
    else
      if /^[^aeiou][aeiouy](.*)/.match(string)
        cut1 = string.slice(0)
        cut2 = string[1] << $1
        cut1 << 'ay'
        return cut2 << cut1
      elsif /^[^aeiou][^aeiouy][aeiouy](.*)/.match(string)
        cut1 = string.slice(0..1)
        cut2 = string[2] << $1
        cut1 << 'ay'
        return cut2 << cut1
      else
        cut1 = string.slice(0..2)
        cut2 = string.slice(3..string.length)
        cut1 << 'ay'
        return cut2 << cut1
      end
    end
  end
end


/[aeiou]/.match('elephant')
