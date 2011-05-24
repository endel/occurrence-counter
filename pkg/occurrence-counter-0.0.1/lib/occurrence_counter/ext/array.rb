
class Array
  def count_occurrences(*pre_process)
    OccurrenceCounter.count(self, *pre_process)
  end
end