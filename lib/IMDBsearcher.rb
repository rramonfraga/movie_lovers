require 'imdb'

class IMDBsearcher
  def initialize 
    @films = []
    @nine_films = []
  end

  def searcher_films name_film
    @films = Imdb::Search.new(name_film) 
  end

  def check_poster? index
    @films.movies[index].poster != nil
  end

  def load_the_nine_movies_from name_film
    searcher_films name_film
    index = 0
    top_nine = 9
    while index < top_nine && index < @films.movies.size
      if check_poster? index
        @nine_films.push @films.movies[index]
      else
        top_nine = top_nine + 1
      end
      index = index + 1
    end
    @nine_films
  end


end   

