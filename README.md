# raske-nlp

> Ruby implementation of the Rapid Automatic Spanish Keyword Extraction (RAKE) algorithm

## Getting started
Add the following line to your Gemfile:

```ruby
gem 'raske-nlp'
```

Then run `bundle install`


## Usage

```ruby
require 'raske-nlp'

text = "Uno de enero, dos de febrero, tres de marzo, cuatro de abril, cinco de mayo,
        seis de junio siete de julio, ¡SAN FERMÍN! Uno de enero, dos de febrero,
        tres de marzo, cuatro de abril, cinco de mayo, seis de junio siete de julio, ¡SAN FERMÍN!
        A Pamplona hemos de ir, con una media, con una media, a Pamplona hemos de ir
        con una media y un calcetín."

result = RaskeNLP.run(text, {
  min_phrase_length: 1,
  max_phrase_length: 3,
  min_frequency:     1,
  min_score:         1,
  stop_list:         RaskeNLP::StopList::ISO
})

result.keywords
```

```ruby
 => {"san fermín"=>15.333333333333334, "calcetín"=>5.333333333333334, "media"=>1.0, "pamplona"=>1.0, "julio"=>1.0, "junio"=>1.0, "mayo"=>1.0, "abril"=>1.0, "marzo"=>1.0, "febrero"=>1.0, "enero"=>1.0}
```

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
