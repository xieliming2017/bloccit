module UsersHelper
  def user_has_any_posts_or_comments?(user)
    return false if user.posts.count == 0 && user.comments.count ==0
    return true
  end
end
