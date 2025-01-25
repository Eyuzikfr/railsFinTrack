require "test_helper"

class RecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @record = records(:one)
  end

  test "should get index" do
    get records_url
    assert_response :success
  end

  test "should get new" do
    get new_record_url
    assert_response :success
  end

  test "should create record" do
    assert_difference("Record.count") do
      post records_url, params: { record: { expenditure_amount: @record.expenditure_amount, expenditure_category: @record.expenditure_category, expenditure_details: @record.expenditure_details, income_amount: @record.income_amount, income_details: @record.income_details } }
    end

    assert_redirected_to record_url(Record.last)
  end

  test "should show record" do
    get record_url(@record)
    assert_response :success
  end

  test "should get edit" do
    get edit_record_url(@record)
    assert_response :success
  end

  test "should update record" do
    patch record_url(@record), params: { record: { expenditure_amount: @record.expenditure_amount, expenditure_category: @record.expenditure_category, expenditure_details: @record.expenditure_details, income_amount: @record.income_amount, income_details: @record.income_details } }
    assert_redirected_to record_url(@record)
  end

  test "should destroy record" do
    assert_difference("Record.count", -1) do
      delete record_url(@record)
    end

    assert_redirected_to records_url
  end
end
