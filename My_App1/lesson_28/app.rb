require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'

def init_db
	@db = SQLite3::Database.new 'leprosorium.db'
	@db.results_as_hash = true
end

# before вызывается каждый раз при перезагрузке
# любой страницы
before do

	# инициализация БД
	init_db
end

# configure вызывается каждый раз при конфигурации приложения:
#когда изменился код программы И перезагрузилась страница
configure do
	
	# инициализация БД
	init_db
	#создает таблицу, если таблица не существует
	@db.execute 'CREATE TABLE IF NOT EXISTS Posts
	(
		id INTEGER PRIMARY KEY AUTOINCREMENT,
		created_date DATE,
		content TEXT
	)'

	#создает таблицу, если таблица не существует
	@db.execute 'CREATE TABLE IF NOT EXISTS Comments
	(
		id INTEGER PRIMARY KEY AUTOINCREMENT,
		created_date DATE,
		content TEXT,
		post_id interger
	)'
end

get '/' do

	#выбираем список постов из БД
	@results = @db.execute 'select * from Posts order by id desc'
	erb :index
end

# обработчик get-запроса /new
#(браузер получает страницу с сервера)
get '/new' do
  erb :new
end

# обработчик post-запроса /new
#(браузер отправляет страницу с сервера)

post '/new' do

	# получаем переменную из post-запроса
	content = params[:content]

	if content.length <= 0
		@error = 'Type post text'
		return erb :new
	end

	# сохранение данных БД
	@db.execute 'insert into Posts (content, created_date) values (?, datetime())', [content]
	
	# перенаправление на главную страницу
	redirect to('/')
end

	# Вывод информации о посте
	get '/details/:post_id' do

	# получаем переменную из url
	post_id = params[:post_id]

	# получаем список постов
	# (у нас будет только один пост)
	results = @db.execute 'select * from Posts where id = ?', [post_id]
	
	# выбираем один пост в переменную @row
	@row = results[0]

	#выбираем коментарии для нашего поста
	@comments = @db.execute 'select * from Comments where post_id = ? order by id', [post_id]

	# возвращаем представление details.erb
	erb :details
end

# обработчик post-запроса /details/...
#(браузер отправляет страницу с сервера, мы их принимаем)
post '/details/:post_id' do

	
	# получаем переменную из url'a
	post_id = params[:post_id]

	# получаем переменную из post-запроса
	content = params[:content]

	# сохранение данных в БД
	@db.execute 'insert into Comments
		(
			content,
			created_date,
			post_id
		)
			values
		(
			?,
			datetime(),
			?
			)', [content, post_id] # сколько знаков вопроса столько елементов в нашем массиве

	# перенаправление на страницу поста
	redirect to('/details/' + post_id)
end