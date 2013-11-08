class Amoeba < ActiveRecord::Base
  belongs_to :act
  has_one :talent
end
