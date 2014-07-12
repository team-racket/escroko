require 'test_helper'

class PostRecordedTransactionsControllerTest < ActionController::TestCase
  setup do
    @post_recorded_transaction = post_recorded_transactions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post_recorded_transactions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post_recorded_transaction" do
    assert_difference('PostRecordedTransaction.count') do
      post :create, post_recorded_transaction: { account_id: @post_recorded_transaction.account_id, category_id: @post_recorded_transaction.category_id, commentary: @post_recorded_transaction.commentary, day: @post_recorded_transaction.day, default_amount: @post_recorded_transaction.default_amount, end_date: @post_recorded_transaction.end_date, label: @post_recorded_transaction.label, start_date: @post_recorded_transaction.start_date, to_validate: @post_recorded_transaction.to_validate, type: @post_recorded_transaction.type }
    end

    assert_redirected_to post_recorded_transaction_path(assigns(:post_recorded_transaction))
  end

  test "should show post_recorded_transaction" do
    get :show, id: @post_recorded_transaction
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @post_recorded_transaction
    assert_response :success
  end

  test "should update post_recorded_transaction" do
    patch :update, id: @post_recorded_transaction, post_recorded_transaction: { account_id: @post_recorded_transaction.account_id, category_id: @post_recorded_transaction.category_id, commentary: @post_recorded_transaction.commentary, day: @post_recorded_transaction.day, default_amount: @post_recorded_transaction.default_amount, end_date: @post_recorded_transaction.end_date, label: @post_recorded_transaction.label, start_date: @post_recorded_transaction.start_date, to_validate: @post_recorded_transaction.to_validate, type: @post_recorded_transaction.type }
    assert_redirected_to post_recorded_transaction_path(assigns(:post_recorded_transaction))
  end

  test "should destroy post_recorded_transaction" do
    assert_difference('PostRecordedTransaction.count', -1) do
      delete :destroy, id: @post_recorded_transaction
    end

    assert_redirected_to post_recorded_transactions_path
  end
end
