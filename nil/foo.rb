class Person
    def subscribe
      Subscriber.new(Subscription.new)
    end
end

class Subscriber
  attr_reader :subscription

  def initialize(subscription)
    @subscription = subscription
  end
end

class Subscription
end

person = Person.new

if false
  subscriber = person.subscribe
end
puts subscriber.subscription
