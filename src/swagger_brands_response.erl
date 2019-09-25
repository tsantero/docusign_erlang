-module(swagger_brands_response).

-export([encode/1]).

-export_type([swagger_brands_response/0]).

-type swagger_brands_response() ::
    #{ 'brands' => list(),
       'recipientBrandIdDefault' => binary(),
       'senderBrandIdDefault' => binary()
     }.

encode(#{ 'brands' := Brands,
          'recipientBrandIdDefault' := RecipientBrandIdDefault,
          'senderBrandIdDefault' := SenderBrandIdDefault
        }) ->
    #{ 'brands' => Brands,
       'recipientBrandIdDefault' => RecipientBrandIdDefault,
       'senderBrandIdDefault' => SenderBrandIdDefault
     }.
