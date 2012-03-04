class Pytanie < ActiveRecord::Base
  belongs_to :test
  
  has_many :odpowiedzs
end
