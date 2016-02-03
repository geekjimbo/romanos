require '~/code/test_questioner'

my_tests = Test::Unit::TestSuite.new("My Test Suite")
my_tests << QuestionerTest.new('must_return_true_when_yes')
my_tests << QuestionerTest.new('must_return_false_when_no')
my_tests << QuestionerTest.new('must_continue_to_ask_for_input_until_given_yes_or_no')

Test::Unit::UI::Console::TestRunner.run(my_tests)


