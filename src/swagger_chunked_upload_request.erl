-module(swagger_chunked_upload_request).

-export([encode/1]).

-export_type([swagger_chunked_upload_request/0]).

-type swagger_chunked_upload_request() ::
    #{ 'chunkedUploadId' => binary(),
       'data' => binary()
     }.

encode(#{ 'chunkedUploadId' := ChunkedUploadId,
          'data' := Data
        }) ->
    #{ 'chunkedUploadId' => ChunkedUploadId,
       'data' => Data
     }.
