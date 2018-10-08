require 'sinatra'

get '/' do
	erb :index
end

get '/contacts' do
	under_construction
	# @title = 'Contacts'
	# @message = 'Phone number: 111222'
	
	# erb :message
end

get '/fag' do
	under_construction
	# @title = 'FAQ'
	# @message = 'Under construction'
	
	# erb :message
end

get '/something' do
	under_construction
	# @title = 'Something'
	# @message = 'Bla-bla'
	
	# erb :message
end

def under_construction
	@title = 'Under construction'
	@message = 'This page is under construction'
	
	erb :message
end

post '/' do
	@login = params[:aaa]
	@password = params[:bbb]

	if @login == 'admin' && @password == 'secret'
		erb :welcome
	elsif @login == 'admin' && @password == 'admin'
		@message = 'Haha, nice try! Access denied!'
	else
		@message = 'Access denied!!!'
		erb :index
	end
end