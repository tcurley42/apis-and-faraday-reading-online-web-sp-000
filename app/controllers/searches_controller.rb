class SearchesController < ApplicationController
  def search
  end

  def foursquare
    Faraday.get 'https://api.foursquare.com/v2/venues/search' do |req|
      req.params['client_id'] = 'KGQCKEBKIJB0EXYH0ZSB2FTSRJUQNGOAAFGM3TQMS1DQURZX'
      req.params['client_secret'] = 'WGPLW4T0JYSY53PPB4AHTGSL42G53OHU1N35HBZ2AOE443R0'
      req.params['v'] = '20160201'
      req.params['near'] = params[:zipcode]
      req.params['query'] = 'coffee shop'
    end
    render 'search'
  end
end
