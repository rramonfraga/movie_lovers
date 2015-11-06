require 'pry'
require_relative '../lib/IMDBsearcher.rb'

RSpec.describe "IMDBsearcher" do
  before :all do
    @IMDB = IMDBsearcher.new
    @films = @IMDB.searcher_films "zugarramurdi"
  end

  describe "#searcher_films" do
    it "should return an array the films" do
      expect(@films).to be_truthy
    end
  end

  describe "#check_poster?" do 
    it "should return the url when the input is 0" do
      expect(@IMDB.check_poster?(0)).to be_truthy 
    end
  end

  describe "#load_the_nine_movies_from" do 
    it "should return an array with 9 movies with poster" do
      expect(@IMDB.load_the_nine_movies_from("Star Wars").size).to eq(9) 
    end
  end
end



