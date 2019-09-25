-module(swagger_user_signatures_information).

-export([encode/1]).

-export_type([swagger_user_signatures_information/0]).

-type swagger_user_signatures_information() ::
    #{ 'userSignatures' => list()
     }.

encode(#{ 'userSignatures' := UserSignatures
        }) ->
    #{ 'userSignatures' => UserSignatures
     }.
