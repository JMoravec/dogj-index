require 'test_helper'

class JapaneseIndexTest < ActiveSupport::TestCase

  def setup
    @index = JapaneseIndex.new(romaji: "tesuto", book: "B", page: "1")
  end

  test "should be valid" do
    assert @index.valid?
  end

  test "romaji should be pressent" do
    @index.romaji = "   "
    assert_not @index.valid?
  end

  test "book should be present" do
    @index.book = "   "
    assert_not @index.valid?
  end

  test "page should be present" do
    @index.page = "    "
    assert_not @index.valid?
  end

  test "book should be one character" do
    @index.book = "AA"
    assert_not @index.valid?
  end

  test "page is an integer" do
    @index.page = "a"
    assert_not @index.valid?
    @index.page = 1.2
    assert_not @index.valid?
  end

  test "page is greater than zero" do
    @index.page = -10
    assert_not @index.valid?
    @index.page = 0
    assert_not @index.valid?
  end

  test "page should be 3 or less characters" do
    @index.page = "12"
    assert @index.valid?
    @index.page = "123"
    assert @index.valid?
    @index.page = "1234"
    assert @index.valid?
    @index.page = "12345"
    assert_not @index.valid?
  end
end
