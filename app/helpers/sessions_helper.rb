module SessionsHelper
  def current_user
    User.find_by(id: session[:user_id])
  end

  def login(user)
    session[:user_id] = user.id
  end

  def logged_in?
    session[:user_id] != nil
  end

  def author?(user)
    current_user == user
  end

end
