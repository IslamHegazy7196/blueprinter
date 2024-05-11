class BooksController < ApplicationController
    def index
        books = Book.page(params[:page]).per(10)
        render json: BookSerializer.new(books).serialized_json
      end
    
      def show
        book = Book.find(params[:id])
        render json: BookSerializer.new(book).serialized_json
      end
end
