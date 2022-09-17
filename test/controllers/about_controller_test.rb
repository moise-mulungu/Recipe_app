# frozen_string_literal: true

require 'test_helper'
# Service to download ftp files from the server
class AboutControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get about_index_url
    assert_response :success
  end
end
