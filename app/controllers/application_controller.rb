class ApplicationController < Sinatra::Base
  set :default_content_type, "application/json"

  # Add your routes here
  get "/book" do
    book = Book.all
    book.to_json
  end

  # get book by id
  get "/book/:id" do
    book = Book.find(params[:id])
    book.to_json(only: [:id, :title, :publisher, :year], include: { authors: { only: [:name, :gender], include: { reviews: { only: [:comment, :score] } } } })
  end

  #get reviews
  get "/reviews" do
    reviews = Review.all
    reviews.to_json
  end

  #get author details
  get "/author" do
    author = Author.all
    author.to_json
  end

  #post request
  post "/book" do
    books = Book.create(
      title: params[:title],
      price: params[:price],
      publisher: params[:publisher],
      year: params[:year],
    )
    books.to_json
  end

  # update
  patch "/book/:id" do
    books = Book.find(params[:id])
    books.update(
      title: params[:title],
      publisher: params[:publisher],
    )
    books.to_json
  end

  #delete
  delete "/book/:id" do
    books = Book.find(params[:id])
    books.destroy
    books.to_json
  end
end
