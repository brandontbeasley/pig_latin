require "pig_latin/version"

module PigLatin
  # Your code goes here...
  def pig_latin(string)
    if string.start_with?('y')
      cut = string.slice!(1, string.length)
      cut << 'yay'
      return cut
    elsif string.start_with?('a', 'e', 'i', 'o', 'u')


    end
  end
end
