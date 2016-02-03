require 'test/unit'
require '~/code/test_questioner'

my_tests = Test::Unit::TestSuite.new("My Test Suite")
my_tests << QuestionerTest.new('must_return_true_when_yes')
my_tests << QuestionerTest.new('must_return_false_when_no')
my_tests << QuestionerTest.new('must_return_nil_when_mu_is_not_variant_of_yes_or_no')

Test::Unit::UI::Console::TestRunner.run(my_tests)


