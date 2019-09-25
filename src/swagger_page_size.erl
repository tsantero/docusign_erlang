-module(swagger_page_size).

-export([encode/1]).

-export_type([swagger_page_size/0]).

-type swagger_page_size() ::
    #{ 'pageHeight' => binary(),
       'pageWidth' => binary()
     }.

encode(#{ 'pageHeight' := PageHeight,
          'pageWidth' := PageWidth
        }) ->
    #{ 'pageHeight' => PageHeight,
       'pageWidth' => PageWidth
     }.
