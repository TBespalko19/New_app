class CreateClients < ActiveRecord::Migration[4.2]
  def change
  	
  	# В таблице клиент будут созданы следующие поля
  	# создает таблицу если ее нет
  	create_table :clients do |t|
  		t.text :name
  		t.text :phone
  		t.text :datestamp
  		t.text :barber
  		t.text :color

  		# t.timestamps - создает два дополнительных поля created_at и updated_at
  		t.timestamps
  	end
  end
end
