class FoodChain
  VERSION = 2
  def self.song
    animals = %w(fly spider bird cat dog goat cow horse)
    unique_strings = {
      fly: "I don't know why she swallowed the fly. Perhaps she'll die.\n",
      spider: "It wriggled and jiggled and tickled inside her.",
      bird: "How absurd to swallow a bird!",
      cat: "Imagine that, to swallow a cat!",
      dog: "What a hog, to swallow a dog!",
      goat: "Just opened her throat and swallowed a goat!",
      cow: "I don't know how she swallowed a cow!",
      horse: "She's dead, of course!"
    }

    accum_text = "#{unique_strings[:fly]}\n"
    animals.each_with_index.with_object("") do |(animal , index) , full_text|

      flavor_text = "#{unique_strings[animal.to_sym]}\n"
      i_know = "I know an old lady who swallowed a #{animal}.\n#{flavor_text}"

      prev_animal = animals[index - 1]
      ending = index == 2 ? " that #{unique_strings[:spider][3..-1]}\n" : ".\n"
      new_text = "She swallowed the #{animal} to catch the #{prev_animal}#{ending}"

      full_text << "#{i_know}"
      unless animal == "horse" || animal == "fly"
        accum_text = new_text << accum_text
        full_text << accum_text
      end
    end
  end
end
