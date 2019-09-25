-module(swagger_recipient_attachment).

-export([encode/1]).

-export_type([swagger_recipient_attachment/0]).

-type swagger_recipient_attachment() ::
    #{ 'attachmentId' => binary(),
       'attachmentType' => binary(),
       'data' => binary(),
       'label' => binary(),
       'name' => binary(),
       'remoteUrl' => binary()
     }.

encode(#{ 'attachmentId' := AttachmentId,
          'attachmentType' := AttachmentType,
          'data' := Data,
          'label' := Label,
          'name' := Name,
          'remoteUrl' := RemoteUrl
        }) ->
    #{ 'attachmentId' => AttachmentId,
       'attachmentType' => AttachmentType,
       'data' => Data,
       'label' => Label,
       'name' => Name,
       'remoteUrl' => RemoteUrl
     }.
