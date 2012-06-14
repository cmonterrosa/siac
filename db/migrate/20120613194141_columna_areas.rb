class ColumnaAreas < ActiveRecord::Migration
  def self.up
	add_column :issues, :area_id, :integer	
  end

  def self.down
	remove_column :issues, :area_id
  end
end


