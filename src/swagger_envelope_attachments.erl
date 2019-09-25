-module(swagger_envelope_attachments).

-export([encode/1]).

-export_type([swagger_envelope_attachments/0]).

-type swagger_envelope_attachments() ::
    #{ 'accessControl' => binary(),
       'attachmentId' => binary(),
       'attachmentType' => binary(),
       'errorDetails' => swagger_error_details:swagger_error_details(),
       'label' => binary(),
       'name' => binary()
     }.

encode(#{ 'accessControl' := AccessControl,
          'attachmentId' := AttachmentId,
          'attachmentType' := AttachmentType,
          'errorDetails' := ErrorDetails,
          'label' := Label,
          'name' := Name
        }) ->
    #{ 'accessControl' => AccessControl,
       'attachmentId' => AttachmentId,
       'attachmentType' => AttachmentType,
       'errorDetails' => ErrorDetails,
       'label' => Label,
       'name' => Name
     }.
