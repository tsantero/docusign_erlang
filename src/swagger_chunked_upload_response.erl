-module(swagger_chunked_upload_response).

-export([encode/1]).

-export_type([swagger_chunked_upload_response/0]).

-type swagger_chunked_upload_response() ::
    #{ 'checksum' => binary(),
       'chunkedUploadId' => binary(),
       'chunkedUploadParts' => list(),
       'chunkedUploadUri' => binary(),
       'committed' => binary(),
       'expirationDateTime' => binary(),
       'maxChunkedUploadParts' => binary(),
       'maxTotalSize' => binary(),
       'totalSize' => binary()
     }.

encode(#{ 'checksum' := Checksum,
          'chunkedUploadId' := ChunkedUploadId,
          'chunkedUploadParts' := ChunkedUploadParts,
          'chunkedUploadUri' := ChunkedUploadUri,
          'committed' := Committed,
          'expirationDateTime' := ExpirationDateTime,
          'maxChunkedUploadParts' := MaxChunkedUploadParts,
          'maxTotalSize' := MaxTotalSize,
          'totalSize' := TotalSize
        }) ->
    #{ 'checksum' => Checksum,
       'chunkedUploadId' => ChunkedUploadId,
       'chunkedUploadParts' => ChunkedUploadParts,
       'chunkedUploadUri' => ChunkedUploadUri,
       'committed' => Committed,
       'expirationDateTime' => ExpirationDateTime,
       'maxChunkedUploadParts' => MaxChunkedUploadParts,
       'maxTotalSize' => MaxTotalSize,
       'totalSize' => TotalSize
     }.
