-module(swagger_account_password_minimum_password_age_days).

-export([encode/1]).

-export_type([swagger_account_password_minimum_password_age_days/0]).

-type swagger_account_password_minimum_password_age_days() ::
    #{ 'maximumAge' => binary(),
       'minimumAge' => binary()
     }.

encode(#{ 'maximumAge' := MaximumAge,
          'minimumAge' := MinimumAge
        }) ->
    #{ 'maximumAge' => MaximumAge,
       'minimumAge' => MinimumAge
     }.
