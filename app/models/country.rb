class Country < ActiveRecord::Base

  has_many :settlements, dependent: :destroy

end
