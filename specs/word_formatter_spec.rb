require('minitest/autorun')
require('minitest/rg')
require_relative('../models/word_formatter')

class TestWordFormatter < MiniTest::Test

  def setup
    @test_data = WordFormatter.new("code clan")
  end

  def test_upcase
    assert_equal("CODE CLAN", @test_data.upcase)
  end

  # def test_camel_case
  #   assert_equal("CodeClan", @test_data.camel_case)
  # end

end