require 'test_helper'

class ToppagesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
end
require 'test_helper'

class ToppagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get toppages_index_url
    assert_response :success
  end

end
