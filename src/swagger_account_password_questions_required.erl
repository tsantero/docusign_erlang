-module(swagger_account_password_questions_required).

-export([encode/1]).

-export_type([swagger_account_password_questions_required/0]).

-type swagger_account_password_questions_required() ::
    #{ 'maximumQuestions' => binary(),
       'minimumQuestions' => binary()
     }.

encode(#{ 'maximumQuestions' := MaximumQuestions,
          'minimumQuestions' := MinimumQuestions
        }) ->
    #{ 'maximumQuestions' => MaximumQuestions,
       'minimumQuestions' => MinimumQuestions
     }.
