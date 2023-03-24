require 'test_helper'

class MailContentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mail_content = mail_contents(:one)
  end

  test "should get index" do
    get mail_contents_url
    assert_response :success
  end

  test "should get new" do
    get new_mail_content_url
    assert_response :success
  end

  test "should create mail_content" do
    assert_difference('MailContent.count') do
      post mail_contents_url, params: { mail_content: { content: @mail_content.content, subject: @mail_content.subject } }
    end

    assert_redirected_to mail_content_url(MailContent.last)
  end

  test "should show mail_content" do
    get mail_content_url(@mail_content)
    assert_response :success
  end

  test "should get edit" do
    get edit_mail_content_url(@mail_content)
    assert_response :success
  end

  test "should update mail_content" do
    patch mail_content_url(@mail_content), params: { mail_content: { content: @mail_content.content, subject: @mail_content.subject } }
    assert_redirected_to mail_content_url(@mail_content)
  end

  test "should destroy mail_content" do
    assert_difference('MailContent.count', -1) do
      delete mail_content_url(@mail_content)
    end

    assert_redirected_to mail_contents_url
  end
end
