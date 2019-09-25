-module(swagger_account_brands).

-export([encode/1]).

-export_type([swagger_account_brands/0]).

-type swagger_account_brands() ::
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
