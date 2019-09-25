-module(swagger_app_store_product).

-export([encode/1]).

-export_type([swagger_app_store_product/0]).

-type swagger_app_store_product() ::
    #{ 'marketPlace' => binary(),
       'productId' => binary()
     }.

encode(#{ 'marketPlace' := MarketPlace,
          'productId' := ProductId
        }) ->
    #{ 'marketPlace' => MarketPlace,
       'productId' => ProductId
     }.
