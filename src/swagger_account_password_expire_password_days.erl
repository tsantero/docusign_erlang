-module(swagger_account_password_expire_password_days).

-export([encode/1]).

-export_type([swagger_account_password_expire_password_days/0]).

-type swagger_account_password_expire_password_days() ::
    #{ 'maximumDays' => binary(),
       'minimumDays' => binary()
     }.

encode(#{ 'maximumDays' := MaximumDays,
          'minimumDays' := MinimumDays
        }) ->
    #{ 'maximumDays' => MaximumDays,
       'minimumDays' => MinimumDays
     }.
