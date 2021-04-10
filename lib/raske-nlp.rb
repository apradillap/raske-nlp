require "raske-nlp/version"
require "raske-nlp/stop_list"
require "raske-nlp/result"

module RaskeNLP
  DEFAULTS = {
    min_phrase_length: 1,
    max_phrase_length: 3,
    min_frequency:     1,
    min_score:         1,
    stop_list:         StopList::ISO
  }

  def self.run(text, options={})
    RaskeNLP::Result.new(text, DEFAULTS.merge(options))
  end
end
