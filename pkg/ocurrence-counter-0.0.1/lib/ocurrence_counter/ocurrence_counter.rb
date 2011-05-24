
class OcurrenceCounter
  attr_reader :pre_process, :post_process, :source
  
  def self.count(source, *pre_process)
    ocurrece_counter = OcurrenceCounter.new(source)
    ocurrece_counter.pre_process(*pre_process) if pre_process.length > 0
    ocurrences = ocurrece_counter.count
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
    ocurrences = Hash.new(0)
    @source.send(@iteration_method) do |value|
      @pre_process.each {|hook| value = (hook.is_a? Proc) ? hook.call(value) : value.send(hook)}
      # Skip invalid ocurrences
      next if value.nil?
      
      ocurrences[value] += 1
    end
    ocurrences
  end
  
end