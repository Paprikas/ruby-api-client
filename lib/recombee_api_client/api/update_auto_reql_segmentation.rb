#
# This file is auto-generated, do not edit
#

module RecombeeApiClient
  require_relative 'request'
  require_relative '../errors'
  
  ##
  #Update an existing Segmentation.
  #
  class UpdateAutoReqlSegmentation < ApiRequest
    attr_reader :segmentation_id, :expression, :title, :description
    attr_accessor :timeout
    attr_accessor :ensure_https
  
  ##
  # * *Required arguments*
  #   - +segmentation_id+ -> ID of the updated Segmentation
  #
  # * *Optional arguments (given as hash optional)*
  #   - +expression+ -> ReQL expression that returns for each item a set with IDs of segments to which the item belongs
  #
  #   - +title+ -> Human-readable name that is shown in the Recombee Admin UI.
  #
  #   - +description+ -> Description that is shown in the Recombee Admin UI.
  #
  #
    def initialize(segmentation_id, optional = {})
      @segmentation_id = segmentation_id
      optional = normalize_optional(optional)
      @expression = optional['expression']
      @title = optional['title']
      @description = optional['description']
      @optional = optional
      @timeout = 10000
      @ensure_https = false
      @optional.each do |par, _|
        fail UnknownOptionalParameter.new(par) unless ["expression","title","description"].include? par
      end
    end
  
    # HTTP method
    def method
      :post
    end
  
    # Values of body parameters as a Hash
    def body_parameters
      p = Hash.new
      p['expression'] = @optional['expression'] if @optional.include? 'expression'
      p['title'] = @optional['title'] if @optional.include? 'title'
      p['description'] = @optional['description'] if @optional.include? 'description'
      p
    end
  
    # Values of query parameters as a Hash.
    # name of parameter => value of the parameter
    def query_parameters
      params = {}
      params
    end
  
    # Relative path to the endpoint
    def path
      "/{databaseId}/segmentations/auto-reql/#{@segmentation_id}"
    end
  end
end
