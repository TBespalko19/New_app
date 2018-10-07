require 'sinatra'

get '/' do
	'Hi'
end

post '/' do
	@login = params[:aaa]
	@password = params[:bbb]

	if @login == 'admin' && @password == 'secret'
		erb :welcome
	else
		erb :index
	end
end