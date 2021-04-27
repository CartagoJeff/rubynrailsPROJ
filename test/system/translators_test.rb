require "application_system_test_case"

class TranslatorsTest < ApplicationSystemTestCase
  setup do
    @translator = translators(:one)
  end

  test "visiting the index" do
    visit translators_url
    assert_selector "h1", text: "Translators"
  end

  test "creating a Translator" do
    visit translators_url
    click_on "New Translator"

    fill_in "Discord", with: @translator.discord
    fill_in "Email", with: @translator.email
    fill_in "First name", with: @translator.first_name
    fill_in "Kofi", with: @translator.kofi
    fill_in "Last name", with: @translator.last_name
    fill_in "Twitter", with: @translator.twitter
    click_on "Create Translator"

    assert_text "Translator was successfully created"
    click_on "Back"
  end

  test "updating a Translator" do
    visit translators_url
    click_on "Edit", match: :first

    fill_in "Discord", with: @translator.discord
    fill_in "Email", with: @translator.email
    fill_in "First name", with: @translator.first_name
    fill_in "Kofi", with: @translator.kofi
    fill_in "Last name", with: @translator.last_name
    fill_in "Twitter", with: @translator.twitter
    click_on "Update Translator"

    assert_text "Translator was successfully updated"
    click_on "Back"
  end

  test "destroying a Translator" do
    visit translators_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Translator was successfully destroyed"
  end
end
