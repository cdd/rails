class Entrant < ActiveRecord::Base
  belongs_to :course

  def after_initialize
    self.name ||= ""
  end
end
