-module(swagger_bulk_recipients_summary_response).

-export([encode/1]).

-export_type([swagger_bulk_recipients_summary_response/0]).

-type swagger_bulk_recipients_summary_response() ::
    #{ 'bulkRecipients' => list(),
       'bulkRecipientsCount' => binary(),
       'bulkRecipientsUri' => binary(),
       'errorDetails' => list()
     }.

encode(#{ 'bulkRecipients' := BulkRecipients,
          'bulkRecipientsCount' := BulkRecipientsCount,
          'bulkRecipientsUri' := BulkRecipientsUri,
          'errorDetails' := ErrorDetails
        }) ->
    #{ 'bulkRecipients' => BulkRecipients,
       'bulkRecipientsCount' => BulkRecipientsCount,
       'bulkRecipientsUri' => BulkRecipientsUri,
       'errorDetails' => ErrorDetails
     }.
