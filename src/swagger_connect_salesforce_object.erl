-module(swagger_connect_salesforce_object).

-export([encode/1]).

-export_type([swagger_connect_salesforce_object/0]).

-type swagger_connect_salesforce_object() ::
    #{ 'active' => binary(),
       'description' => binary(),
       'id' => binary(),
       'insert' => binary(),
       'onCompleteOnly' => binary(),
       'selectFields' => list(),
       'sfObject' => binary(),
       'sfObjectName' => binary(),
       'updateFields' => list()
     }.

encode(#{ 'active' := Active,
          'description' := Description,
          'id' := Id,
          'insert' := Insert,
          'onCompleteOnly' := OnCompleteOnly,
          'selectFields' := SelectFields,
          'sfObject' := SfObject,
          'sfObjectName' := SfObjectName,
          'updateFields' := UpdateFields
        }) ->
    #{ 'active' => Active,
       'description' => Description,
       'id' => Id,
       'insert' => Insert,
       'onCompleteOnly' => OnCompleteOnly,
       'selectFields' => SelectFields,
       'sfObject' => SfObject,
       'sfObjectName' => SfObjectName,
       'updateFields' => UpdateFields
     }.
