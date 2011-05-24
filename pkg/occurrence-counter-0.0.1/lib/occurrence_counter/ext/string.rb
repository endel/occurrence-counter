# encoding: utf-8

class String
  def word_occurrences(*pre_process)
    text = self.gsub(/[\.,;:&*@!\(\)\"\'%]/, "")
    OccurrenceCounter.count(text.split(" "), *pre_process)
  end
end