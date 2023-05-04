# frozen_string_literal: true

class Gizmo
  include Servo::Callable

  validates :name, presence: true

  def execute
    true
  end
end
