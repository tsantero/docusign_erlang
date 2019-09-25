-module(swagger_brand_request).

-export([encode/1]).

-export_type([swagger_brand_request/0]).

-type swagger_brand_request() ::
    #{ 'brandId' => binary()
     }.

encode(#{ 'brandId' := BrandId
        }) ->
    #{ 'brandId' => BrandId
     }.
