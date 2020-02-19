require 'pry'

class String

  def sentence?
    self[-1] == "."
  end

  def question?
    self[-1] == "?"
  end

  def exclamation?
    self[-1] == "!"
  end

  def count_sentences
    sentence_count = 0
    words = self.split(" ")

    words.each do |word|
      if word.sentence? || word.question? || word.exclamation?
        sentence_count += 1
      end
    end

    sentence_count
  end
end