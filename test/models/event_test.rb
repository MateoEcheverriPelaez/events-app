require "test_helper"

class EventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should be valid with valid attributes" do
    event = Event.new(title: "Fiesta fin de año", description: "Fiesta de amigos", date: "2024-12-31", address: "Calle 1")
    assert event.valid?
  end
end