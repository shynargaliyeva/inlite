class MoviesController < ApplicationController
    before_action :authorize
    
    def index
        @movies = Movie.search(params[:search])
    end

    def show
        @movie = Movie.find(params[:id])
    end

    private

    def movie_params
        params.require(:movie).permit(:title, :year, :run_time, :rating, :synopsis, :psychologist, :why_recommend, :learn)
    end

end