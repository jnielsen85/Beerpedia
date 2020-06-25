class BrewersController < ApplicationController
  before_action :check_for_login

  def index
      @brewers = Brewer.all
    end

    def show
      @brewer = Brewer.find params[:id]
    end

    def new
      @brewer = Brewer.new
    end

    def create
      brewer = Brewer.create brewer_params
      @current_user.brewers << brewer
      redirect_to brewer
    end

    def edit
      @brewer = Brewer.find params[:id]
    end

    def update
      if @current_user.brewers.exists? params[:id]
      brewer = Brewer.find params[:id]
      brewer.update brewer_params
      redirect_to brewer
      else
      redirect_to root_path
      end
    end

    def destroy
      # redirect_to root_path unless @current_user.brewer_ids.include? params[:id]
      brewer = Brewer.find params[:id]
      brewer.destroy
      redirect_to brewers_path
    end

    private
    def brewer_params
      params.require(:brewer).permit(:name, :email, :bio, :specialty, :image)
    end
  end
