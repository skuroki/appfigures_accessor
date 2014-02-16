require 'httparty'

module AppfiguresAccessor
  class Accessor
    include HTTParty
    base_uri 'https://api.appfigures.com/v2/'

    def initialize(username, password, client_key)
      @username = username
      @password = password
      @client_key = client_key
    end

    [
      [:my_products, '/products/mine'],
      [:sales, '/sales'],
      [:sales_by_dates_and_products, '/sales/dates+products'],
    ].each do |name, path|
      define_method name do |query_params = {}|
        self.class.get(path, {
          basic_auth: {username: @username, password: @password},
          query: {client_key: @client_key}.merge(query_params)
        }).parsed_response
      end
    end
  end
end
