require 'test_helper'

class SubscrptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @subscrption = subscrptions(:one)
  end

  test "should get index" do
    get subscrptions_url
    assert_response :success
  end

  test "should get new" do
    get new_subscrption_url
    assert_response :success
  end

  test "should create subscrption" do
    assert_difference('Subscrption.count') do
      post subscrptions_url, params: { subscrption: { credit_card_number: @subscrption.credit_card_number, cvv: @subscrption.cvv, email: @subscrption.email, expiration: @subscrption.expiration } }
    end

    assert_redirected_to subscrption_url(Subscrption.last)
  end

  test "should show subscrption" do
    get subscrption_url(@subscrption)
    assert_response :success
  end

  test "should get edit" do
    get edit_subscrption_url(@subscrption)
    assert_response :success
  end

  test "should update subscrption" do
    patch subscrption_url(@subscrption), params: { subscrption: { credit_card_number: @subscrption.credit_card_number, cvv: @subscrption.cvv, email: @subscrption.email, expiration: @subscrption.expiration } }
    assert_redirected_to subscrption_url(@subscrption)
  end

  test "should destroy subscrption" do
    assert_difference('Subscrption.count', -1) do
      delete subscrption_url(@subscrption)
    end

    assert_redirected_to subscrptions_url
  end
end
