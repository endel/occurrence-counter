
class Array
  def count_ocurrences(*pre_process)
    OcurrenceCounter.count(self, *pre_process)
  end
end