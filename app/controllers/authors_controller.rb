class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new(author_params)
  end

  def create
    @author = Author.create(author_params)

    redirect_to author_path(@author)
  end

  def edit
    @author = Author.find(params[:id])
  end

  def update
    @author = Author.find(params[:id])
    @author.update(author_params)
    @author.save
    redirect_to author_path(@author)
  end

  private

  def author_params
    params.permit(:name, :email, :phone_number)
  end
end
