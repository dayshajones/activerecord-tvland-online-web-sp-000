class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network
  
  def actors_list
    self.actors.collect {|n| "#{n.first_name} #{n.last_name}"}
  end
end