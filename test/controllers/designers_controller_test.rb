require 'test_helper'

class DesignersControllerTest < ActionController::TestCase
  setup do
    @designer = designers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:designers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create designer" do
    assert_difference('Designer.count') do
      post :create, designer: { address_line_1: @designer.address_line_1, address_line_2: @designer.address_line_2, address_line_3: @designer.address_line_3, bio: @designer.bio, cell_number: @designer.cell_number, city: @designer.city, country: @designer.country, email: @designer.email, name: @designer.name, photo_url: @designer.photo_url, post_code: @designer.post_code, province: @designer.province, surburb: @designer.surburb, surname: @designer.surname }
    end

    assert_redirected_to designer_path(assigns(:designer))
  end

  test "should show designer" do
    get :show, id: @designer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @designer
    assert_response :success
  end

  test "should update designer" do
    patch :update, id: @designer, designer: { address_line_1: @designer.address_line_1, address_line_2: @designer.address_line_2, address_line_3: @designer.address_line_3, bio: @designer.bio, cell_number: @designer.cell_number, city: @designer.city, country: @designer.country, email: @designer.email, name: @designer.name, photo_url: @designer.photo_url, post_code: @designer.post_code, province: @designer.province, surburb: @designer.surburb, surname: @designer.surname }
    assert_redirected_to designer_path(assigns(:designer))
  end

  test "should destroy designer" do
    assert_difference('Designer.count', -1) do
      delete :destroy, id: @designer
    end

    assert_redirected_to designers_path
  end
end
