class MoviesController < ApplicationController
    # before_action :set_house, only: [:show, :edit, :update, :destroy]
    # before_action :authorize, except: [:index, :show]

    def new 

    end
    
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