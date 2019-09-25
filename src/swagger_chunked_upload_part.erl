-module(swagger_chunked_upload_part).

-export([encode/1]).

-export_type([swagger_chunked_upload_part/0]).

-type swagger_chunked_upload_part() ::
    #{ 'sequence' => binary(),
       'size' => binary()
     }.

encode(#{ 'sequence' := Sequence,
          'size' := Size
        }) ->
    #{ 'sequence' => Sequence,
       'size' => Size
     }.
