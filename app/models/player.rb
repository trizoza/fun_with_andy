class Player < ActiveRecord::Base
  has_many :sponsors
  belongs_to :team
end
