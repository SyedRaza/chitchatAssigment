class LinksController < ApplicationController
  def index
    @links = Link.all
  end
  def show
    @link = Link.find(params[:id])
  end


  def create
    p = {url: params[:link][:url]}
    @link = Link.new(p)
    if @link.save
      redirect_to  @link
    else
      redirect_to root_path
    end
  end
  def new
    @link = Link.new
  end
end
