dir = File.dirname(File.expand_path(__FILE__))
$LOAD_PATH.unshift dir + '/../lib'
$TESTING = true

require 'test/unit'
require 'rubygems'
require 'ocurrence_counter'