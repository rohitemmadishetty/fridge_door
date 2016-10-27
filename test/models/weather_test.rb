require 'test_helper'

class WeatherTest < ActiveSupport::TestCase
  test "most_recent" do
    assert_equal weather(:one), Weather.most_recent
  end
end
