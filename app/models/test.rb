class Test < ActiveRecord::Base
  # asocjacje
  # z kursem
  has_many :kurs_tests
  has_many :kurses, :through => :kurs_tests
  
  has_many :podejscies
  
  has_many :pytanies
  
  belongs_to :dzial
end
