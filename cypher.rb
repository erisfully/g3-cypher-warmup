class MyString
  def format(string)
    string.gsub!(/\W/, '')
    new_string = ""
    string.scan(/.{1,5}/).each do |s|
      if s.length < 5
        y = s.concat("X"*(5-s.length))
        new_string.concat(y)
      else
        new_string.concat(s + " ")
      end
    end
  new_string.upcase!
  end
end

string = "Now this is a story all about how..."
p MyString.new.format(string)