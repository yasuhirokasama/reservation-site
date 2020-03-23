require 'test_helper'

class ConsultationsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get consultations_create_url
    assert_response :success
  end

end
