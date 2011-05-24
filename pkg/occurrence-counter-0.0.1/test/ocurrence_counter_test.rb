require './test_helper'

class OcurrenceCounterTest < Test::Unit::TestCase
  
  def test_array
    fixture = [1,1,1,1,1,3,3,1,3,3,3,5,5]
    array_count = fixture.count_ocurrences
    
    assert array_count.is_a? Hash
    assert_equal array_count[1], 6
    assert_equal array_count[3], 5
    assert_equal array_count[5], 2
  end
  
  def test_string
    fixture = "Hello I am a little string and I am very happy counting myself. Because myself is cool and I am myself..."
    word_count = fixture.word_ocurrences(:downcase)
    
    assert word_count.is_a? Hash
    assert_equal word_count["hello"], 1
    assert_equal word_count["i"], 3
    assert_equal word_count["am"], 3
    assert_equal word_count["a"], 1
    assert_equal word_count["and"], 2
    assert_equal word_count["myself"], 3
  end
  
  def test_custom_pre_processor
    fixture = "Hello I am a little string and I am very happy counting myself. Because myself is cool and I am myself..."
    word_count = fixture.word_ocurrences(lambda {|str|
        str = str.downcase
        str.length > 4 ? str : nil
    })
  
    assert word_count.is_a? Hash
    assert_equal word_count.length, 7
  end
  
end