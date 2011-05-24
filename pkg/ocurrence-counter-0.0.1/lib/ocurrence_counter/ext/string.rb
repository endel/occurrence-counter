# encoding: utf-8

class String
  def word_ocurrences(*pre_process)
    text = self.gsub(/[\.,;:&*@!\(\)\"\'%]/, "")
    OcurrenceCounter.count(text.split(" "), *pre_process)
  end
end