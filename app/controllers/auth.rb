get '/login' do
  erb :'auth/login'
end

get '/logout' do
  session[:user_id] = nil
  redirect('/')
end

get '/signup' do
  erb :'auth/signup'
end

get '/user/:id' do
  @user = User.find(params[:id])
  erb :'auth/profile'
end

#Create
post '/signup' do
  user = User.new(params[:user])
  if user.save
    session[:user_id] = user.id
    redirect('/')
  else
    session[:error] = user.errors.messages
    redirect('/signup')
  end
end

post '/login' do
  user = User.find_by(name: params[:name]).try(:authenticate,
    params[:password])

  if user
    session[:user_id] = user.id
    redirect('/')
  else
    session[:error] = true
    redirect('/login')
  end
end
