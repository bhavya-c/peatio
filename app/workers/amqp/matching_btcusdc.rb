module Workers
  module AMQP
   class MatchingBtcusdc < Matching

     def process(payload)
       # Extract the currency from the payload
       	currency = payload[:market].split('-').last.downcase
	  		publish_to_queue(payload, 'matching_currency', 'peatio.matching.btcusdc')
     end
   end
	end
end