#require 'minitest/autorun'
require 'test/unit'
require '~/code/questioner'
require 'test/unit/ui/console/testrunner'

class QuestionerTest < Test::Unit::TestCase
  
  def setup
    @questioner = Questioner.new
  end

  def must_return_true_when_yes
    %w[y Y YeS YES yes].each do |yes|
      assert @questioner.yes_or_no(yes), 
                       "#{yes.inspect} expected to parse as true"
    end
  end

  def must_return_false_when_no
    %w[n N no nO n0].each do |no|
      assert ! @questioner.yes_or_no(no),
                        "#{no.inspect} expected to parse as false"
    end
  end

  def must_return_nil_when_mu_is_not_variant_of_yes_or_no
    %w[Note Yesterday axyesq].each do |mu|
      assert_nil @questioner.yes_or_no(mu),
                        "#{mu.inspect} expected to parse as nil"
    end
  end
end
