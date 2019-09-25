-module(swagger_page).

-export([encode/1]).

-export_type([swagger_page/0]).

-type swagger_page() ::
    #{ 'dpi' => binary(),
       'errorDetails' => swagger_error_details:swagger_error_details(),
       'height' => binary(),
       'imageBytes' => binary(),
       'mimeType' => binary(),
       'pageId' => binary(),
       'sequence' => binary(),
       'width' => binary()
     }.

encode(#{ 'dpi' := Dpi,
          'errorDetails' := ErrorDetails,
          'height' := Height,
          'imageBytes' := ImageBytes,
          'mimeType' := MimeType,
          'pageId' := PageId,
          'sequence' := Sequence,
          'width' := Width
        }) ->
    #{ 'dpi' => Dpi,
       'errorDetails' => ErrorDetails,
       'height' => Height,
       'imageBytes' => ImageBytes,
       'mimeType' => MimeType,
       'pageId' => PageId,
       'sequence' => Sequence,
       'width' => Width
     }.
