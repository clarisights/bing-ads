module Bing
  module Ads
    module API
      module Errors
        # Bing::Ads::API::Errors::AuthenticationParamsMissing
        class AuthenticationParamsMissing < RuntimeError; end;

        # Bing::Ads::API::Errors::AuthenticationTokenExpired
        class AuthenticationTokenExpired < RuntimeError; end;

        # Bing::Ads::API::Errors::UnhandledSOAPFault
        class UnhandledSOAPFault < RuntimeError; end;

        # Bing::Ads::API::Errors::DownloadError
        class DownloadError < RuntimeError; end;

        # Bing::Ads::API::Errors::LimitError
        class LimitError < RuntimeError
          def initialize(operation, limit, type)
            super("can not #{operation} more than #{limit} #{type.to_s.humanize.downcase.pluralize} in a single call")
          end
        end

        # Bing::Ads::API::Errors::RateLimitError
        class RateLimitError < RuntimeError
          def initialize(message = "Rate limit exceeded. Please try again later.")
            super(message)
          end
        end

        # Bing::Ads::API::Errors::RateLimitError
        class BulkApiRateLimitError < RuntimeError
          def initialize(message = "Bulk API Rate limit exceeded. Please try again later.")
            super(message)
          end
        end
      end
    end
  end
end
