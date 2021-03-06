$:.unshift('../amqp/lib') 
debugger
require 'mq'
 
# AMQP participant and listener pair for ruote.
#
# == Documentation
#
# See #RuoteAMQP::Listener and #RuoteAMQP::Participant for detailed
# documentation on using each of them.
#
# == AMQP Notes
#
# RuoteAMQP uses durable queues and persistent messages by default, to ensure
# no messages get lost along the way and that running expressions doesn't have
# to be restarted in order for messages to be resent.
#
module RuoteAMQP
 
  autoload 'Participant', 'ruote-amqp/participant'
  autoload 'Listener',    'ruote-amqp/listener'
 
  class << self
 
    attr_writer :use_persistent_messages
 
    # Whether or not to use persistent messages (true by default)
    def use_persistent_messages?
      @use_persistent_messages = true if @use_persistent_messages.nil?
      @use_persistent_messages
    end
  end
end
