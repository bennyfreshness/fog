module Fog
  module Compute
    class Brightbox
      class Real

        def destroy_api_client(identifier, options = {})
          return nil if identifier.nil? || identifier == ""
          request(
            :expects  => [200],
            :method   => 'DELETE',
            :path     => "/1.0/api_clients/#{identifier}",
            :headers  => {"Content-Type" => "application/json"},
            :body     => MultiJson.encode(options)
          )
        end

      end
    end
  end
end