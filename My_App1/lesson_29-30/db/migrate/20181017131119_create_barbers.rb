class CreateBarbers < ActiveRecord::Migration[4.2]
  def change
  	# В таблице клиент будут созданы следующие поля
  	# создает таблицу если ее нет
	create_table :barbers do |t|
	t.text :name

	# t.timestamps - создает два дополнительных поля created_at и updated_at
	t.timestamps
	end

	Barber.create :name => 'Jessie Pinkman'
	Barber.create :name => 'Walter Whire'
	Barber.create :name => 'Gus Fring'
  end
end
