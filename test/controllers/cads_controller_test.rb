require 'test_helper'

class CadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cad = cads(:one)
  end

  test "should get index" do
    get cads_url
    assert_response :success
  end

  test "should get new" do
    get new_cad_url
    assert_response :success
  end

  test "should create cad" do
    assert_difference('Cad.count') do
      post cads_url, params: { cad: { age: @cad.age, id: @cad.id, name: @cad.name } }
    end

    assert_redirected_to cad_url(Cad.last)
  end

  test "should show cad" do
    get cad_url(@cad)
    assert_response :success
  end

  test "should get edit" do
    get edit_cad_url(@cad)
    assert_response :success
  end

  test "should update cad" do
    patch cad_url(@cad), params: { cad: { age: @cad.age, id: @cad.id, name: @cad.name } }
    assert_redirected_to cad_url(@cad)
  end

  test "should destroy cad" do
    assert_difference('Cad.count', -1) do
      delete cad_url(@cad)
    end

    assert_redirected_to cads_url
  end
end
