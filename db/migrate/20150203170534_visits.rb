class Visits < ActiveRecord::Migration
  def change
  	add_column :links, :visits, :integer
  end
end
