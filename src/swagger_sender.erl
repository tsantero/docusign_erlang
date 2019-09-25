-module(swagger_sender).

-export([encode/1]).

-export_type([swagger_sender/0]).

-type swagger_sender() ::
    #{ 'accountIdGuid' => binary(),
       'companyName' => binary()
     }.

encode(#{ 'accountIdGuid' := AccountIdGuid,
          'companyName' := CompanyName
        }) ->
    #{ 'accountIdGuid' => AccountIdGuid,
       'companyName' => CompanyName
     }.
