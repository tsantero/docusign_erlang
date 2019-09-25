-module(swagger_brand_link).

-export([encode/1]).

-export_type([swagger_brand_link/0]).

-type swagger_brand_link() ::
    #{ 'linkText' => binary(),
       'linkType' => binary(),
       'showLink' => binary(),
       'urlOrMailTo' => binary()
     }.

encode(#{ 'linkText' := LinkText,
          'linkType' := LinkType,
          'showLink' := ShowLink,
          'urlOrMailTo' := UrlOrMailTo
        }) ->
    #{ 'linkText' => LinkText,
       'linkType' => LinkType,
       'showLink' => ShowLink,
       'urlOrMailTo' => UrlOrMailTo
     }.
