class Sample < ApplicationRecord
  validates :name, presence: true

  def make_uppercase
    name.upcase
  end

end
