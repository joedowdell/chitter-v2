get '/peeps/new' do
  erb :"peeps/new"
end

post '/peeps' do
	content = params["content"]
	time_stamp = params["time_stamp"]
    
    if session[:user_id] 
      @peep = Peep.create(:content => content, :time_stamp => Time.now.asctime, :user_id => session[:user_id])
      flash[:notice] = "Peep sent successfully!"
    else
      flash[:notice] = "Please sign in to Chitter to post a peep"
    end
    redirect to('/')
end

