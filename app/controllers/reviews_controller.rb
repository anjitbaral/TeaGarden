class ReviewsController < ApplicationController
  # GET /teas/1/reviews
def index
# For URL like /teas/1/reviews
# Get the tea with id=1
@tea = Tea.find(params[:tea_id])
# Access all reviews for that tea
@reviews = @tea.reviews
end

# GET /teas/1/reviews/2
def show
@tea = Tea.find(params[:tea_id])
# For URL like /teas/1/reviews/2
# Find an review in teas 1 that has id=2
@review = @tea.reviews.find(params[:id])
end

# GET /teas/1/reviews/new
def new
@tea = Tea.find(params[:tea_id])
# Associate an review object with tea 1
@review = @tea.reviews.build
end

# POST /teas/1/reviews
def create
@tea = Tea.find(params[:tea_id])
# For URL like /teas/1/reviews
# Populate an review associate with tea 1 with form data
# tea will be associated with the review
# @review = @tea.reviews.build(params.require(:review).permit!)
@review = @tea.reviews.build(params.require(:review).permit(:details))
if @review.save
# Save the review successfully
redirect_to tea_review_url(@tea, @review)
else
render :action => "new"
end
end

# GET /teas/1/reviews/2/edit
def edit
@tea = Tea.find(params[:tea_id])
# For URL like /teas/1/reviews/2/edit
# Get review id=2 for tea 1
@review = @tea.reviews.find(params[:id])
end

# PUT /teas/1/reviews/2
def update
@tea = Tea.find(params[:tea_id])
@review = Review.find(params[:id])
if @review.update_attributes(params.require(:review).permit(:details))
# Save the review successfully
redirect_to tea_review_url(@tea, @review)
else
render :action => "edit"
end
end

# DELETE /teas/1/reviews/2
def destroy
@tea = Tea.find(params[:tea_id])
@review = Review.find(params[:id])
@review.destroy
respond_to do |format|
format.html { redirect_to tea_reviews_path(@tea) }
format.xml { head :ok }
end
end
end
