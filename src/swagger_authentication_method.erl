-module(swagger_authentication_method).

-export([encode/1]).

-export_type([swagger_authentication_method/0]).

-type swagger_authentication_method() ::
    #{ 'authenticationType' => binary(),
       'lastProvider' => binary(),
       'lastTimestamp' => binary(),
       'totalCount' => binary()
     }.

encode(#{ 'authenticationType' := AuthenticationType,
          'lastProvider' := LastProvider,
          'lastTimestamp' := LastTimestamp,
          'totalCount' := TotalCount
        }) ->
    #{ 'authenticationType' => AuthenticationType,
       'lastProvider' => LastProvider,
       'lastTimestamp' => LastTimestamp,
       'totalCount' => TotalCount
     }.
