-module(swagger_connect_salesforce_field).

-export([encode/1]).

-export_type([swagger_connect_salesforce_field/0]).

-type swagger_connect_salesforce_field() ::
    #{ 'dsAttribute' => binary(),
       'dsLink' => binary(),
       'dsNode' => binary(),
       'id' => binary(),
       'sfField' => binary(),
       'sfFieldName' => binary(),
       'sfFolder' => binary(),
       'sfLockedValue' => binary()
     }.

encode(#{ 'dsAttribute' := DsAttribute,
          'dsLink' := DsLink,
          'dsNode' := DsNode,
          'id' := Id,
          'sfField' := SfField,
          'sfFieldName' := SfFieldName,
          'sfFolder' := SfFolder,
          'sfLockedValue' := SfLockedValue
        }) ->
    #{ 'dsAttribute' => DsAttribute,
       'dsLink' => DsLink,
       'dsNode' => DsNode,
       'id' => Id,
       'sfField' => SfField,
       'sfFieldName' => SfFieldName,
       'sfFolder' => SfFolder,
       'sfLockedValue' => SfLockedValue
     }.
