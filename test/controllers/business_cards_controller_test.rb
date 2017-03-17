require 'test_helper'

class BusinessCardsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get business_cards_index_url
    assert_response :success
  end

  test "should get new" do
    get business_cards_new_url
    assert_response :success
  end

end
