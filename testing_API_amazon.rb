require 'openssl'
require 'base64'
require 'time'
require 'cgi'
require 'httparty'

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

keywords = "Chemex"
part_of_store = "Appliances"
time = Time.now.utc.iso8601
time_formatted = time.gsub(":", "%3A")

accesskey = "AWSAccessKeyId=" + ENV['AMAZON_API_AWS_ACCESS_KEY_ID']
associate = "AssociateTag=" + ENV['AMAZON_ASSOCIATE_ID']
operation = "Operation=" + "ItemSearch"
keywords = "Keywords=" + keywords
searchindex = "SearchIndex=" + part_of_store
timestamp = "Timestamp=" + time_formatted

main_login_url = "http://webservices.amazon.com/onca/xml?Service=AWSECommerceService"

# request_part1 = main_login_url + "&" + accesskey + "&" + operation + "&" + keywords + "&" + searchindex + "&" + timestamp
request_part1 = [main_login_url, accesskey, associate, operation, keywords, searchindex, timestamp].join("&").gsub(",","%2")

byte_value = {
          "accesskey" => [accesskey, accesskey.bytesize],
          "associate" => [associate, associate.bytesize],
          "operation"  => [operation, operation.bytesize],
          "keywords"  => [keywords, keywords.bytesize],
          "searchindex"  => [searchindex, searchindex.bytesize],
          "timestamp"  => [timestamp, timestamp.bytesize]
        }

new_array = byte_value.sort_by { |k, v| v[1] }

new_array.map! { |frog| frog[1][0] }

my_crazy_string = new_array.join("&")

#building HMAC crazy secret signature
secret_id = ENV['AMAZON_SECRET_ACCESS_KEY']

data = "GET\nwebservices.amazon.com\n/onca/xml\n#{my_crazy_string}"



sha256 = OpenSSL::Digest::SHA256.new
sig = OpenSSL::HMAC.digest(sha256, secret_id, data)
signature = Base64.encode64(sig).strip

signature = CGI.escape(signature)






secret_key = '1234567890'
data = "GET
webservices.amazon.com
/onca/xml
AWSAccessKeyId=AKIAIOSFODNN7EXAMPLE&ItemId=0679722769&Operation=ItemLookup&ResponseGroup=ItemAttributes%2COffers%2CImages%2CReviews&Service=AWSECommerceService&Timestamp=2009-01-01T12%3A00%3A00Z&Version=2009-01-06"




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
