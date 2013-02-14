require 'test_helper'

class TesteControllerTest < ActionController::TestCase
  test "should get testando:integer" do
    get :testando:integer
    assert_response :success
  end

end
