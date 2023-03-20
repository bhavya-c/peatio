module Workers
  module AMQP
    class MatchingRest < Base
      def process(payload)
        currency = payload[:market].split('-').last.downcase
        publish_to_queue(payload, 'matching_currency', 'peatio.matching.rest')
      end
    end
  end
end