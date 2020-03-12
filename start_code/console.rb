require ("pry")

require_relative("models/casting")
require_relative("models/movie")
require_relative("models/star")

# Casting.delete_all()
# Movie.delete_all()
# Star.delete_all()

star1 = Star.new({"first_name" => "Tom", "last_name" => "Cruise"})
star1.save()
star2 = Star.new({"first_name" => "Matt", "last_name" => "Damon"})
star2.save()
star3 = Star.new({"first_name" => "Sean", "last_name" => "Bean"})
star3.save()

movie1 = Movie.new({"title" => "Top Gun", "genre" => "Action"})
movie1.save()
movie2 = Movie.new({"title" => "The Martian", "genre" => "Sci-Fi"})
movie2.save()
movie3 = Movie.new({"title" => "Lord of the Rings", "genre" => "Fantasy"})
movie3.save()

casting1 = Casting.new({"star_id" => star1.id, "movie_id" => movie1.id, "fee" => 1000})
casting1.save()
casting2 = Casting.new({"star_id" => star2.id, "movie_id" => movie2.id, "fee" => 1500})
casting2.save()
casting3 = Casting.new({"star_id" => star3.id, "movie_id" => movie2.id, "fee" => 2000})
casting3.save()
casting4 = Casting.new({"star_id" => star3.id, "movie_id" => movie3.id, "fee" => 2500})
casting4.save()

binding.pry
nil
