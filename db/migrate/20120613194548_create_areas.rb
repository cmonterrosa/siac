class CreateAreas < ActiveRecord::Migration
  def self.up
    create_table :areas do |t|
      t.string :municipio, :limit => 40
      t.string :descripcion, :limit => 60
    end

    #--creamos catalogo ---
    File.open("#{RAILS_ROOT}/db/catalogos/areas.txt").each{|linea|
      municipio, area = linea.split("-")
      Area.create(:municipio => municipio.strip, :descripcion => area.strip)
    }

  end

  def self.down
    drop_table :areas
  end
end
