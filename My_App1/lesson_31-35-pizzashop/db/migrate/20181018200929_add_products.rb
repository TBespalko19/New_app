class AddProducts < ActiveRecord::Migration[4.2]
  def change
	Product.create :title => 'Hawaiian', :description => 'This is Hawaiian pizza', :price => 250, :size => 50, :is_spice => true, :is_veg => false, :is_best_offer => false, :path_to_image => '/images/hawaiian.jpg'

	Product.create :title => 'Pepperoni', :description => 'Nice Pepperoni pizza', :price => 300, :size => 50, :is_spice => false, :is_veg => false, :is_best_offer => true, :path_to_image => '/images/pepperoni.jpg'

	Product.create :title => 'Vegeterian', :description => 'Amazing Vegeterian pizza', :price => 275, :size => 50, :is_spice => false, :is_veg => true, :is_best_offer => false, :path_to_image => '/images/veg.jpg'
  end
end
