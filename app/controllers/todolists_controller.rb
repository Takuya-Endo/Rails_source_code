class TodolistsController < ApplicationController
  def new
    @list = List.new
    # binding.pry
  end

  def create
    list = List.new(list_params)
    list.save
    # binding.pry
    redirect_to '/top'
  end

  private
  def list_params
    params.require(:list).permit(:title, :body)
  end

end
