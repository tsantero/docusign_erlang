-module(swagger_attachment).

-export([encode/1]).

-export_type([swagger_attachment/0]).

-type swagger_attachment() ::
    #{ 'accessControl' => binary(),
       'attachmentId' => binary(),
       'attachmentType' => binary(),
       'data' => binary(),
       'label' => binary(),
       'name' => binary(),
       'remoteUrl' => binary()
     }.

encode(#{ 'accessControl' := AccessControl,
          'attachmentId' := AttachmentId,
          'attachmentType' := AttachmentType,
          'data' := Data,
          'label' := Label,
          'name' := Name,
          'remoteUrl' := RemoteUrl
        }) ->
    #{ 'accessControl' => AccessControl,
       'attachmentId' => AttachmentId,
       'attachmentType' => AttachmentType,
       'data' => Data,
       'label' => Label,
       'name' => Name,
       'remoteUrl' => RemoteUrl
     }.
