-module(swagger_file_type).

-export([encode/1]).

-export_type([swagger_file_type/0]).

-type swagger_file_type() ::
    #{ 'fileExtension' => binary(),
       'mimeType' => binary()
     }.

encode(#{ 'fileExtension' := FileExtension,
          'mimeType' := MimeType
        }) ->
    #{ 'fileExtension' => FileExtension,
       'mimeType' => MimeType
     }.
