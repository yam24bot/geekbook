class TagsController < ApplicationController
  def show
    @tag = Tag.find_by(name: params[:id])
    @books = @tag.books
  end
end
