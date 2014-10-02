require 'test_helper'

class AuthSessionsControllerTest < ActionController::TestCase
  setup do
    @auth_session = auth_sessions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:auth_sessions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create auth_session" do
    assert_difference('AuthSession.count') do
      post :create, auth_session: { active: @auth_session.active, last_ip: @auth_session.last_ip, token: @auth_session.token, user_agent: @auth_session.user_agent, user_id: @auth_session.user_id }
    end

    assert_redirected_to auth_session_path(assigns(:auth_session))
  end

  test "should show auth_session" do
    get :show, id: @auth_session
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @auth_session
    assert_response :success
  end

  test "should update auth_session" do
    put :update, id: @auth_session, auth_session: { active: @auth_session.active, last_ip: @auth_session.last_ip, token: @auth_session.token, user_agent: @auth_session.user_agent, user_id: @auth_session.user_id }
    assert_redirected_to auth_session_path(assigns(:auth_session))
  end

  test "should destroy auth_session" do
    assert_difference('AuthSession.count', -1) do
      delete :destroy, id: @auth_session
    end

    assert_redirected_to auth_sessions_path
  end
end
