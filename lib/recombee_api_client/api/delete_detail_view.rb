#
# This file is auto-generated, do not edit
#

module RecombeeApiClient
  require_relative 'request'
  require_relative '../errors'
  
  ##
  #Deletes an existing detail view uniquely specified by (`userId`, `itemId`, and `timestamp`) or all the detail views with the given `userId` and `itemId` if `timestamp` is omitted.
  #
  class DeleteDetailView < ApiRequest
    attr_reader :user_id, :item_id, :timestamp
    attr_accessor :timeout
    attr_accessor :ensure_https
  
  ##
  # * *Required arguments*
  #   - +user_id+ -> ID of the user who made the detail view.
  #   - +item_id+ -> ID of the item whose details were viewed.
  #
  # * *Optional arguments (given as hash optional)*
  #   - +timestamp+ -> Unix timestamp of the detail view. If the `timestamp` is omitted, then all the detail views with the given `userId` and `itemId` are deleted.
  #
    def initialize(user_id, item_id, optional = {})
      @user_id = user_id
      @item_id = item_id
      optional = normalize_optional(optional)
      @timestamp = optional['timestamp']
      @optional = optional
      @timeout = 1000
      @ensure_https = false
      @optional.each do |par, _|
        fail UnknownOptionalParameter.new(par) unless ["timestamp"].include? par
      end
    end
  
    # HTTP method
    def method
      :delete
    end
  
    # Values of body parameters as a Hash
    def body_parameters
      p = Hash.new
      p
    end
  
    # Values of query parameters as a Hash.
    # name of parameter => value of the parameter
    def query_parameters
      params = {}
      params['userId'] = @user_id
      params['itemId'] = @item_id
      params['timestamp'] = @optional['timestamp'] if @optional['timestamp']
      params
    end
  
    # Relative path to the endpoint
    def path
      "/{databaseId}/detailviews/"
    end
  end
end
