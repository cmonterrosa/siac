class Area < ActiveRecord::Base
 has_many :areas

 def full_descripcion
   "#{self.municipio} - #{self.descripcion}"
 end

end
