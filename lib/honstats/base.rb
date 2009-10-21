module HonStats
  class Base

    API_URL = "xml.heroesofnewerth.com"
    API_FILE = "/xml_requester.php"

    # Constructs a API-friendly URL
    def self.construct_url(api_method, params)
      "#{API_FILE}?f=#{api_method}#{hash2get(params)}"
    end

    # Converts a hash to a GET string
    def self.hash2get(h)
      get_string = ""
      h.each_pair do |key, value|
        if value.is_a?(String)
          get_string += "&#{key.to_s}=#{CGI::escape(value.to_s)}"
        elsif value.is_a?(Array)
          value.each do |vals|
            get_string += "&#{key.to_s}=#{CGI::escape(vals.to_s)}"
          end
        end
      end
      get_string
    end

    def self.get_xml_data(url)
      xml = nil
      EM.run do
        client = EM::Protocols::HttpClient2.connect(:host => API_URL, :port => 80).get(url)
        client.callback {
          # until the XML's fixed this will have to do
          if client.content.split(/\S+/).size > 5
            xml = XML::Parser.string(client.content).parse
          end
          EM.stop
        }
        client.errback { self.fail }
      end
      xml
    end

  end
end