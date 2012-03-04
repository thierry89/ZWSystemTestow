class Kurs < ActiveRecord::Base
  #asocjacje
  # z users
  has_many :user_kurses
  has_many :users, :through => :user_kurses
  
  # z testami
  has_many :kurs_tests
  has_many :tests, :through => :kurs_tests
end
