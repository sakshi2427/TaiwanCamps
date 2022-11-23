if @review.persisted?
  json.form json.partial!('reviews/form.html.erb', campsite: @campsite, review: Review.new)
  json.inserted_item json.partial!('campsites/review.html.erb', review: @review)
else
  json.form json.partial!('reviews/form.html.erb', campsite: @campsite, review: @review)
end
