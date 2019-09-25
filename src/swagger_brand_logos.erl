-module(swagger_brand_logos).

-export([encode/1]).

-export_type([swagger_brand_logos/0]).

-type swagger_brand_logos() ::
    #{ 'email' => binary(),
       'primary' => binary(),
       'secondary' => binary()
     }.

encode(#{ 'email' := Email,
          'primary' := Primary,
          'secondary' := Secondary
        }) ->
    #{ 'email' => Email,
       'primary' => Primary,
       'secondary' => Secondary
     }.
