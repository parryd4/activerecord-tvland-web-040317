class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network

  #unsure if has_many through relationship requires
  #receiver to have belongs to, doenst look necessary
  #but makes me want to learn more about build methods in spec
end
