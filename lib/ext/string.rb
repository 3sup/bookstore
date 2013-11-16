class String

  # Given a string returns its first int words and appends an omission
  # wich is empty by default.
  # "Lorem ipsum dolor sit amet".truncate_by_word(2, "..") #=> "Lorem ipsum.."
  def truncate_by_word (int, omission=" ")
    split(/ |-/).take(int).join(" ") + omission
  end

  def quote (char='"')
        "#{char}" + self + "#{char}" 
  end

end