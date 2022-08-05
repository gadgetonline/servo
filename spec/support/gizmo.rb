# frozen_string_literal: true

class Gizmo < Servo::Base
  validates :name, presence: true

  def execute
    true
  end
end
