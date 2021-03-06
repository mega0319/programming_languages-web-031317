require 'pry';

languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }

  }
}

def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |styles, data|
    data.each do |lang, type|
      new_hash[lang]
      type.each do |key, value|
        new_hash[lang] = {:type => value, :style => []}
        new_hash[lang][:style] << styles
      end
    end
    new_hash[:javascript][:style] << :oo
  end
  new_hash
end
