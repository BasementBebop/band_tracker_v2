class Band < ActiveRecord::Base
  has_and_belongs_to_many :venues
  before_create(:capitalize_name)
  validates(:name, :presence => true)

  private
  define_method(:capitalize_name) {
    self.name=(name().capitalize())
  }

end
