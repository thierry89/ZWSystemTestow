class UserKurses < ActiveRecord::Base
  #asocjacje
  #encja laczaca users i kursy
  belongs_to :user
  belongs_to :kurs
end
