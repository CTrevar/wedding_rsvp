require 'test_helper'

class RegistriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @registry = registries(:one)
  end

  test "should get index" do
    get admin_registries_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_registry_url
    assert_response :success
  end

  test "should create registry" do
    assert_difference('Registry.count') do
      post admin_registries_url, params: { registry: { link: @registry.link, name: @registry.name } }
    end

    assert_redirected_to admin_registry_url(Registry.last)
  end

  test "should show registry" do
    get admin_registry_url(@registry)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_registry_url(@registry)
    assert_response :success
  end

  test "should update registry" do
    patch admin_registry_url(@registry), params: { registry: { link: @registry.link, name: @registry.name } }
    assert_redirected_to admin_registry_url(@registry)
  end

  test "should destroy registry" do
    assert_difference('Registry.count', -1) do
      delete admin_registry_url(@registry)
    end

    assert_redirected_to admin_registries_url
  end
end
