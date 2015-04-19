require 'benchmark'
require 'hashtable'
require 'hash_linked_list'

words = []
File.open('/usr/share/dict/words').each_line { |word| words << word }
hash1 = Hashtable.new(1_000, HashLinkedList)
hash2 = Hashtable.new(125_000, HashLinkedList)

Benchmark.bm do |x|

  x.report("Hashtable1 set") do
    words.each { |word|  hash1.set(word, word.reverse) }
  end

  x.report("Hashtable1 get") do
    words.each { |word| hash1.get(word) }
  end

  x.report("Hashtable2 set") do
    words.each { |word|  hash2.set(word, word.reverse) }
  end

  x.report("Hashtable2 get") do
    words.each { |word| hash2.get(word) }
  end
end
