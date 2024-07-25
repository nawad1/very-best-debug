class CommentsController < ApplicationController
  def create
    comment_author_id = params.fetch("query_author_id")
    comment_venue_id = params.fetch("query_venue_id")
    comment_body = params.fetch("query_body")
    a_new_comment = Comment.new
    a_new_comment.author_id = comment_author_id
    a_new_comment.venue_id = comment_venue_id
    a_new_comment.body = comment_body 
    a_new_comment.save

    redirect_to("/venues/#{a_new_comment.venue_id}")
  end
end
