amazon = "http://webservices.amazon.com/onca/xml?
Service=AWSECommerceService&AWSAccessKeyId=AMAZON_API_AWS_ACCESS_KEY_ID&Operation=ItemSearch&Keywords=Chemex&SearchIndex=Appliances&&Timestamp=[YYYY-MM-DDThh:mm:ssZ]&Signature=[Request Signature]"

keywords = "Chemex"
part_of_store = "Appliances"

def amazon_look_up_item(keywords, part_of_store)

accesskey = "AWSAccessKeyId=" + AMAZON_API_AWS_ACCESS_KEY_ID
operation = "Operation=" + "ItemSearch"
keywords = "Keywords=" + keywords
searchindex = "SearchIndex=" + part_of_store
timestamp = "Timestamp=" + Time.now.utc.iso8601.gsub(":", "%3A")

first_part_url = "http://webservices.amazon.com/onca/xml?"

main_login_url = "http://webservices.amazon.com/onca/xml?Service=AWSECommerceService"

request_part1 = main_login + "&" + accesskey + "&" + operation + "&" + keywords + "&" + searchindex + "&" + timestamp

byte_value = {}
byte_value = {
          "accesskey" => [accesskey, accesskey.bytesize],
          "operation"  => [operation, operation.bytesize],
          "keywords"  => [keywords, keywords.bytesize],
          "searchindex"  => [searchindex, searchindex.bytesize],
          "timestamp"  => [timestamp, timestamp.bytesize]
        }

new_array = byte_value.sort_by { |k, v| v[1] }

new_array.map! do |frog| frog[1][0] end

my_crazy_string = new_array.join("&")

#building HMAC crazy secret signature
secret_id = AMAZON_SECRET_ACCESS_KEY

next_step = "GET\nwebservices.amazon.com\n/onca/xml\n#{my_crazy_string}"









end


AWSAccessKeyId = AKIAIOSFODNN7EXAMPLE
ItemId = 0679722769
Operation=ItemLookup
ResponseGroup=ItemAttributes%2COffers%2CImages%2CReviews
Service=AWSECommerceService
Timestamp=2009-01-01T12%3A00%3A00Z
Version=2009-01-06

Service=AWSECommerceService
AWSAccessKeyId=AMAZON_API_AWS_ACCESS_KEY_ID
Operation=ItemSearch
Keywords=Chemex
SearchIndex=Appliances
Timestamp=2014-04-01T01%3A30%3A59Z




end



AWSAccessKeyId=AKIAIOSFODNN7EXAMPLE&ItemId=0679722769&Operation=ItemLookup&ResponseGroup=ItemAttributes%2COffers%2CImages%2CReviews&Service=AWSECommerceService&Timestamp=2009-01-01T12%3A00%3A00Z&Version=2009-01-06


2009-01-01T12:00:00Z

2014-04-01T13:43:18Z

http://webservices.amazon.com/onca/xml?
Service=AWSECommerceService&AWSAccessKeyId=AMAZON_API_AWS_ACCESS_KEY_ID&Operation=ItemSearch&Keywords=Chemex&SearchIndex=Appliances&&Timestamp=[2014-04-01T01:30:59Z]&Signature=[Request Signature]

2012-05-16T02:17:32Z&Signature=ye5c2jo99cr3%2BPXVkMyXX8vMhTC21UO4XfHpA21%2BUCs%3D

Timestamp=2013-01-30T18%3A09%3A45Z

&Signature=[Request Signature]

  # @recipe.steps.update(amazon_purchase_link: amazon)

  redirect_to(amazon)
