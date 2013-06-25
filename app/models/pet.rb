class Pet < ActiveRecord::Base
has_many :appointments
belongs_to :customer
end
