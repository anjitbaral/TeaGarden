class ReviewObserver < ActiveRecord::Observer
  def after_create(review)
    Notifications.review("anjit11anjit@gmail.com", "New comment was posted", review).deliver
  end
end
