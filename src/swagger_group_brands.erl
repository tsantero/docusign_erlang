-module(swagger_group_brands).

-export([encode/1]).

-export_type([swagger_group_brands/0]).

-type swagger_group_brands() ::
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
