require 'flexmock/test_unit'
require 'test/unit'
require '~/code/questioner'
require 'test/unit/ui/console/testrunner'

class QuestionerTest < Test::Unit::TestCase

  def setup
    @input = flexmock("input")
    @output = flexmock("output")
    @questioner = Questioner.new(@input, @output)
    @question = "Are you happy?"
  end

  def must_return_true_when_yes
    %w[y Y YeS YES yes].each do |yes|
      expect_output @question
      provide_input(yes)
      assert @questioner.ask(@question), "Expected #{yes} to be true"
    end
  end

  def must_return_false_when_no
    %w[n N no nO].each do |no|
      expect_output @question
      provide_input(no)
      assert !@questioner.ask(@question)
    end
  end

  def must_continue_to_ask_for_input_until_given_yes_or_no
    [["y",true],["n",false]].each do |r, state|  
      %w[Note Yesterday axyesq].each do |mu|
        expect_output @question
        provide_input(mu)
        expect_output("I don't understand")
      end
      expect_output @question
      provide_input(r)
      
      assert_equal state, @questioner.ask(@question)
    end
  end
end

def provide_input(string)
  @input.should_receive(:gets => string).once
end

def expect_output(string)
  @output.should_receive(:puts).with(string).once
end
