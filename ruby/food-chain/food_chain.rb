class FoodChain
  VERSION = 2
  def self.song
    animals = ["fly", "spider", "bird", "cat", "dog", "goat", "cow", "horse"]
    unique_strings = {
      "fly" => "I don't know why she swallowed the fly. Perhaps she'll die.\n",
      "spider" => "It wriggled and jiggled and tickled inside her.",
      "bird" => "How absurd to swallow a bird!",
      "cat" => "Imagine that, to swallow a cat!",
      "dog" => "What a hog, to swallow a dog!",
      "goat" => "Just opened her throat and swallowed a goat!",
      "cow" => "I don't know how she swallowed a cow!",
      "horse" =>  "She's dead, of course!"
    }

    full_text = ""
    accum_text = "#{unique_strings["fly"]}\n"
    animals.each_with_index do |animal,index|

      flavor_text = "#{unique_strings[animal]}\n"
      i_know = "I know an old lady who swallowed a #{animal}.\n#{flavor_text}"

      if index == 2
        last_animal = animals[index-1]
        new_text = "She swallowed the #{animal} to catch the #{last_animal} that wriggled and jiggled and tickled inside her.\n"
      elsif index > 0
        last_animal = animals[index-1]
        new_text = "She swallowed the #{animal} to catch the #{last_animal}.\n"
      end

      full_text << "#{i_know}"
      unless animal == "horse" || animal == "fly"
        accum_text = new_text << accum_text
        full_text << accum_text
      end
    end
    full_text
  end
end

puts FoodChain.song
