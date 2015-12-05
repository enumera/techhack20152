require 'test_helper'

class SkydataControllerTest < ActionController::TestCase
  setup do
    @skydatum = skydata(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:skydata)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create skydatum" do
    assert_difference('Skydatum.count') do
      post :create, skydatum: { classification: @skydatum.classification, description: @skydatum.description, genre: @skydatum.genre, name: @skydatum.name, programmeref: @skydatum.programmeref, subgenre: @skydatum.subgenre, synopsis: @skydatum.synopsis, tags: @skydatum.tags }
    end

    assert_redirected_to skydatum_path(assigns(:skydatum))
  end

  test "should show skydatum" do
    get :show, id: @skydatum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @skydatum
    assert_response :success
  end

  test "should update skydatum" do
    put :update, id: @skydatum, skydatum: { classification: @skydatum.classification, description: @skydatum.description, genre: @skydatum.genre, name: @skydatum.name, programmeref: @skydatum.programmeref, subgenre: @skydatum.subgenre, synopsis: @skydatum.synopsis, tags: @skydatum.tags }
    assert_redirected_to skydatum_path(assigns(:skydatum))
  end

  test "should destroy skydatum" do
    assert_difference('Skydatum.count', -1) do
      delete :destroy, id: @skydatum
    end

    assert_redirected_to skydata_path
  end
end
