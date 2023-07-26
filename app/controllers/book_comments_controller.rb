class BookCommentsController < ApplicationController
  def create
    book = Book.find(params[:book_id])
    comment = current_user.book_comments.new(book_comment_params)
    comment.book_image_id = book_image.id
    comment.save
    redirect_to book_image_path(book)
  end

  def destroy
  end
  
  private

  def book_comment_params
    params.require(:book_comment).permit(:comment)
  end
end
