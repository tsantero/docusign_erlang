-module(swagger_brand_resource_urls).

-export([encode/1]).

-export_type([swagger_brand_resource_urls/0]).

-type swagger_brand_resource_urls() ::
    #{ 'email' => binary(),
       'sending' => binary(),
       'signing' => binary(),
       'signingCaptive' => binary()
     }.

encode(#{ 'email' := Email,
          'sending' := Sending,
          'signing' := Signing,
          'signingCaptive' := SigningCaptive
        }) ->
    #{ 'email' => Email,
       'sending' => Sending,
       'signing' => Signing,
       'signingCaptive' => SigningCaptive
     }.
