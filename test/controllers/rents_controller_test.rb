require 'test_helper'

class RentsControllerTest < ActionController::TestCase
  setup do
    @rent = rents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rent" do
    assert_difference('Rent.count') do
      post :create, rent: { category: @rent.category, deposit: @rent.deposit, description: @rent.description, finish: @rent.finish, image: @rent.image, name: @rent.name, price: @rent.price, start: @rent.start, total: @rent.total, totald: @rent.totald }
    end

    assert_redirected_to rent_path(assigns(:rent))
  end

  test "should show rent" do
    get :show, id: @rent
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rent
    assert_response :success
  end

  test "should update rent" do
    patch :update, id: @rent, rent: { category: @rent.category, deposit: @rent.deposit, description: @rent.description, finish: @rent.finish, image: @rent.image, name: @rent.name, price: @rent.price, start: @rent.start, total: @rent.total, totald: @rent.totald }
    assert_redirected_to rent_path(assigns(:rent))
  end

  test "should destroy rent" do
    assert_difference('Rent.count', -1) do
      delete :destroy, id: @rent
    end

    assert_redirected_to rents_path
  end
end
