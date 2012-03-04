class User < ActiveRecord::Base
  authenticates_with_sorcery!
  # asocjacje
  # z kursami
  has_many :user_kurses
  has_many :kurses, :through => :user_kurses
  
  # z podejsciami
  has_many :podejscies
end
