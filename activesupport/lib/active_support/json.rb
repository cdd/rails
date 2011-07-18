require 'active_support/json/decoding'

# CDD performance hack to try to get Rails working without ActiveSupport::JSON encoding
# require 'active_support/json/encoding'
require 'json/ext'

# if we re-enable the active_support json encoding, uncomment the following defaults

# Use ISO 8601 format for JSON serialized times and dates
# ActiveSupport.use_standard_json_time_format = true

# Don't escape HTML entities in JSON, leave that for the #json_escape helper
# if you're including raw json in an HTML page.
# ActiveSupport.escape_html_entities_in_json = false

module ActiveSupport
  module JSON
    class << self
      def encode(thingy)
        thingy.to_json
      end
    end
  end
end  
