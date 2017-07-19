require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    new_array = self.split(".")
    new_array.map! {|sentence| sentence.split("?")}
    new_array = new_array.flatten
    new_array.map! {|sentence| sentence.split("!")}
    new_array = new_array.flatten
    no_empty_strings = new_array.reject {|sentence| sentence.empty? || sentence == nil}
    no_empty_strings.count

  end

end
