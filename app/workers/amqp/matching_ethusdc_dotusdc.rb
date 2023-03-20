module Workers
  module AMQP
    class EthUsdcDotUsdcMatching < Base
      
      def process(payload)
        currency = payload[:market].split('-').last.downcase
        publish_to_queue(payload, 'matching_currency', 'peatio.matching.ethusdc_dotusdc')
      end
    end
  end
end