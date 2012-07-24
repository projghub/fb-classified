module ApplicationHelper
  def facebook_login_button(size='small')
    content_tag("fb:login-button", nil , {
      #:scope => 'user_likes, friends_likes',
      :id => "fb_login",
      :autologoutlink => 'true',
      :size => size,
      :onlogin => 'location = "/"'})
  end

  def flash_class(level)
    case level
    when :notice then "alert alert-info"
    when :success then "alert alert-success"
    when :error then "alert alert-error"
    when :alert then "alert alert-error"
    end
  end

  def full_title(page_title)
    base_title = "Classifieds"
    if page_title.empty?
      base_title
    else
      page_title
    end
  end

end
