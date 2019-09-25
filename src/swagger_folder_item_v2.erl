-module(swagger_folder_item_v2).

-export([encode/1]).

-export_type([swagger_folder_item_v2/0]).

-type swagger_folder_item_v2() ::
    #{ 'completedDateTime' => binary(),
       'createdDateTime' => binary(),
       'envelopeId' => binary(),
       'envelopeUri' => binary(),
       'expireDateTime' => binary(),
       'folderId' => binary(),
       'folderUri' => binary(),
       'is21CFRPart11' => binary(),
       'ownerName' => binary(),
       'recipients' => swagger_envelope_recipients:swagger_envelope_recipients(),
       'recipientsUri' => binary(),
       'senderCompany' => binary(),
       'senderEmail' => binary(),
       'senderName' => binary(),
       'senderUserId' => binary(),
       'sentDateTime' => binary(),
       'status' => binary(),
       'subject' => binary(),
       'templateId' => binary(),
       'templateUri' => binary()
     }.

encode(#{ 'completedDateTime' := CompletedDateTime,
          'createdDateTime' := CreatedDateTime,
          'envelopeId' := EnvelopeId,
          'envelopeUri' := EnvelopeUri,
          'expireDateTime' := ExpireDateTime,
          'folderId' := FolderId,
          'folderUri' := FolderUri,
          'is21CFRPart11' := Is21CFRPart11,
          'ownerName' := OwnerName,
          'recipients' := Recipients,
          'recipientsUri' := RecipientsUri,
          'senderCompany' := SenderCompany,
          'senderEmail' := SenderEmail,
          'senderName' := SenderName,
          'senderUserId' := SenderUserId,
          'sentDateTime' := SentDateTime,
          'status' := Status,
          'subject' := Subject,
          'templateId' := TemplateId,
          'templateUri' := TemplateUri
        }) ->
    #{ 'completedDateTime' => CompletedDateTime,
       'createdDateTime' => CreatedDateTime,
       'envelopeId' => EnvelopeId,
       'envelopeUri' => EnvelopeUri,
       'expireDateTime' => ExpireDateTime,
       'folderId' => FolderId,
       'folderUri' => FolderUri,
       'is21CFRPart11' => Is21CFRPart11,
       'ownerName' => OwnerName,
       'recipients' => Recipients,
       'recipientsUri' => RecipientsUri,
       'senderCompany' => SenderCompany,
       'senderEmail' => SenderEmail,
       'senderName' => SenderName,
       'senderUserId' => SenderUserId,
       'sentDateTime' => SentDateTime,
       'status' => Status,
       'subject' => Subject,
       'templateId' => TemplateId,
       'templateUri' => TemplateUri
     }.
