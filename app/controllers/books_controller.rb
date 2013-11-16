class BooksController < ApplicationController

  def index
    @books = Book.all

    respond_to do |format|
      format.html
      format.yaml { render text:@books.to_yaml }
      format.json { render text:@books.to_json }
    end
  end

  def show
    @book  = Book.find(params[:id])

    respond_to do |format|
      format.html
      format.yaml { render text:@book.to_yaml }
    end
  end
end
