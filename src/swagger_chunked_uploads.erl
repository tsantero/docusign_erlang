-module(swagger_chunked_uploads).

-export([encode/1]).

-export_type([swagger_chunked_uploads/0]).

-type swagger_chunked_uploads() ::
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
