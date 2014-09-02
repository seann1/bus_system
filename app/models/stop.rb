class Stop < ActiveRecord::Base
  validates :name, presence: :true
  belongs_to :line
  belongs_to :station
end
