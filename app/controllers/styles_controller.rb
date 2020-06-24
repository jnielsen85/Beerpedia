class StylesController < ApplicationController
  before_action :check_for_login

  def index
      @styles = Style.all
    end

    def show
      @style = Style.find params[:id]
    end

    def new
      @style = Style.new
    end

    def create
      style = Style.create style_params
      @current_user.styles << style
      redirect_to style
    end

    private
    def style_params
      params.require(:style).permit(:name)
    end
  end
