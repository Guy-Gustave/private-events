module ApplicationHelper
  def show_sign_in_or_out
    out = ''
    if logged_in?
      out << link_to('My Profile', user_path(session[:user_id]), class: 'btn btn-outline-success mr-3')
      out << link_to('Sign out', logout_path, class: 'btn btn-outline-danger mr-3', method: :delete)
    else
      out << link_to('login', login_path, class: 'btn btn-outline-success mr-auto')
      out << link_to('Sign up', new_user_path, class: 'btn btn-outline-primary')
    end

    out.html_safe
  end

  def event_show
    out = ''
    if logged_in?
      out << link_to('Home', root_path, class: 'nav-link')
      out << link_to('Create Event', new_event_path, class: 'nav-link mr-auto ')
    end
    out.html_safe
  end
end
