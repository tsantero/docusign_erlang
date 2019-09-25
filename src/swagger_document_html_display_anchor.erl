-module(swagger_document_html_display_anchor).

-export([encode/1]).

-export_type([swagger_document_html_display_anchor/0]).

-type swagger_document_html_display_anchor() ::
    #{ 'caseSensitive' => boolean(),
       'displaySettings' => swagger_document_html_display_settings:swagger_document_html_display_settings(),
       'endAnchor' => binary(),
       'removeEndAnchor' => boolean(),
       'removeStartAnchor' => boolean(),
       'startAnchor' => binary()
     }.

encode(#{ 'caseSensitive' := CaseSensitive,
          'displaySettings' := DisplaySettings,
          'endAnchor' := EndAnchor,
          'removeEndAnchor' := RemoveEndAnchor,
          'removeStartAnchor' := RemoveStartAnchor,
          'startAnchor' := StartAnchor
        }) ->
    #{ 'caseSensitive' => CaseSensitive,
       'displaySettings' => DisplaySettings,
       'endAnchor' => EndAnchor,
       'removeEndAnchor' => RemoveEndAnchor,
       'removeStartAnchor' => RemoveStartAnchor,
       'startAnchor' => StartAnchor
     }.
