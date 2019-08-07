require "AfricasTalking"

username = "USERNAME_GOES_HERE"
apiKey = "APIKEY_GOES_HERE"
@AT = AfricasTalking::Initialize.new(username, apiKey)

options = {
            'productName' => 'data_test',
            'recipients' => [
                {
                    "phoneNumber"=> '+254722222222',
                    "quantity"=> 100,
                    "unit"=> 'MB',
                    "validity"=> "Weekly",
                    "metadata" => {
                        "description" => "promo bundles",
                        "name" => "tester"
                    }
                }
            ]
}

payments = @AT.payments
request = payments.mobileData options
p request
