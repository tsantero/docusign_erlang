-module(swagger_user_social_id_result).

-export([encode/1]).

-export_type([swagger_user_social_id_result/0]).

-type swagger_user_social_id_result() ::
    #{ 'socialAccountInformation' => list(),
       'userId' => binary()
     }.

encode(#{ 'socialAccountInformation' := SocialAccountInformation,
          'userId' := UserId
        }) ->
    #{ 'socialAccountInformation' => SocialAccountInformation,
       'userId' => UserId
     }.
