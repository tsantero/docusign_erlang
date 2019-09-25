-module(swagger_folders_request).

-export([encode/1]).

-export_type([swagger_folders_request/0]).

-type swagger_folders_request() ::
    #{ 'envelopeIds' => list(),
       'folders' => list(),
       'fromFolderId' => binary()
     }.

encode(#{ 'envelopeIds' := EnvelopeIds,
          'folders' := Folders,
          'fromFolderId' := FromFolderId
        }) ->
    #{ 'envelopeIds' => EnvelopeIds,
       'folders' => Folders,
       'fromFolderId' => FromFolderId
     }.
