class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]
  before_action :set_book

  # GET books/1/reviews
  # GET books/1/reviews/reviews.json
  def index
    @reviews = Review.all
  end

  # GET books/1/reviews/1
  # GET books/1/reviews/1.json
  def show
  end

  # GET books/1/reviews/new
  def new
    @review = Review.new
  end

  # GET books/1/reviews/1/edit
  def edit
  end

  # POST books/1/reviews
  # POST books/1/reviews.json
  def create
    @review = Review.new(review_params.merge(book_id: @book.id, user_id: current_user.id))

    respond_to do |format|
      if @review.save
        format.html { redirect_to @book, notice: 'Review was successfully created.' }
        format.json { render :show, status: :created, location: @book }
      else
        format.html { render :new }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reviews/1
  # PATCH/PUT /reviews/1.json
  def update
    respond_to do |format|
      if @review.update(review_params)
        format.html { redirect_to @book, notice: 'Review was successfully updated.' }
        format.json { render :show, status: :ok, location: @book }
      else
        format.html { render :edit }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reviews/1
  # DELETE /reviews/1.json
  def destroy
    @review.destroy
    respond_to do |format|
      format.html { redirect_to books_url(@book), notice: 'Review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_review
    @review = Review.find(params[:id])
  end

  def set_book
    @book = Book.find(params[:book_id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def review_params
    params.require(:review).permit(:book_id, :rating, :description, :user_id)
  end
end