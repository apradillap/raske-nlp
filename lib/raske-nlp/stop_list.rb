module RaskeNLP
  class StopList
    def initialize(words)
      @words = words
    end

    def to_a
      @words
    end

    def to_regex
      @regex ||= /#{@words.map { |w| "\\b#{w}(?![\\w-])" }.join("|")}/i
    end

    def self.read(filename)
      new(File.read(filename).split("\n").reject { |line| line =~ /^#/ })
    end

    ISO = read(File.join(File.dirname(__FILE__), "../../data/StopWordsIso.txt"))
    ALI   = read(File.join(File.dirname(__FILE__), "../../data/AliStopList.txt"))
  end
end
