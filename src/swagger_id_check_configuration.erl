-module(swagger_id_check_configuration).

-export([encode/1]).

-export_type([swagger_id_check_configuration/0]).

-type swagger_id_check_configuration() ::
    #{ 'authSteps' => list(),
       'isDefault' => binary(),
       'name' => binary()
     }.

encode(#{ 'authSteps' := AuthSteps,
          'isDefault' := IsDefault,
          'name' := Name
        }) ->
    #{ 'authSteps' => AuthSteps,
       'isDefault' => IsDefault,
       'name' => Name
     }.
