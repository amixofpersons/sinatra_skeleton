def display_error
  error = session[:error]
  session[:error] = nil

  if error
    erb :'errors',  layout: true, locals: {errors: error}
    "Username has been taken or password incorrect"
  else
    return ""
  end
end

def login_error
  error = session[:error]
  session[:error] = nil
  if error
    "Your username or password is/are invalid\n"
  else
    return ""
  end
end
