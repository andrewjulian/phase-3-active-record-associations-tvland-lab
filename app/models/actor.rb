class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{first_name} #{last_name}"
  end

  def list_roles
    #self. "#{self.characters.map(&:name)} - #{self.shows.map(&:name)}"
    self.characters.map{ |roles| "#{roles.name} - #{roles.show.name}"}
  end

end