require "application_system_test_case"

class ArchivesTest < ApplicationSystemTestCase
  setup do
    @entry = entries(:breakfast)
  end

  test "visiting the archives index" do
    visit archives_index_url
    assert_selector "h1", text: "Entries"
  end
end