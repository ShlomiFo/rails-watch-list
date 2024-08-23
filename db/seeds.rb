# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# Movie.create(title: "Breakfast on Pluto", overview: "In the 1970s, a young trans woman, Patrick 'Kitten' Braden, comes of age by leaving her Irish town for London, in part to look for her mother and in part because her gender identity is beyond th town's understanding.", poster_url: "/home/shlomig/code/ShlomiFo/rails-watch-list/app/assets/images/breakfastonpluto.jpg", rating: 7.2)
# Movie.create(title: "Kaboom", overview: "A sexually 'undeclared' college freshman's clairvoyant/prophetic dreams are the first sign that something very strange is going on involving his classmates -- with him at the center", poster_url: "/home/shlomig/code/ShlomiFo/rails-watch-list/app/assets/images/kaboom.jpg", rating: 7.9)
# Movie.create(title: "Pink Flamingos", overview: "Notorious Baltimore criminal and underground figure Divine goes up against a sleazy married couple who make a passionate attempt to humiliate her and seize her tabloid-given title as 'The Filthiest Person Alive'.", poster_url: "/home/shlomig/code/ShlomiFo/rails-watch-list/app/assets/images/pinkflamingos.jpg", rating: 8.1)
# Movie.create(title: "Serial Mom", overview: "She's the perfect all-American parent: a great cook and homemaker, a devoted recycler, and a woman who'll literally kill to keep her children happy.", poster_url: "/home/shlomig/code/ShlomiFo/rails-watch-list/app/assets/images/serialmom.jpg", rating: 7.0)
# Movie.create(title: "Mauric", overview: "Two English school chums find themselves falling in love at Cambridge. To regain his place in society, Clive gives up Maurice and marries. While staying with Clive and his wife, Maurice discovers romance in the arms of the gamekeeper Alec." , poster_url: "/home/shlomig/code/ShlomiFo/rails-watch-list/app/assets/images/maurice.jpg", rating: 7.7)
# Movie.create(title: "Moonligh" , overview: "A young African-American man grapples with his identity and sexuality while experiencing the everyday struggles of childhood, adolescence, and burgeoning adulthood." , poster_url: "/home/shlomig/code/ShlomiFo/rails-watch-list/app/assets/images/maurice.jpg", rating: 7.5)
# Movie.create(title: "Shortbus", overview: "A group of New Yorkers caught up in their romantic-sexual milieu converge at an underground salon infamous for its blend of art, music, politics, and carnality.", poster_url: "/home/shlomig/code/ShlomiFo/rails-watch-list/app/assets/images/shortbus.jpg", rating: 8.1)
# Movie.create(title: "Paris Is Burning", overview: "A chronicle of New York's drag scene in the 1980s, focusing on balls, voguing and the ambitions and dreams of those who gave the era its warmth and vitality.", poster_url: "/home/shlomig/code/ShlomiFo/rails-watch-list/app/assets/images/parisisburning.jpg", rating: 8.5)
# Movie.create(title: "Disclosure", overview: "An in-depth look at Hollywood's depiction of transgender people and the impact of those stories on transgender lives and American culture.", poster_url: "/home/shlomig/code/ShlomiFo/rails-watch-list/app/assets/images/disclosure.jpg", rating: 8.6)
# Movie.create(title: "Tangerine", overview: "A hooker tears through Tinseltown on Christmas7.9 Eve searching for the pimp who broke her heart.", poster_url: "/home/shlomig/code/ShlomiFo/rails-watch-list/app/assets/images/tangarin.jpg", rating:7.9)
# Movie.create(title: "Blue Jean", overview: "In 1988, a closeted teacher is pushed to the brink when a new student threatens to expose her sexuality.  ", poster_url: "/home/shlomig/code/ShlomiFo/rails-watch-list/app/assets/images/bluejean.jpg", rating:8.1)
# Movie.create(title: "The Rocky Horror Picture Show" , overview: "A newly-engaged couple have a breakdown in an isolated area and must seek shelter at the bizarre residence of Dr. Frank-n-Furter.", poster_url: "/home/shlomig/code/ShlomiFo/rails-watch-list/app/assets/images/rocky.jpg", rating:8.5)
# Movie.create(title: "Hedwig and the Angry Inch", overview: "A gender-queer punk-rock singer from East Berlin tours the U.S. with her band as she tells her life story and follows the former lover/band-mate who stole her songs.", poster_url: "/home/shlomig/code/ShlomiFo/rails-watch-list/app/assets/images/hedwig.jpg", rating: 8.3)
# Movie.create(title: "Boys Don't Cry", overview: "A young man named Brandon Teena navigates love, life, and being transgender in rural Nebraska.", poster_url: "/home/shlomig/code/ShlomiFo/rails-watch-list/app/assets/images/boysdontcry.jpg", rating: 8.2)

require 'open-uri'

url = 'https://tmdb.lewagon.com/movie/top_rated'
data = open(url).read
parsed_data = JSON.parse(data)

parsed_data.each do |item|
  Movie.create!(
    name: item['original_title'],
    description: item['overview'],
    rating: item['vote_average'],
    poster_url: "https://tmdb.lewagon.com/movie/top_rated"+item['poster_path']
  ``)
  end

List.create(name: "Comady")
List.create(name: "Musical")
List.create(name: "Crime")
List.create(name: "Drama")
