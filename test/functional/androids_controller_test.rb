require 'test_helper'

class AndroidsControllerTest < ActionController::TestCase
  setup do
    @android = androids(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:androids)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create android" do
    assert_difference('Android.count') do
      post :create, android: { carrier: @android.carrier, keyboard: @android.keyboard, maker: @android.maker, modelname: @android.modelname, os_ver_current: @android.os_ver_current, os_ver_start: @android.os_ver_start, petname: @android.petname, release_date: @android.release_date, screen_dpi: @android.screen_dpi, screen_inch: @android.screen_inch, screen_type: @android.screen_type, screen_x: @android.screen_x, screen_y: @android.screen_y }
    end

    assert_redirected_to android_path(assigns(:android))
  end

  test "should show android" do
    get :show, id: @android
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @android
    assert_response :success
  end

  test "should update android" do
    put :update, id: @android, android: { carrier: @android.carrier, keyboard: @android.keyboard, maker: @android.maker, modelname: @android.modelname, os_ver_current: @android.os_ver_current, os_ver_start: @android.os_ver_start, petname: @android.petname, release_date: @android.release_date, screen_dpi: @android.screen_dpi, screen_inch: @android.screen_inch, screen_type: @android.screen_type, screen_x: @android.screen_x, screen_y: @android.screen_y }
    assert_redirected_to android_path(assigns(:android))
  end

  test "should destroy android" do
    assert_difference('Android.count', -1) do
      delete :destroy, id: @android
    end

    assert_redirected_to androids_path
  end
end
