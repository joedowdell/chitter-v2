get '/replies/new/:peep_id' do
  @peep_id = params[:peep_id]
  erb :"/replies/new"
end

post '/replies' do 
  # raise params.inspect
	content = params["content"]
  peep_id = params["peep_id"]
	@reply = Reply.create(:content    => content, 
						            :time_stamp => Time.now,
                        :peep_id    => peep_id
                        )
    if @reply.save
      flash[:notice] = "Peeply sent!"
    else
      flash[:notice] = "Could not post your Peep-ply. Please sign in to peep"
    end
    redirect to('/')
end
