
class OccurrenceCounter
  attr_reader :pre_process, :source
  
  def self.count(source, *pre_process)
    occurrece_counter = OccurrenceCounter.new(source)
    occurrece_counter.pre_process(*pre_process) if pre_process.length > 0
    occurrece_counter.count
  end
  
  def initialize(source)
    @source = source
    @iteration_method = :each
    @pre_process = []
  end
  
  def pre_process(*methods)
    methods.each {|method| @pre_process << method }
  end
  
  def count
    occurrences = Hash.new(0)
    @source.send(@iteration_method) do |value|
      @pre_process.each {|hook| value = (hook.is_a? Proc) ? hook.call(value) : value.send(hook)}
      # Skip invalid occurrences
      next if value.nil?
      
      occurrences[value] += 1
    end
    occurrences
  end
  
end