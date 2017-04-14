class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
      "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    holder = []
    self.characters.each do |x|
      holder << "#{x.name} - #{x.show.name}"
    end
    holder
  end
end
