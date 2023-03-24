require "application_system_test_case"

class MailContentsTest < ApplicationSystemTestCase
  setup do
    @mail_content = mail_contents(:one)
  end

  test "visiting the index" do
    visit mail_contents_url
    assert_selector "h1", text: "Mail Contents"
  end

  test "creating a Mail content" do
    visit mail_contents_url
    click_on "New Mail Content"

    fill_in "Content", with: @mail_content.content
    fill_in "Subject", with: @mail_content.subject
    click_on "Create Mail content"

    assert_text "Mail content was successfully created"
    click_on "Back"
  end

  test "updating a Mail content" do
    visit mail_contents_url
    click_on "Edit", match: :first

    fill_in "Content", with: @mail_content.content
    fill_in "Subject", with: @mail_content.subject
    click_on "Update Mail content"

    assert_text "Mail content was successfully updated"
    click_on "Back"
  end

  test "destroying a Mail content" do
    visit mail_contents_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mail content was successfully destroyed"
  end
end
