class StoryController < ApplicationController
  def show
    @story = Story.find(params[:id])
  end

  def index
    @stories = Story.all
  end

  def update
  end

  def destroy
  end

  def new
  end

  def create
  end

  def edit
  end
end
