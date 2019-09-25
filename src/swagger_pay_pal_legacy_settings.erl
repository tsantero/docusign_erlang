-module(swagger_pay_pal_legacy_settings).

-export([encode/1]).

-export_type([swagger_pay_pal_legacy_settings/0]).

-type swagger_pay_pal_legacy_settings() ::
    #{ 'currency' => binary(),
       'partner' => binary(),
       'password' => binary(),
       'userName' => binary(),
       'vendor' => binary()
     }.

encode(#{ 'currency' := Currency,
          'partner' := Partner,
          'password' := Password,
          'userName' := UserName,
          'vendor' := Vendor
        }) ->
    #{ 'currency' => Currency,
       'partner' => Partner,
       'password' => Password,
       'userName' => UserName,
       'vendor' => Vendor
     }.
