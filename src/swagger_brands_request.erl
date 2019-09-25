-module(swagger_brands_request).

-export([encode/1]).

-export_type([swagger_brands_request/0]).

-type swagger_brands_request() ::
    #{ 'brands' => list()
     }.

encode(#{ 'brands' := Brands
        }) ->
    #{ 'brands' => Brands
     }.
