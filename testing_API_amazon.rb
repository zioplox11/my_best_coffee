require 'openssl'
require 'base64'
require 'time'
require 'cgi'
require 'httparty'

# amazon requires the following information in an API product request

# "http://webservices.amazon.com/onca/xml?
# Service=AWSECommerceService&
# AWSAccessKeyId=[AWS Access Key ID]&
# AssociateTag=[Associate Tag]&
# Operation=ItemSearch&
# Condition=All&
# Availability=Available&
# SearchIndex=Apparel&
# Keywords=Shirt&
# Timestamp=[YYYY-MM-DDThh:mm:ssZ]&
# Signature=[Request Signature]"


associate_id = ENV['AMAZON_ASSOCIATE_ID']
access_id = ENV['AMAZON_API_AWS_ACCESS_KEY_ID']
secret_id = ENV['AMAZON_SECRET_ACCESS_KEY']
keywords = "Chemex"
part_of_store = "Appliances"
search_operation = "ItemSearch"

# Amazon requires UTC time code in iso8601 standard form that is formatted properly for sending via HTTP request (no commas or colons)
# from WIKI: English  CUT Coordinated Universal Time
# French  TUC Temps Universel Coordonné
# compromise  UTC unofficial English: "Universal Time Coordinated"; unofficial French: "Universel Temps Coordonné"
# ISO8601: issued by the International Organization for Standardization (ISO) and was first published in 1988. The purpose of this standard is to provide an unambiguous and well-defined method of representing dates and times, so as to avoid misinterpretation of numeric representations of dates and times, particularly when data is transferred between countries with different conventions for writing numeric dates and times.

time = Time.now.utc.iso8601
time_formatted = time.gsub(":", "%3A")

#create the main body of the API request
main_login_url = "http://webservices.amazon.com/onca/xml?Service=AWSECommerceService"

accesskey = "AWSAccessKeyId=" + access_id
associate = "AssociateTag=" + associate_id
operation = "Operation=" + search_operation
keywords = "Keywords=" + keywords
searchindex = "SearchIndex=" + part_of_store
timestamp = "Timestamp=" + time_formatted

request_part1 = [main_login_url, accesskey, associate, operation, keywords, searchindex, timestamp].join("&").gsub(",","%2")



#next, amazon requires a multi-step security encoded signature at the end of every API request

# sort items in API request by byte-size (as specified by amazon).
# Question for Phil -- maybe we should try largest to smallest?
byte_value = {
          "accesskey" => [accesskey, accesskey.bytesize],
          "associate" => [associate, associate.bytesize],
          "operation"  => [operation, operation.bytesize],
          "keywords"  => [keywords, keywords.bytesize],
          "searchindex"  => [searchindex, searchindex.bytesize],
          "timestamp"  => [timestamp, timestamp.bytesize]
        }

new_array = byte_value.sort_by { |k, v| v[1] }
new_array.map! { |byte_ordered| byte_ordered[1][0] }

byte_ordered_string = new_array.join("&")



#next build HMAC crazy secret signature to append to API request by combining the required GET request with the byte-ordered string

# example from amazon's site
# secret_key = '1234567890'
# data = "GET
# webservices.amazon.com
# /onca/xml
# AWSAccessKeyId=AKIAIOSFODNN7EXAMPLE&ItemId=0679722769&Operation=ItemLookup&ResponseGroup=ItemAttributes%2COffers%2CImages%2CReviews&Service=AWSECommerceService&Timestamp=2009-01-01T12%3A00%3A00Z&Version=2009-01-06"

data = "GET\nwebservices.amazon.com\n/onca/xml\n#{byte_ordered_string}"

# encode using SHA256. SHA-2 is a set of cryptographic hash functions designed by the U.S. National Security Agency (NSA). SHA-256 is a novel hash functions computed with 32-bit words.
sha256 = OpenSSL::Digest::SHA256.new
sig = OpenSSL::HMAC.digest(sha256, secret_id, data)
signature = Base64.encode64(sig).strip

signature = CGI.escape(signature)


# combine encoded signature to initial API request

final_step = "#{request_part1}&Signature=#{signature}"




# response = HTTParty.get(final_step)

url = "http://webservices.amazon.com/onca/xml"

"http://webservices.amazon.com/onca/xml?#{query}"

HTTParty.get(url, :query => {
                    :Service         =>"AWSECommerceService",
                    :AWSAccessKeyId  =>"AKIAJBYQLHPMVQIZ3DQQ",
                    :AssociateTag    =>ENV['AMAZON_ASSOCIATE_ID'],
                    :Operation       =>"ItemSearch",
                    :Keywords        =>"Chemex",
                    :SearchIndex     =>"Appliances",
                    :Timestamp       =>time,
                    :Signature       =>signature
                  })


query = HTTParty::HashConversions.to_params({
                    :Service         =>"AWSECommerceService",
                    :AWSAccessKeyId  =>"AKIAJBYQLHPMVQIZ3DQQ",
                    :AssociateTag    =>ENV['AMAZON_ASSOCIATE_ID'],
                    :Operation       =>"ItemSearch",
                    :Keywords        =>"Chemex",
                    :SearchIndex     =>"Appliances",
                    :Timestamp       =>time,
                    :Signature       =>signature
                  })

HTTParty.get("http://webservices.amazon.com/onca/xml?#{query}")
