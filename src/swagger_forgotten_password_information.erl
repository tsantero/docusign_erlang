-module(swagger_forgotten_password_information).

-export([encode/1]).

-export_type([swagger_forgotten_password_information/0]).

-type swagger_forgotten_password_information() ::
    #{ 'forgottenPasswordAnswer1' => binary(),
       'forgottenPasswordAnswer2' => binary(),
       'forgottenPasswordAnswer3' => binary(),
       'forgottenPasswordAnswer4' => binary(),
       'forgottenPasswordQuestion1' => binary(),
       'forgottenPasswordQuestion2' => binary(),
       'forgottenPasswordQuestion3' => binary(),
       'forgottenPasswordQuestion4' => binary()
     }.

encode(#{ 'forgottenPasswordAnswer1' := ForgottenPasswordAnswer1,
          'forgottenPasswordAnswer2' := ForgottenPasswordAnswer2,
          'forgottenPasswordAnswer3' := ForgottenPasswordAnswer3,
          'forgottenPasswordAnswer4' := ForgottenPasswordAnswer4,
          'forgottenPasswordQuestion1' := ForgottenPasswordQuestion1,
          'forgottenPasswordQuestion2' := ForgottenPasswordQuestion2,
          'forgottenPasswordQuestion3' := ForgottenPasswordQuestion3,
          'forgottenPasswordQuestion4' := ForgottenPasswordQuestion4
        }) ->
    #{ 'forgottenPasswordAnswer1' => ForgottenPasswordAnswer1,
       'forgottenPasswordAnswer2' => ForgottenPasswordAnswer2,
       'forgottenPasswordAnswer3' => ForgottenPasswordAnswer3,
       'forgottenPasswordAnswer4' => ForgottenPasswordAnswer4,
       'forgottenPasswordQuestion1' => ForgottenPasswordQuestion1,
       'forgottenPasswordQuestion2' => ForgottenPasswordQuestion2,
       'forgottenPasswordQuestion3' => ForgottenPasswordQuestion3,
       'forgottenPasswordQuestion4' => ForgottenPasswordQuestion4
     }.
