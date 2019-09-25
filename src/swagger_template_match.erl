-module(swagger_template_match).

-export([encode/1]).

-export_type([swagger_template_match/0]).

-type swagger_template_match() ::
    #{ 'documentEndPage' => binary(),
       'documentStartPage' => binary(),
       'matchPercentage' => binary()
     }.

encode(#{ 'documentEndPage' := DocumentEndPage,
          'documentStartPage' := DocumentStartPage,
          'matchPercentage' := MatchPercentage
        }) ->
    #{ 'documentEndPage' => DocumentEndPage,
       'documentStartPage' => DocumentStartPage,
       'matchPercentage' => MatchPercentage
     }.
