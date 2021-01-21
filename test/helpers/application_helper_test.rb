require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    assert_equal full_title, "Festivalblog"
    assert_equal full_title("Test"), "Test | Festivalblog"
  end
end
